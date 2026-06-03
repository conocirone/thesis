"""
evaluate.py — PIQA Neuro-Symbolic Evaluation
=============================================
Adapts the tool_usage neuro-symbolic pipeline (module_2/tool_usage/evaluate.py)
to the PIQA benchmark (Physical Interaction: Question Answering).

Architecture:
  NEURAL  → LLM extracts the required physical action/affordance from the goal
  SYMBOLIC → KB reverse-lookup: which objects have that affordance?
             Check which solution mentions KB-confirmed objects.
  NEURAL  → LLM selects the best solution, grounded by KB exemplars

PIQA format: goal + sol1 + sol2 + label (0=sol1 correct, 1=sol2 correct)

Usage:
    python evaluate.py                           # full pipeline, all validation
    python evaluate.py --ablation pure_llm       # LLM only, no KB
    python evaluate.py --ablation pure_logic     # KB + keyword only, no LLM
    python evaluate.py --limit 50                # random sample of 50
    python evaluate.py --verbose                 # print per-question details
"""

import argparse
import json
import os
import random
import re
import sys
import time
from pathlib import Path

import pandas as pd
from tqdm import tqdm
from mistralai.client import Mistral

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
EVAL_DIR    = Path(__file__).parent                          # module_2/piqa/
MODULE2_DIR = EVAL_DIR.parent                               # module_2/
REPO_ROOT   = MODULE2_DIR.parent                            # thesis/
BENCHMARK_DIR = REPO_ROOT / "PIQA" 
KB_JSON     = REPO_ROOT / "module_1" / "jsons" / "tool_affordances_full.json"
RESULTS_DIR = EVAL_DIR / "results"
RESULTS_DIR.mkdir(exist_ok=True)

# ---------------------------------------------------------------------------
# LLM client
# ---------------------------------------------------------------------------
MODEL_ID = "mistral-small-latest"

api_key = os.environ.get("MISTRAL_API_KEY")
if not api_key:
    print("Warning: MISTRAL_API_KEY not set. Neural components will fail.")
    client = None
else:
    client = Mistral(api_key=api_key)


# ---------------------------------------------------------------------------
# Affordance extraction — reused from tool_usage with PIQA-specific adaptations
# ---------------------------------------------------------------------------
AFFORDANCE_EXTRACTION_PROMPT = """You are a commonsense physics assistant.
Given a goal or task that a person wants to accomplish, identify the single most \
important physical action or affordance required.

Choose EXACTLY ONE affordance from this list:
absorb, be heated, beautify, bend, bore, break, carry, carve, change, chop, clean, \
comfort, compress, contain, control, cool, cover, crack, crumble, crunch, cube, cut, \
decorate, dice, dig, display, dispose, drill, dry, eat, engrave, entertain, exercise, \
file, fix, flex, grasp, grind, hammer, handle, heat, hold, illuminate, increase, \
install, lift, mark, melt, mix, operate, peel, pick, pierce, plow, plug, poke, \
polish, pour, press, read, repair, roll, rub, saw, scoop, screw, separate, shape, \
skin, slit, smoothen, solder, spread, staple, stick, store, strip, support, tamp, \
time, unclog, wash, wipe, wrap, wrench, write

If no affordance from the list is a good fit, choose the closest one.

Rules:
- Output ONLY the single affordance word/phrase from the list.
- If the goal involves placing something on heat (boiling, cooking), output "be heated".
- If the goal involves providing heat (melting, warming), output "heat".
- If the goal involves chopping food, output "chop". Reserve "cut" for slicing/trimming.
- If the goal involves cleaning surfaces, output "clean". Use "wipe" for spills. Use "wash" for rinsing.
- If the goal involves mixing/stirring ingredients, output "mix".

First provide a 1-sentence "reasoning", then the "affordance".

Respond ONLY with a JSON dictionary:
{"reasoning": "<1-sentence explanation>", "affordance": "<canonical affordance>"}

EXAMPLES:
Goal: To heat up water quickly
{"reasoning": "The goal requires a container that can be heated.", "affordance": "be heated"}

Goal: To remove a stripped screw
{"reasoning": "A tool to grip and wrench out the screw is needed.", "affordance": "wrench"}

Goal: To slice bread evenly
{"reasoning": "A sharp cutting tool is needed for clean slices.", "affordance": "cut"}

Goal: To keep a door from closing
{"reasoning": "An object to hold the door open is needed.", "affordance": "hold"}
"""

