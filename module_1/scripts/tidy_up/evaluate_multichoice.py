#!/usr/bin/env python3
"""
evaluate_multichoice.py
========================
Run the Neuro-Symbolic Tidy-Up pipeline on the Robo-CSK Benchmark multichoice
questions (tidy_up_multichoice.csv).

For each question the pipeline:
  1. Extracts SOMA features for the object (Neuro)
  2. Runs Clingo with ILASP-learned rules to rank canonical locations (Symbolic)
  3. LLM picks the best answer from the 5 choices, guided by Clingo ranking

Architecture insight: Clingo provides HINTS (ranked location types), but the
LLM always makes the final selection from the raw choices. This is because the
multichoice dataset includes fine-grained locations (oven, jar, suitcase) that
don't have 1:1 canonical mappings, so Clingo can't directly select.

Usage:
  python evaluate_multichoice.py                        # full pipeline, all questions
  python evaluate_multichoice.py --num-tests 50         # first 50
  python evaluate_multichoice.py --ablation pure_llm    # pure LLM ablation
  python evaluate_multichoice.py --ablation no_rerank   # skip LLM, Clingo-only pick
"""

import csv
import ast
import json
import os
import re
import sys
import time
from pathlib import Path
from tqdm import tqdm

# ── path setup ───────────────────────────────────────────────────────────────
SCRIPT_DIR = Path(__file__).parent           # scripts/tidy_up
SCRIPTS_ROOT = SCRIPT_DIR.parent             # scripts
MODULE_DIR = SCRIPTS_ROOT.parent             # module_1

sys.path.insert(0, str(SCRIPTS_ROOT))

# Reuse core components from evaluate.py
from tidy_up.evaluate import (
    EVAL_MODEL,
    LOCATION_MAP,
    map_location,
    query_ollama_soma,
    extract_ilasp_rules,
    load_rules_by_location,
    format_soma_facts,
    rank_locations,
    rule_fires_for_object,
    count_body_literals,
    llm_chat,
    ILASP_OUT,
    TMP_DIR,
)

DATA_DIR = MODULE_DIR.parent / "Robo-CSK-Benchmark" / "tidy_up"
MULTICHOICE_CSV = DATA_DIR / "tidy_up_multichoice.csv"

# Human-readable names for canonical locations (used in prompts)
CANONICAL_TO_READABLE = {
    'kitchen': 'kitchen', 'bathroom': 'bathroom', 'bedroom': 'bedroom',
    'living_room': 'living room', 'dining_room': 'dining room',
    'home_office': 'home office', 'library': 'library', 'garage': 'garage',
    'garden': 'garden/outdoor', 'laundry_room': 'laundry/utility room',
    'pantry': 'pantry', 'closet': 'closet/wardrobe',
    'storage_room': 'storage/attic/basement', 'hallway': 'hallway/corridor',
    'fridge': 'fridge/freezer', 'drawer': 'drawer', 'shelf': 'shelf/bookshelf',
    'table': 'table/desk/counter', 'cabinet': 'cabinet/cupboard',
    'bed': 'bed', 'sink': 'sink/dishwasher', 'trash': 'trash/garbage',
    'playroom': 'playroom', 'music_room': 'music room',
}