CANONICAL_AFFORDANCES = {
    "absorb", "be heated", "beautify", "bend", "bore", "break", "carry",
    "carve", "change", "chop", "clean", "comfort", "compress", "contain",
    "control", "cool", "cover", "crack", "crumble", "crunch", "cube", "cut",
    "decorate", "dice", "dig", "display", "dispose", "drill", "dry", "eat",
    "engrave", "entertain", "exercise", "file", "fix", "flex", "grasp",
    "grind", "hammer", "handle", "heat", "hold", "illuminate", "increase",
    "install", "lift", "mark", "melt", "mix", "operate", "peel", "pick",
    "pierce", "plow", "plug", "poke", "polish", "pour", "press", "read",
    "repair", "roll", "rub", "saw", "scoop", "screw", "separate", "shape",
    "skin", "slit", "smoothen", "solder", "spread", "staple", "stick",
    "store", "strip", "support", "tamp", "time", "unclog", "wash", "wipe",
    "wrap", "wrench", "write",
}

AFFORDANCE_SYNONYMS: dict[str, list[str]] = {
    "absorb":   ["dry"],
    "dry":      ["absorb"],
    "beautify": ["decorate"],
    "decorate": ["beautify"],
    "bend":     ["flex"],
    "flex":     ["bend"],
    "bore":     ["drill"],
    "drill":    ["bore"],
    "clean":    ["wipe", "wash"],
    "wipe":     ["clean", "wash"],
    "wash":     ["clean", "wipe"],
    "fix":      ["repair"],
    "repair":   ["fix"],
    "polish":   ["rub"],
    "rub":      ["polish"],
    "compress": ["store"],
    "store":    ["compress"],
    "crack":    ["break"],
    "break":    ["crack"],
    "carry":    ["lift"],
    "lift":     ["carry"],
    "grind":    ["crush"],
    "crush":    ["grind"],
    "mark":     ["write"],
    "write":    ["mark"],
    "cut":      ["chop", "slice", "carve"],
    "chop":     ["cut"],
    "carve":    ["cut"],
    "heat":     ["be heated", "melt"],
    "be heated":["heat"],
    "melt":     ["heat"],
}