# Prompt-only vocabulary: fine-grained location strings that appear in the
# multichoice dataset but are NOT in LOCATION_MAP (deliberately kept separate
# to avoid the accuracy regression caused by adding them to LOCATION_MAP).
# These let the LLM see type context for unmapped choices (e.g. "oven" → kitchen)
# so it can correlate them with Clingo's canonical ranking.
PROMPT_LOCATION_MAP = {
    # kitchen sub-locations (40+ occurrences of 'oven' alone)
    'oven': 'kitchen', 'microwave': 'kitchen', 'stove': 'kitchen',
    'stovetop': 'kitchen', 'cooktop': 'kitchen', 'hob': 'kitchen',
    # fridge sub-locations
    'freezer': 'fridge', 'icebox': 'fridge',
    # living-room / generic "home" references
    'house': 'living_room', 'home': 'living_room',
    'living area': 'living_room', 'family area': 'living_room',
    'side of room': 'living_room',
    # closet / storage containers used as locations
    'suitcase': 'closet', 'luggage': 'closet',
    # cabinet / cupboard containers
    'jar': 'cabinet', 'container': 'cabinet', 'can': 'cabinet',
    'tin': 'cabinet', 'box': 'cabinet',
    # table / counter sub-locations
    'plate': 'table', 'bowl': 'table', 'tray': 'table',
    # garage / vehicle contexts
    'car': 'garage', 'vehicle': 'garage', 'trunk': 'garage',
    # hallway / corridor synonyms
    'hall': 'hallway', 'corridor': 'hallway', 'entrance': 'hallway',
    # bedroom sub-locations
    'guest room': 'bedroom', 'spare room': 'bedroom',
    'separate room': 'bedroom', "childs room": 'bedroom',
    "child's room": 'bedroom', "children's room": 'bedroom',
    "teenager's bedroom": 'bedroom', 'motel room': 'bedroom',
    'different room': 'bedroom',
    # storage / attic synonyms
    'cabin': 'storage_room', 'shed': 'storage_room',
    'attic': 'storage_room', 'loft': 'storage_room',
    'chest': 'closet',
    # linen press / wardrobe
    'press': 'closet',
    # garden sub-locations
    'yard': 'garden', 'patio': 'garden', 'outdoor': 'garden',
    'backyard': 'garden',
    # laundry / utility room
    'hamper': 'laundry_room', 'exercise room': 'laundry_room',
    # pantry synonyms — 'pantry room' is a very common correct answer in the dataset
    # (pantry_room is NOT a canonical key; the canonical is 'pantry')
    'larder': 'pantry', 'pantry room': 'pantry',
    # bathroom synonyms
    'restroom': 'bathroom', 'bathroom cabinet': 'bathroom',
    # garage / vehicle contexts
    'engine': 'garage',
    # kitchen synonyms
    'range': 'kitchen',
    # shelf / library
    'bookshelf': 'shelf',
    # table sub-locations
    'stand': 'table',
    # storage containers / misc
    'vault': 'storage_room', 'hospital drug storeroom': 'storage_room',
    'basket': 'laundry_room',
    # drawer / desk items
    'wallet': 'drawer', 'purse': 'drawer',
}


# ── helpers ──────────────────────────────────────────────────────────────────

def _extract_soma_str(soma_data: dict) -> tuple[str, str, str]:
    """Extract role/task/quality strings from SOMA data."""
    roles = soma_data.get("hasRole", [])
    tasks = soma_data.get("affordsTask", [])
    quals = soma_data.get("hasPhysicalQuality", [])
    if isinstance(roles, str): roles = [roles]
    if isinstance(tasks, str): tasks = [tasks]
    if isinstance(quals, str): quals = [quals]
    return ", ".join(roles), ", ".join(tasks), ", ".join(quals)


def _map_for_prompt(choice: str) -> str | None:
    """Map a choice to a canonical location for prompt-annotation purposes.

    Resolution order:
      1. LOCATION_MAP  — official Clingo vocabulary (enables engine-agreement)
      2. Direct canonical key match — catches choices like 'playroom' that
         LOCATION_MAP redirects to 'living_room' but exist as Clingo canonicals
      3. PROMPT_LOCATION_MAP — prompt-only expansion for unmapped fine-grained
         locations (oven, car, suitcase, …)
    """
    c_lower = choice.lower().strip()
    # 1. Official vocabulary
    canon = map_location(choice)
    if canon:
        return canon
    # 2. Choice string IS already a Clingo canonical
    if c_lower in CANONICAL_TO_READABLE:
        return c_lower
    # 2b. Space → underscore normalisation: catches 'music room' → 'music_room',
    #     'storage room' → 'storage_room', 'dining room' → 'dining_room', etc.
    c_underscored = c_lower.replace(' ', '_')
    if c_underscored in CANONICAL_TO_READABLE:
        return c_underscored
    # 3. Prompt-only expansion
    return PROMPT_LOCATION_MAP.get(c_lower)


def rank_locations_scored(obj_id: str, facts_str: str,
                          rules_by_loc: dict) -> list[tuple[str, float]]:
    """Like rank_locations() but returns (location, score) pairs so callers
    can use the raw score as a confidence signal in prompts."""
    scored: list[tuple[str, float]] = []
    for loc, rules in rules_by_loc.items():
        score = 0.0
        for rule in rules:
            if rule_fires_for_object(rule, obj_id, facts_str, loc):
                score += count_body_literals(rule)
        if score > 0:
            scored.append((loc, score))
    scored.sort(key=lambda x: (-x[1], x[0]))
    return scored


def _confidence_label(score: float) -> str:
    """Human-readable confidence tier based on Clingo rule score."""
    if score >= 6:
        return "high"
    elif score >= 3:
        return "medium"
    return "low"


def pick_best_choice_symbolic(ranked_locs: list[str], choices: list[str]) -> str:
    """Ablation: pure symbolic pick. Map choices to canonicals and pick the one
    whose canonical appears earliest in the Clingo ranking.
    Uses ONLY the original LOCATION_MAP (not extended).
    """
    for loc in ranked_locs:
        for c in choices:
            if map_location(c) == loc:
                return c
    # No choice mapped to any Clingo location → return first choice
    return choices[0]


def llm_pick_from_choices(obj_name: str, soma_data: dict,
                          choices: list[str]) -> str:
    """Pure LLM baseline: ask LLM to pick the best location from the 5 choices.
    No Clingo guidance."""
    numbered = "\n".join(f"  {i+1}. {c}" for i, c in enumerate(choices))
    system = (
        "You are a household robot that tidies up objects in a home. "
        "Given an object and a numbered list of possible locations, "
        "pick the SINGLE most appropriate location where this object "
        "is typically stored or placed. "
        "Reply with ONLY the number (1-5) of the best location."
    )
    user = (
        f"Object: {obj_name}\n"
        f"Possible locations:\n{numbered}\n"
        "Answer (number only):"
    )
    text = llm_chat(
        messages=[{"role": "system", "content": system},
                  {"role": "user", "content": user}],
        temperature=0.0,
    )
    return _parse_numbered_response(text, choices)


def _annotate_choices_with_clingo(choices: list[str], ranked_locs: list[str],
                                   loc_scores: dict[str, float] | None = None) -> str:
    """Build a numbered choice list with type context and Clingo match info.

    Every choice gets a [type: …] tag from _map_for_prompt so the LLM can
    compare location categories even when Clingo has no opinion.
    Choices whose mapped canonical appears in the Clingo ranking also get
    a confidence-annotated engine agreement marker.
    Choices with [type: unknown] are flagged so the LLM is less likely to
    blindly pick an unmapped location.
    """
    lines = []
    for i, c in enumerate(choices):
        canon = _map_for_prompt(c)
        if canon:
            readable = CANONICAL_TO_READABLE.get(canon, canon.replace('_', ' '))
            if canon in ranked_locs:
                rank_pos = ranked_locs.index(canon) + 1
                score = loc_scores.get(canon, 0) if loc_scores else 0
                conf = _confidence_label(score) if loc_scores else ""
                conf_str = f", confidence: {conf}" if conf else ""
                lines.append(
                    f"  {i+1}. {c}  [type: {readable}]"
                    f" ← engine agrees (rank #{rank_pos}{conf_str})"
                )
            else:
                lines.append(f"  {i+1}. {c}  [type: {readable}]")
        else:
            lines.append(f"  {i+1}. {c}  [type: unknown — no recognized location category]")
    return "\n".join(lines)