# ---------------------------------------------------------------------------
# Keyword-based affordance extraction (pure_logic ablation)
# ---------------------------------------------------------------------------
KEYWORD_AFFORDANCE_MAP: list[tuple[list[str], str]] = [
    (["absorb", "soak", "wipe up", "blot"],                           "absorb"),
    (["reheat", "boil", "heat up", "warm up", "cook", "fry",
      "reheating", "boiling", "heating"],                              "be heated"),
    (["bend", "flex", "shape wire"],                                   "bend"),
    (["bore", "boring"],                                               "bore"),
    (["break", "smash", "crack open", "shatter"],                      "break"),
    (["carry", "transport"],                                           "carry"),
    (["chop", "hack", "cleave"],                                       "chop"),
    (["clean", "scrub", "dust", "disinfect", "mop"],                   "clean"),
    (["compress", "compact"],                                          "compress"),
    (["contain", "store food", "fill"],                                "contain"),
    (["cool", "freeze", "refrigerate", "chill"],                       "cool"),
    (["cover", "protect", "shield", "seal"],                           "cover"),
    (["crack", "break egg"],                                           "crack"),
    (["cut", "slice", "trim", "slit"],                                 "cut"),
    (["dig", "garden", "soil"],                                        "dig"),
    (["drill", "make hole"],                                           "drill"),
    (["dry", "remove moisture", "dry off"],                            "dry"),
    (["fix", "repair", "mend"],                                        "fix"),
    (["grasp", "grip", "clamp"],                                       "grasp"),
    (["grind", "pulverize", "pestle"],                                 "grind"),
    (["hammer", "nail"],                                               "hammer"),
    (["heat", "melt", "warm"],                                         "heat"),
    (["hold", "keep", "support"],                                      "hold"),
    (["illuminate", "light"],                                          "illuminate"),
    (["lift", "raise", "hoist"],                                       "lift"),
    (["mark", "label"],                                                "mark"),
    (["mix", "stir", "blend", "whisk"],                                "mix"),
    (["peel", "skin"],                                                 "peel"),
    (["pierce", "punch hole", "perforate"],                            "pierce"),
    (["polish", "shine", "buff"],                                      "polish"),
    (["pour", "transfer liquid"],                                      "pour"),
    (["press", "push", "stamp"],                                       "press"),
    (["roll", "flatten"],                                              "roll"),
    (["saw", "cut wood"],                                              "saw"),
    (["scoop", "ladle"],                                               "scoop"),
    (["screw", "fasten"],                                              "screw"),
    (["smooth", "sand"],                                               "smoothen"),
    (["spread", "butter"],                                             "spread"),
    (["wash", "rinse"],                                                "wash"),
    (["wipe", "clean mirror"],                                         "wipe"),
    (["wrap", "cover food"],                                           "wrap"),
    (["write", "note", "pen"],                                         "write"),
]


def keyword_extract_affordance(goal: str) -> dict:
    """Extracts a physical affordance from a PIQA goal using simple keyword heuristics.

    Args:
        goal: The goal statement to extract the affordance from.

    Returns:
        A dictionary containing the reasoning and the extracted affordance:
        {"reasoning": str, "affordance": str}
    """
    t = goal.lower().strip()
    for keywords, affordance in KEYWORD_AFFORDANCE_MAP:
        if any(kw in t for kw in keywords):
            return {"reasoning": "Keyword match.", "affordance": affordance}
    return {"reasoning": "No keyword match, defaulting.", "affordance": "hold"}


# ---------------------------------------------------------------------------
# LLM helpers
# ---------------------------------------------------------------------------
def llm_chat(messages: list, temperature: float = 0.0, json_format: bool = False) -> str:
    """Sends a chat completion request to the Mistral API with automatic retry handling.

    Args:
        messages: A list of messages to send to the chat completion endpoint.
        temperature: Controls randomness in generation. Defaults to 0.0.
        json_format: If True, requests the model to output a JSON object. Defaults to False.

    Returns:
        The text response content from the model.

    Raises:
        RuntimeError: If all API request retries are exhausted.
    """
    max_retries = 10
    for attempt in range(max_retries):
        try:
            kwargs: dict = {
                "model": MODEL_ID,
                "messages": messages,
                "temperature": temperature,
            }
            if json_format:
                kwargs["response_format"] = {"type": "json_object"}
            response = client.chat.complete(**kwargs)
            return response.choices[0].message.content.strip()
        except Exception as e:
            err = str(e).lower()
            if "429" in str(e) or "rate" in err:
                wait = 10 * (attempt + 1)
                tqdm.write(f"  Rate limited — waiting {wait}s...")
                time.sleep(wait)
            elif "timeout" in err or "timed out" in err:
                wait = 5 * (attempt + 1)
                tqdm.write(f"  Timeout — retrying in {wait}s (attempt {attempt+1}/{max_retries})...")
                time.sleep(wait)
            else:
                raise
    raise RuntimeError("LLM call failed after retries")