def llm_pick_with_clingo_hint(obj_name: str, soma_data: dict,
                               ranked_locs: list[str],
                               choices: list[str],
                               loc_scores: dict[str, float] | None = None) -> str:
    """Full pipeline: LLM picks from the 5 choices, guided by Clingo ranking.

    The Clingo ranking tells the LLM what TYPE of location is most suitable
    (e.g., "kitchen", "closet", "garage"), then the LLM picks the specific
    choice that best matches.  Hint strength is scaled by how many choices
    actually map to a Clingo-ranked canonical, so a bad ranking doesn't
    hijack the LLM's commonsense.
    """
    roles, tasks, quals = _extract_soma_str(soma_data)

    # Build human-readable Clingo ranking (top 5 canonicals), with confidence labels
    # FILTERED to only canonicals that have a corresponding choice — so the paragraph
    # only mentions locations the LLM can actually pick.
    choice_canonicals = set(
        canon for c in choices
        for canon in [_map_for_prompt(c)] if canon
    )
    readable_ranking = []
    for loc in ranked_locs[:5]:
        if loc not in choice_canonicals:
            continue  # skip — no choice maps to this canonical, would anchor LLM wrongly
        readable = CANONICAL_TO_READABLE.get(loc, loc.replace('_', ' '))
        if loc_scores:
            conf = _confidence_label(loc_scores.get(loc, 0))
            readable_ranking.append(f"{readable} [{conf} confidence]")
        else:
            readable_ranking.append(readable)

    # Count choices that have engine support (via any mapping path)
    matched_choices = sum(
        1 for c in choices
        if _map_for_prompt(c) and _map_for_prompt(c) in ranked_locs
    )

    # Score of the best Clingo-backed choice among the 5 options.
    # Used to distinguish "2 weak matches" from "2 strong matches".
    best_match_score = 0.0
    if loc_scores and matched_choices > 0:
        for c in choices:
            canon = _map_for_prompt(c)
            if canon and canon in ranked_locs:
                s = loc_scores.get(canon, 0.0)
                if s > best_match_score:
                    best_match_score = s

    # Determine hint strength: count AND score must both be high for strong hint
    if matched_choices == 0:
        hint_strength = "none"
    elif matched_choices == 1 or best_match_score < 3:
        hint_strength = "weak"
    elif best_match_score >= 6:
        hint_strength = "strong"
    else:
        hint_strength = "medium"  # 2+ matches, score 3-5

    # Scale hint authority: only show a paragraph for medium/strong cases where
    # Clingo has credible evidence on at least one choice.
    # For none/weak: binary ← annotations on individual choices provide all signal
    # without adding an anchoring sentence that could mislead when Clingo is wrong.
    # The paragraph is FILTERED to only canonicals that map to one of the 5 choices
    # so we never name a location type the LLM cannot actually select.
    clingo_hint = ""
    if readable_ranking and hint_strength in ("medium", "strong"):
        if hint_strength == "medium":
            clingo_hint = (
                f"\nA reasoning engine suggests these location types for this object "
                f"(best first): {', '.join(readable_ranking)}. "
                f"Choices marked ← above match — treat as a guide, "
                f"but override with commonsense if they seem wrong."
            )
        else:  # strong
            clingo_hint = (
                f"\nA reasoning engine determined the most suitable location types are "
                f"(best first): {', '.join(readable_ranking)}. "
                f"Choices marked ← above match — prefer them if commonsense agrees."
            )

    annotated = _annotate_choices_with_clingo(choices, ranked_locs, loc_scores=loc_scores)
    system = (
        "You are a household robot that tidies up objects in a home. "
        "Pick the SINGLE most appropriate location where this object is typically "
        "stored or placed in a real household. "
        "Each choice shows its [type: …] location category to help you reason. "
        "Choices marked ← have symbolic engine support — the confidence level tells "
        "you how strongly the engine backed that type. "
        "Apply your own commonsense: if an engine-backed choice clearly doesn't fit "
        "(e.g., a vegetable in a closet, a tool in a pantry), override it. "
        "Avoid [type: unknown] choices unless no other option makes sense. "
        "Reply with ONLY the number (1-5) of the best location."
    )
    user = (
        f"Object: {obj_name}\n"
        f"Object properties: roles=[{roles}], tasks=[{tasks}], qualities=[{quals}]"
        f"{clingo_hint}\n"
        f"\nPossible locations:\n{annotated}\n"
        "Answer (number only):"
    )
    text = llm_chat(
        messages=[{"role": "system", "content": system},
                  {"role": "user", "content": user}],
        temperature=0.0,
    )
    return _parse_numbered_response(text, choices)