def extract_affordance_llm(goal: str, ablation: str = "none") -> dict:
    """Extracts the physical affordance required by a PIQA goal using an LLM.

    Args:
        goal: The PIQA goal statement.
        ablation: The ablation study configuration. If 'pure_logic', falls back
          to keyword extraction. Defaults to 'none'.

    Returns:
        A dictionary containing the reasoning and the extracted affordance.
    """
    if ablation == "pure_logic":
        return keyword_extract_affordance(goal)

    messages = [
        {"role": "system", "content": AFFORDANCE_EXTRACTION_PROMPT.strip()},
        {"role": "user", "content": f"Goal: {goal}"},
    ]
    raw = llm_chat(messages, json_format=True)
    try:
        parsed = json.loads(raw)
        aff = str(parsed.get("affordance", "")).lower().strip()
        return {"reasoning": parsed.get("reasoning", ""), "affordance": aff}
    except Exception:
        for word in CANONICAL_AFFORDANCES:
            if word in raw.lower():
                return {"reasoning": "Parsed from output.", "affordance": word}
        return {"reasoning": "Parse failed.", "affordance": "hold"}


# ---------------------------------------------------------------------------
# KB loader & reverse lookup (reused from tool_usage)
# ---------------------------------------------------------------------------
_KB_CACHE: dict | None = None


def load_kb() -> dict:
    """Loads the tool affordance knowledge base from the JSON file.

    Returns:
        The parsed knowledge base dictionary.
    """
    global _KB_CACHE
    if _KB_CACHE is None:
        if not KB_JSON.exists():
            sys.exit(
                f"ERROR: Tool KB not found at {KB_JSON}.\n"
                "Run module_1/scripts/tool_usage/build_tool_kb.py first."
            )
        with open(KB_JSON, encoding="utf-8") as f:
            _KB_CACHE = json.load(f)
    return _KB_CACHE


def get_exemplars_for_affordance(
    affordance: str,
    kb: dict,
    synonyms: list[str] | None = None,
    max_exemplars: int = 8,
) -> tuple[str, list[str]]:
    """Retrieves list of object exemplars that exhibit a specific affordance from KB.

    Args:
        affordance: The target affordance key to look up.
        kb: The loaded tool affordance knowledge base dictionary.
        synonyms: Optional list of fallback synonyms for the affordance.
        max_exemplars: Maximum number of object exemplars to return. Defaults to 8.

    Returns:
        A tuple of (matched_affordance, list_of_exemplars).
    """
    def _collect(aff: str) -> list[str]:
        results = []
        for obj, data in kb.items():
            if aff in data.get("affordances", []):
                results.append(obj)
        return results

    found = _collect(affordance)
    if found:
        return affordance, found[:max_exemplars]

    for syn in (synonyms or []):
        found = _collect(syn)
        if found:
            return syn, found[:max_exemplars]

    return affordance, []


def count_kb_mentions(text: str, exemplars: list[str]) -> int:
    """Counts the number of KB exemplar objects mentioned in a solution text.

    Args:
        text: The solution explanation text.
        exemplars: A list of object exemplar strings.

    Returns:
        The count of exemplar matches found in the text.
    """
    text_lower = text.lower()
    return sum(1 for ex in exemplars if ex.lower() in text_lower)


# ---------------------------------------------------------------------------
# Solution selection
# ---------------------------------------------------------------------------
def llm_select_solution(
    goal: str,
    sol1: str,
    sol2: str,
    context: str = "",
) -> int:
    """Uses the LLM to select the physically plausible solution.

    Args:
        goal: The PIQA task goal.
        sol1: First proposed solution.
        sol2: Second proposed solution.
        context: Optional knowledge base context to prompt the selection.

    Returns:
        0 if Solution 1 is selected, 1 if Solution 2 is selected.
    """
    system = (
        "You are an expert in physical commonsense reasoning.\n"
        "Given a goal and two possible solutions, choose the solution that would "
        "actually work in the real physical world.\n"
        "Reply ONLY with '1' or '2' — no explanation."
    )
    msg = f"Goal: {goal}\n\nSolution 1: {sol1}\nSolution 2: {sol2}\n\nYour choice (1 or 2):"
    if context:
        msg = context + "\n\n" + msg

    raw = llm_chat(
        [{"role": "system", "content": system}, {"role": "user", "content": msg}]
    )
    # Parse: extract "1" or "2" from the response
    raw_clean = raw.strip()
    if "1" in raw_clean and "2" not in raw_clean:
        return 0  # sol1
    elif "2" in raw_clean and "1" not in raw_clean:
        return 1  # sol2
    elif raw_clean.startswith("1"):
        return 0
    elif raw_clean.startswith("2"):
        return 1
    else:
        # Ambiguous — default to 0
        return 0