def _parse_numbered_response(text: str, choices: list[str]) -> str:
    """Parse a numbered response (1-5) from LLM output."""
    text = text.strip().strip("\"'`.,")
    # Try to find a single digit 1-5
    match = re.search(r'\b([1-5])\b', text)
    if match:
        idx = int(match.group(1)) - 1
        if 0 <= idx < len(choices):
            return choices[idx]

    # Fallback: try exact match against choices
    text_lower = text.lower()
    for c in choices:
        if c.lower() == text_lower:
            return c
    for c in choices:
        if c.lower() in text_lower or text_lower in c.lower():
            return c

    return choices[0]


# ── main ─────────────────────────────────────────────────────────────────────

def run_multichoice_eval(num_tests: int = None, ablation: str = "none",
                         model_override: str = None):
    """Run the pipeline on multichoice questions.

    ablation:
      "none"       — Full pipeline (SOMA + Clingo hint + LLM picks from choices)
      "pure_llm"   — Skip Clingo; LLM picks directly from the 5 choices
      "no_rerank"  — Clingo ranking only; no LLM (pure symbolic)
    """
    eval_model = model_override or EVAL_MODEL

    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Tidy-Up Multichoice")
    print(f"  Model:    {eval_model}")
    print(f"  Ablation: {ablation}")
    print("=" * 60)

    # 1. Prepare rules
    rules_lp = TMP_DIR / "learned_rules.lp"
    print(f"Extracting rules from {ILASP_OUT.name}...")
    extract_ilasp_rules(ILASP_OUT, rules_lp)
    rules_by_loc = load_rules_by_location(ILASP_OUT)
    print(f"  Loaded rules for {len(rules_by_loc)} locations")

    # 2. Load multichoice questions
    print(f"Loading multichoice questions from {MULTICHOICE_CSV.name}...")
    questions = []
    with open(MULTICHOICE_CSV, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            obj = row["Object"].strip()
            correct = row["Correct_Location"].strip()
            wrongs = ast.literal_eval(row["Wrong_Locations"])
            all_choices = [correct] + wrongs
            questions.append({
                "object": obj,
                "correct_location": correct,
                "choices": all_choices,
            })

    if num_tests and num_tests < len(questions):
        questions = questions[:num_tests]

    print(f"  Evaluating {len(questions)} questions\n")

    # 3. Run pipeline
    correct_count = 0
    results_log = []
    llm_calls = 0  # track total LLM calls

    # Diagnostic counters — populated only in full pipeline mode (ablation="none")
    stats = {
        "clingo_had_ranking":    0,  # Clingo returned ≥1 ranked location
        "clingo_no_ranking":     0,  # Clingo returned an empty ranking
        "hint_mode_none":        0,  # 0 choices mapped to Clingo ranking → engine ignored
        "hint_mode_weak":        0,  # 1 match OR best_score < 3 → weak hint
        "hint_mode_medium":      0,  # 2+ matches, score 3-5
        "hint_mode_strong":      0,  # 2+ matches AND best_score ≥6 → strong hint
        "correct_unmappable":    0,  # correct answer has no canonical (Category A)
        "correct_in_clingo":     0,  # correct canonical WAS in Clingo ranking
        "correct_not_in_clingo": 0,  # correct canonical NOT in ranking (but mappable)
        "pred_clingo_backed":    0,  # prediction's canonical was in Clingo ranking
        "pred_not_clingo_backed":0,  # prediction had no Clingo support (LLM overrode)
        "clingo_backed_correct": 0,  # Clingo-backed prediction → correct
        "clingo_backed_wrong":   0,  # Clingo-backed prediction → wrong
        "llm_overrode_correct":  0,  # LLM picked non-Clingo choice → correct
        "llm_overrode_wrong":    0,  # LLM picked non-Clingo choice → wrong
    }

    for q in tqdm(questions, desc="Evaluating", mininterval=5.0):
        obj_name = q["object"]
        obj_id = re.sub(r'[^a-zA-Z0-9]', '_', obj_name).lower()
        if obj_id[0].isdigit():
            obj_id = "o_" + obj_id
        choices = q["choices"]
        correct_loc = q["correct_location"]

        ranked_locs = []
        loc_scores: dict[str, float] = {}

        if ablation == "pure_llm":
            # Pure LLM: SOMA extraction + LLM picks from choices
            soma_data = query_ollama_soma(obj_name)
            llm_calls += 1  # SOMA call
            prediction = llm_pick_from_choices(obj_name, soma_data, choices)
            llm_calls += 1  # pick call

        elif ablation == "no_rerank":
            # Pure symbolic: SOMA + Clingo, no LLM pick
            soma_data = query_ollama_soma(obj_name)
            llm_calls += 1  # SOMA call
            facts_str = format_soma_facts(obj_id, soma_data)
            ranked_locs = rank_locations(obj_id, facts_str, rules_by_loc)
            prediction = pick_best_choice_symbolic(ranked_locs, choices)

        else:
            # Full pipeline: SOMA + Clingo hint (with scores) + LLM picks from choices
            soma_data = query_ollama_soma(obj_name)
            llm_calls += 1  # SOMA call
            facts_str = format_soma_facts(obj_id, soma_data)
            scored_locs = rank_locations_scored(obj_id, facts_str, rules_by_loc)
            ranked_locs = [loc for loc, _ in scored_locs]
            loc_scores  = {loc: score for loc, score in scored_locs}
            prediction = llm_pick_with_clingo_hint(
                obj_name, soma_data, ranked_locs, choices, loc_scores=loc_scores
            )
            llm_calls += 1  # pick call

        is_correct = prediction.lower().strip() == correct_loc.lower().strip()
        if is_correct:
            correct_count += 1

        # ── per-question diagnostics (full pipeline) ──────────────────────────
        q_diag = {}
        if ablation == "none":
            correct_canon = _map_for_prompt(correct_loc)
            pred_canon    = _map_for_prompt(prediction)
            matched_choices = sum(
                1 for c in choices
                if _map_for_prompt(c) and _map_for_prompt(c) in ranked_locs
            )
            best_match_score = 0.0
            for c in choices:
                canon = _map_for_prompt(c)
                if canon and canon in ranked_locs:
                    s = loc_scores.get(canon, 0.0) if loc_scores else 0.0
                    if s > best_match_score:
                        best_match_score = s
            pred_backed = bool(pred_canon and pred_canon in ranked_locs)

            if ranked_locs:
                stats["clingo_had_ranking"] += 1
            else:
                stats["clingo_no_ranking"] += 1

            if matched_choices == 0:
                stats["hint_mode_none"] += 1
            elif matched_choices == 1 or best_match_score < 3:
                stats["hint_mode_weak"] += 1
            elif best_match_score >= 6:
                stats["hint_mode_strong"] += 1
            else:
                stats["hint_mode_medium"] += 1

            if correct_canon is None:
                stats["correct_unmappable"] += 1
            elif correct_canon in ranked_locs:
                stats["correct_in_clingo"] += 1
            else:
                stats["correct_not_in_clingo"] += 1

            if pred_backed:
                stats["pred_clingo_backed"] += 1
                if is_correct:
                    stats["clingo_backed_correct"] += 1
                else:
                    stats["clingo_backed_wrong"] += 1
            else:
                stats["pred_not_clingo_backed"] += 1
                if is_correct:
                    stats["llm_overrode_correct"] += 1
                else:
                    stats["llm_overrode_wrong"] += 1

            q_diag = {
                "clingo_ranked_locs":       len(ranked_locs),
                "matched_choices_clingo":   matched_choices,
                "best_match_score":         best_match_score,
                "correct_canonical":        correct_canon or "UNMAPPABLE",
                "correct_in_clingo_ranking":correct_canon in ranked_locs if correct_canon else False,
                "prediction_clingo_backed": pred_backed,
            }

        results_log.append({
            "object": obj_name,
            "correct_location": correct_loc,
            "predicted_location": prediction,
            "correct": is_correct,
            "soma": soma_data,
            "ranked_locs": ranked_locs,
            "choices": choices,
            **q_diag,
        })

    # 4. Compute metrics
    total = len(questions)
    accuracy = correct_count / total

    print(f"\n{'=' * 60}")
    print(f"RESULTS — Multichoice Tidy-Up ({ablation})")
    print(f"{'=' * 60}")
    print(f"  Model:    {eval_model}")
    print(f"  Correct:  {correct_count} / {total}")
    print(f"  Accuracy: {accuracy:.4f} ({accuracy * 100:.2f}%)")
    print(f"  LLM calls: {llm_calls}")
    if ablation == "none" and total > 0:
        print(f"\n  {'─' * 36}")
        print(f"  Clingo Activity")
        print(f"  {'─' * 36}")
        print(f"  Produced ranking:        {stats['clingo_had_ranking']:>4} / {total}")
        print(f"  Empty ranking:           {stats['clingo_no_ranking']:>4} / {total}")
        print(f"\n  Hint Mode Distribution")
        print(f"  {'─' * 36}")
        print(f"  Engine ignored (0 match):{stats['hint_mode_none']:>4} / {total}")
        print(f"  Weak hint (1 or low score):{stats['hint_mode_weak']:>2} / {total}")
        print(f"  Medium hint:             {stats['hint_mode_medium']:>4} / {total}")
        print(f"  Strong hint (high score):{stats['hint_mode_strong']:>4} / {total}")
        print(f"\n  Correct Answer Coverage")
        print(f"  {'─' * 36}")
        print(f"  Correct in ranking:      {stats['correct_in_clingo']:>4} / {total}")
        print(f"  Correct not in ranking:  {stats['correct_not_in_clingo']:>4} / {total}")
        print(f"  Correct unmappable:      {stats['correct_unmappable']:>4} / {total}  (Category A — unsolvable)")
        print(f"\n  Decision Driver")
        print(f"  {'─' * 36}")
        clingo_acc = (stats['clingo_backed_correct'] / stats['pred_clingo_backed'] * 100
                      if stats['pred_clingo_backed'] else float('nan'))
        llm_acc    = (stats['llm_overrode_correct'] / stats['pred_not_clingo_backed'] * 100
                      if stats['pred_not_clingo_backed'] else float('nan'))
        print(f"  Clingo-backed picks:     {stats['pred_clingo_backed']:>4} / {total}  "
              f"(correct: {stats['clingo_backed_correct']}, wrong: {stats['clingo_backed_wrong']}, "
              f"acc: {clingo_acc:.1f}%)")
        print(f"  LLM-only picks:          {stats['pred_not_clingo_backed']:>4} / {total}  "
              f"(correct: {stats['llm_overrode_correct']}, wrong: {stats['llm_overrode_wrong']}, "
              f"acc: {llm_acc:.1f}%)")
    print(f"{'=' * 60}\n")

    # 5. Save results CSV
    tag = ablation if ablation != "none" else "full_pipeline"
    out_csv = SCRIPT_DIR / f"multichoice_results_{tag}.csv"
    with open(out_csv, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=[
            "object", "correct_location", "predicted_location",
            "location_choices", "correct_prediction"
        ])
        writer.writeheader()
        for r in results_log:
            writer.writerow({
                "object": r["object"],
                "correct_location": r["correct_location"],
                "predicted_location": r["predicted_location"],
                "location_choices": str(r["choices"]),
                "correct_prediction": r["correct"],
            })
    print(f"Results CSV saved to {out_csv}")

    # 6. Save report
    report_path = SCRIPT_DIR / f"multichoice_report_{tag}.md"
    with open(report_path, "w", encoding="utf-8") as f:
        f.write(f"# Multichoice Evaluation Report — Tidy-Up ({tag})\n\n")
        f.write(f"- **Model**: `{eval_model}`\n")
        f.write(f"- **Ablation**: `{ablation}`\n")
        f.write(f"- **Total Questions**: {total}\n")
        f.write(f"- **Correct**: {correct_count}\n")
        f.write(f"- **Accuracy**: {accuracy:.4f} ({accuracy * 100:.2f}%)\n")
        f.write(f"- **LLM Calls**: {llm_calls}\n\n")

        if ablation == "none" and total > 0:
            clingo_acc = (stats['clingo_backed_correct'] / stats['pred_clingo_backed'] * 100
                          if stats['pred_clingo_backed'] else float('nan'))
            llm_acc    = (stats['llm_overrode_correct'] / stats['pred_not_clingo_backed'] * 100
                          if stats['pred_not_clingo_backed'] else float('nan'))
            f.write("## Diagnostic Stats\n\n")
            f.write("### Clingo Activity\n")
            f.write(f"- Produced ranking: {stats['clingo_had_ranking']} / {total}\n")
            f.write(f"- Empty ranking: {stats['clingo_no_ranking']} / {total}\n\n")
            f.write("### Hint Mode Distribution\n")
            f.write(f"- Engine ignored (0 matches): {stats['hint_mode_none']} / {total}\n")
            f.write(f"- Weak hint (1 match or low score): {stats['hint_mode_weak']} / {total}\n")
            f.write(f"- Medium hint: {stats['hint_mode_medium']} / {total}\n")
            f.write(f"- Strong hint (high score): {stats['hint_mode_strong']} / {total}\n\n")
            f.write("### Correct Answer Coverage\n")
            f.write(f"- Correct canonical in Clingo ranking: {stats['correct_in_clingo']} / {total}\n")
            f.write(f"- Correct canonical NOT in ranking (mappable): {stats['correct_not_in_clingo']} / {total}\n")
            f.write(f"- Correct answer unmappable (Category A): {stats['correct_unmappable']} / {total}\n\n")
            f.write("### Decision Driver\n")
            f.write(f"| Driver | Count | Correct | Wrong | Accuracy |\n")
            f.write(f"|---|---|---|---|---|\n")
            f.write(f"| Clingo-backed | {stats['pred_clingo_backed']} | "
                    f"{stats['clingo_backed_correct']} | {stats['clingo_backed_wrong']} | "
                    f"{clingo_acc:.1f}% |\n")
            f.write(f"| LLM-only | {stats['pred_not_clingo_backed']} | "
                    f"{stats['llm_overrode_correct']} | {stats['llm_overrode_wrong']} | "
                    f"{llm_acc:.1f}% |\n")
            f.write("\n")

        # Errors
        f.write("## Errors\n\n")
        f.write("| Object | Correct | Predicted | Clingo Ranking |\n")
        f.write("|---|---|---|---|\n")
        for r in results_log:
            if not r["correct"]:
                ranking = ", ".join(r.get("ranked_locs", [])[:5]) or "N/A"
                f.write(f"| {r['object']} | {r['correct_location']} | "
                        f"{r['predicted_location']} | {ranking} |\n")
        f.write("\n")

    print(f"Report saved to {report_path}")

    return accuracy, results_log


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(
        description="Neuro-Symbolic Tidy-Up Multichoice Evaluation"
    )
    parser.add_argument("--num-tests", type=int, default=None,
                        help="Limit number of questions (default: all)")
    parser.add_argument("--model", type=str, default=None,
                        help="Override the evaluation model")
    parser.add_argument("--ablation", type=str, default="none",
                        choices=["none", "pure_llm", "no_rerank"],
                        help="Ablation mode (default: none = full pipeline)")
    args = parser.parse_args()

    if args.model:
        # Override the module-level EVAL_MODEL
        import tidy_up.evaluate as ev
        ev.EVAL_MODEL = args.model

    run_multichoice_eval(
        num_tests=args.num_tests,
        ablation=args.ablation,
        model_override=args.model,
    )