def pure_llm_select(goal: str, sol1: str, sol2: str) -> int:
    """Pure LLM baseline that selects a solution without any KB context.

    Args:
        goal: The PIQA task goal.
        sol1: First proposed solution.
        sol2: Second proposed solution.

    Returns:
        0 if Solution 1 is selected, 1 if Solution 2 is selected.
    """
    return llm_select_solution(goal, sol1, sol2)


def pure_logic_select(
    goal: str,
    sol1: str,
    sol2: str,
    affordance: str,
    kb: dict,
) -> int:
    """Pure logic baseline using KB match count comparison.

    Args:
        goal: The PIQA task goal.
        sol1: First proposed solution.
        sol2: Second proposed solution.
        affordance: Extracted affordance key.
        kb: The tool affordance knowledge base.

    Returns:
        0 if Solution 1 has more KB object matches, 1 if Solution 2 has more,
        or a random choice if there is a tie.
    """
    syns = AFFORDANCE_SYNONYMS.get(affordance, [])
    _, exemplars = get_exemplars_for_affordance(affordance, kb, synonyms=syns)

    if not exemplars:
        return random.choice([0, 1])

    hits1 = count_kb_mentions(sol1, exemplars)
    hits2 = count_kb_mentions(sol2, exemplars)

    if hits1 > hits2:
        return 0
    elif hits2 > hits1:
        return 1
    else:
        return random.choice([0, 1])


# ---------------------------------------------------------------------------
# Main evaluation
# ---------------------------------------------------------------------------
def evaluate(
    verbose: bool = False,
    output_file: str = "results_piqa.txt",
    ablation: str = "none",
    limit: int | None = None,
) -> None:
    """Runs the neuro-symbolic evaluation pipeline on the PIQA dataset.

    Args:
        verbose: If True, prints detailed evaluation logs. Defaults to False.
        output_file: Base name of the file to save the evaluation logs.
          Defaults to "results_piqa.txt".
        ablation: The ablation study configuration ('none', 'pure_llm', or
          'pure_logic'). Defaults to 'none'.
        limit: If set, evaluates only on a random sample of N questions.
          Defaults to None.
    """
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: PIQA")
    print(f"  Model    : {MODEL_ID}")
    print(f"  Ablation : {ablation}")
    print("=" * 60)

    # Output file naming
    name, ext = os.path.splitext(output_file)
    if ext == "":
        ext = ".txt"
    output_file = f"{name}_{MODEL_ID}{ext}"
    if ablation != "none":
        name, ext = os.path.splitext(output_file)
        output_file = f"{name}_ablation_{ablation}{ext}"

    # Load benchmark
    csv_path = BENCHMARK_DIR / "piqa_validation.csv"
    if not csv_path.exists():
        sys.exit(
            f"ERROR: PIQA data not found at {csv_path}.\n"
            "Run: python download_data.py"
        )
    df = pd.read_csv(csv_path)
    if limit is not None:
        df = df.sample(n=min(limit, len(df)), random_state=42).reset_index(drop=True)
        print(f"[--limit] Running on {len(df)} randomly sampled questions")

    kb = load_kb()

    total = len(df)
    correct = 0

    # Diagnostic counters
    stats = {
        "kb_hit": 0,       # KB had exemplars for the extracted affordance
        "kb_miss": 0,      # KB had no exemplars
        "synonym_hit": 0,  # Found via synonym
        "sol_has_kb_obj": 0,  # At least one solution mentions a KB exemplar
    }

    log_path = RESULTS_DIR / output_file
    log = open(log_path, "w", encoding="utf-8")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG — PIQA Evaluation\n")
    log.write(f"Model: {MODEL_ID}  |  Ablation: {ablation}\n")
    log.write("=" * 60 + "\n\n")

    aff_cache: dict[str, dict] = {}

    for idx, row in tqdm(df.iterrows(), total=total, desc="PIQA Eval", mininterval=5.0):
        goal = str(row["goal"]).strip()
        sol1 = str(row["sol1"]).strip()
        sol2 = str(row["sol2"]).strip()
        label = int(row["label"])  # 0=sol1, 1=sol2

        # ----------------------------------------------------------------
        # [ABLATION] pure_llm — LLM directly selects
        # ----------------------------------------------------------------
        if ablation == "pure_llm":
            predicted = pure_llm_select(goal, sol1, sol2)
            is_correct = (predicted == label)
            if is_correct:
                correct += 1
            log.write(f"[Q {idx}] Goal: {goal}\n")
            log.write(f"  Sol1: {sol1}\n")
            log.write(f"  Sol2: {sol2}\n")
            log.write(f"  Predicted: sol{predicted+1} | GT: sol{label+1} | "
                       f"Correct: {is_correct}\n")
            log.write("-" * 60 + "\n\n")
            continue

        # ----------------------------------------------------------------
        # Stage 1 — NEURAL: extract required affordance from the goal
        # ----------------------------------------------------------------
        if goal not in aff_cache:
            aff_cache[goal] = extract_affordance_llm(goal, ablation=ablation)
        aff_result = aff_cache[goal]
        affordance = aff_result.get("affordance", "hold").lower().strip()

        # ----------------------------------------------------------------
        # Stage 2 — SYMBOLIC: KB reverse lookup
        # ----------------------------------------------------------------
        syns = AFFORDANCE_SYNONYMS.get(affordance, [])
        matched_aff, exemplars = get_exemplars_for_affordance(
            affordance, kb, synonyms=syns
        )

        if exemplars:
            stats["kb_hit"] += 1
            if matched_aff != affordance:
                stats["synonym_hit"] += 1
        else:
            stats["kb_miss"] += 1

        # Check which solution mentions KB-confirmed objects
        hits1 = count_kb_mentions(sol1, exemplars)
        hits2 = count_kb_mentions(sol2, exemplars)
        if hits1 > 0 or hits2 > 0:
            stats["sol_has_kb_obj"] += 1

        # ----------------------------------------------------------------
        # [ABLATION] pure_logic — KB object matching only
        # ----------------------------------------------------------------
        if ablation == "pure_logic":
            predicted = pure_logic_select(goal, sol1, sol2, affordance, kb)
            is_correct = (predicted == label)
            if is_correct:
                correct += 1
            log.write(f"[Q {idx}] Goal: {goal}\n")
            log.write(f"  Affordance: {affordance} (matched: {matched_aff})\n")
            log.write(f"  Exemplars: {exemplars}\n")
            log.write(f"  Sol1 ({hits1} KB hits): {sol1}\n")
            log.write(f"  Sol2 ({hits2} KB hits): {sol2}\n")
            log.write(f"  Predicted: sol{predicted+1} | GT: sol{label+1} | "
                       f"Correct: {is_correct}\n")
            log.write("-" * 60 + "\n\n")
            continue

        # ----------------------------------------------------------------
        # Stage 3 — NEURAL: LLM selects, grounded by KB context
        # ----------------------------------------------------------------
        if exemplars:
            kb_context = (
                f"Hint: this goal requires the physical action '{affordance}'. "
                f"From a commonsense knowledge base, objects that can '{matched_aff}' "
                f"include: {', '.join(exemplars)}. "
                f"Use this knowledge to evaluate which solution is physically plausible."
            )
            # Add object-mention signals
            if hits1 > 0 and hits2 == 0:
                kb_context += (
                    f" Note: Solution 1 mentions objects known to have this affordance, "
                    f"while Solution 2 does not."
                )
            elif hits2 > 0 and hits1 == 0:
                kb_context += (
                    f" Note: Solution 2 mentions objects known to have this affordance, "
                    f"while Solution 1 does not."
                )
        else:
            # No KB coverage — provide soft affordance hint only
            kb_context = (
                f"Hint: this goal primarily involves the physical action '{affordance}'. "
                f"Consider which solution is more physically plausible for this action."
            )

        predicted = llm_select_solution(goal, sol1, sol2, context=kb_context)
        is_correct = (predicted == label)
        if is_correct:
            correct += 1

        if verbose:
            tqdm.write(f"\n[Q {idx}] Goal: {goal}")
            tqdm.write(f"  Affordance: {affordance} → exemplars: {exemplars[:5]}")
            tqdm.write(f"  Sol1 ({hits1} hits): {sol1}")
            tqdm.write(f"  Sol2 ({hits2} hits): {sol2}")
            tqdm.write(f"  Predicted: sol{predicted+1} | GT: sol{label+1} | ✓={is_correct}")

        log.write(f"[Q {idx}] Goal: {goal}\n")
        log.write(f"  Affordance: {affordance} (matched: {matched_aff})\n")
        log.write(f"  Reasoning: {aff_result.get('reasoning', '')}\n")
        log.write(f"  Exemplars: {exemplars}\n")
        log.write(f"  Sol1 ({hits1} KB hits): {sol1}\n")
        log.write(f"  Sol2 ({hits2} KB hits): {sol2}\n")
        log.write(f"  KB context provided: {'Yes (with exemplars)' if exemplars else 'No (soft hint)'}\n")
        log.write(f"  Predicted: sol{predicted+1} | GT: sol{label+1} | "
                   f"Correct: {is_correct}\n")
        log.write("-" * 60 + "\n\n")

    # -------------------------------------------------------------------
    # Summary
    # -------------------------------------------------------------------
    accuracy = correct / total if total > 0 else 0

    print("\n" + "=" * 60)
    print("PIQA RESULTS")
    print("=" * 60)
    print(f"Total questions : {total}")
    print(f"Correct         : {correct}")
    print(f"Accuracy        : {accuracy:.4f} ({accuracy*100:.2f}%)")
    if ablation not in ("pure_llm",):
        print(f"\nKB Stats:")
        print(f"  KB hit          : {stats['kb_hit']}")
        print(f"  KB miss         : {stats['kb_miss']}")
        print(f"  Synonym hit     : {stats['synonym_hit']}")
        print(f"  Sol has KB obj  : {stats['sol_has_kb_obj']}")
    print("=" * 60)

    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"Total questions : {total}\n")
    log.write(f"Correct         : {correct}\n")
    log.write(f"Accuracy        : {accuracy:.4f}\n")
    if ablation not in ("pure_llm",):
        log.write(f"\nKB Stats:\n")
        log.write(f"  KB hit          : {stats['kb_hit']}\n")
        log.write(f"  KB miss         : {stats['kb_miss']}\n")
        log.write(f"  Synonym hit     : {stats['synonym_hit']}\n")
        log.write(f"  Sol has KB obj  : {stats['sol_has_kb_obj']}\n")
    log.write("=" * 60 + "\n")
    log.close()

    print(f"\nResults saved to: {log_path}")


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run PIQA Evaluation")
    parser.add_argument("--verbose", action="store_true",
                        help="Print per-question details")
    parser.add_argument("--output_file", type=str, default="results_piqa.txt",
                        help="Output file for results")
    parser.add_argument("--ablation", type=str,
                        choices=["none", "pure_llm", "pure_logic"],
                        default="none",
                        help="Ablation mode (default: none = full pipeline)")
    parser.add_argument("--model", type=str, default="mistral-small-latest",
                        help="Mistral model to use")
    parser.add_argument("--limit", type=int, default=None,
                        help="Randomly sample N questions instead of all")
    args = parser.parse_args()

    MODEL_ID = args.model

    evaluate(
        verbose=args.verbose,
        output_file=args.output_file,
        ablation=args.ablation,
        limit=args.limit,
    )
