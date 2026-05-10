#!/usr/bin/env python3
"""
Deep error analysis of the multichoice pipeline results.

Analyzes:
  1. How often Clingo produced a useful ranking (correct location was mappable & ranked)
  2. How often the LLM reranker helped vs hurt
  3. Failure modes: unmappable locations, Clingo misses, LLM overrides
  4. Comparison with pure LLM baselines
"""
import csv
import ast
import re
from pathlib import Path
from collections import Counter, defaultdict

SCRIPT_DIR = Path(__file__).parent
RESULTS_CSV = SCRIPT_DIR / "multichoice_results_full_pipeline.csv"
REPORT_MD = SCRIPT_DIR / "multichoice_report_full_pipeline.md"

# Same LOCATION_MAP from evaluate.py
LOCATION_MAP = {
    'kitchen': 'kitchen',
    'bathroom': 'bathroom', 'washroom': 'bathroom',
    'bedroom': 'bedroom', 'nursery': 'bedroom', "childs room": "bedroom", "child's bedroom": "bedroom", "cash's room": "bedroom", "teenager's bedroom": "bedroom",
    'living room': 'living_room', 'family room': 'living_room', 'sitting room': 'living_room', 'den': 'living_room', 'livingroom': 'living_room', 'living rooms': 'living_room', 'loungeroom': 'living_room', 'lounge': 'living_room', 'parlor': 'living_room', 'television room': 'living_room', 'playroom': 'living_room',
    'dining room': 'dining_room',
    'home office': 'home_office', 'study': 'home_office', 'library': 'library',
    'garage': 'garage', 'workshop': 'garage',
    'garden': 'garden', 'balcony': 'garden', 'porch': 'garden', 'terrace': 'garden', 'greenhouse': 'garden', 'backyard': 'garden',
    'laundry room': 'laundry_room', 'utility room': 'laundry_room', 'exercise room': 'laundry_room',
    'pantry': 'pantry', 'pantry room': 'pantry',
    'closet': 'closet', 'dressing room': 'closet', 'wardrobe': 'closet',
    'storage room': 'storage_room', 'attic': 'storage_room', 'basement': 'storage_room', 'cellar': 'storage_room', 'wine cellar': 'storage_room', 'loft': 'storage_room',
    'hallway': 'hallway', 'foyer': 'hallway', 'entryway': 'hallway', 'lobby': 'hallway', 'corridor': 'hallway', "waiting room": "hallway",
    'fridge': 'fridge', 'refrigerator': 'fridge', 'icebox': 'fridge', 'freezer': 'fridge',
    'drawer': 'drawer',
    'shelf': 'shelf', 'bookshelf': 'shelf',
    'table': 'table', 'desk': 'table', 'counter': 'table', "countertop": "table",
    'cabinet': 'cabinet', 'cupboard': 'cabinet', 'chest': 'cabinet', 'dresser': 'cabinet', 'bureau': 'cabinet',
    'bed': 'bed',
    'sink': 'sink', 'dishwasher': 'sink',
    'trash': 'trash', 'garbage': 'trash', 'dumpster': 'trash', "garbagecan": 'trash', "dustbin": "trash"
}

def map_loc(s):
    return LOCATION_MAP.get(s.lower().strip())


def load_results():
    results = []
    with open(RESULTS_CSV, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            choices = ast.literal_eval(row["location_choices"])
            results.append({
                "object": row["object"],
                "correct_location": row["correct_location"],
                "predicted_location": row["predicted_location"],
                "correct": row["correct_prediction"] == "True",
                "choices": choices,
            })
    return results


def parse_clingo_ranking(report_path):
    """Parse Clingo rankings from the error report."""
    rankings = {}
    with open(report_path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line.startswith("|") and "|" in line[1:]:
                parts = [p.strip() for p in line.split("|")]
                parts = [p for p in parts if p]
                if len(parts) >= 4 and parts[0] not in ("Object", "---"):
                    obj = parts[0]
                    ranking_str = parts[3]
                    if ranking_str and ranking_str != "N/A":
                        rankings[obj] = [r.strip() for r in ranking_str.split(",")]
    return rankings


def analyze():
    results = load_results()
    total = len(results)
    correct = sum(1 for r in results if r["correct"])
    wrong = total - correct
    
    print(f"Total: {total}, Correct: {correct} ({correct/total*100:.1f}%), Wrong: {wrong}")
    
    # ── 1. Correct location mappability ──────────────────────────────────────
    print("\n" + "=" * 70)
    print("1. CORRECT LOCATION MAPPABILITY")
    print("=" * 70)
    
    mappable = 0
    unmappable_locs = Counter()
    mappable_correct = 0
    unmappable_correct = 0
    
    for r in results:
        canon = map_loc(r["correct_location"])
        if canon:
            mappable += 1
            if r["correct"]:
                mappable_correct += 1
        else:
            unmappable_locs[r["correct_location"]] += 1
            if r["correct"]:
                unmappable_correct += 1
    
    unmappable = total - mappable
    print(f"  Correct location IS mappable to canonical:  {mappable} ({mappable/total*100:.1f}%)")
    print(f"  Correct location NOT mappable:              {unmappable} ({unmappable/total*100:.1f}%)")
    print(f"    → Accuracy on mappable:   {mappable_correct}/{mappable} = {mappable_correct/mappable*100:.1f}%")
    if unmappable > 0:
        print(f"    → Accuracy on unmappable: {unmappable_correct}/{unmappable} = {unmappable_correct/unmappable*100:.1f}%")
    
    print(f"\n  Top unmappable correct locations:")
    for loc, count in unmappable_locs.most_common(20):
        print(f"    {loc:30s}  {count}")
    
    # ── 2. Choice mappability analysis ───────────────────────────────────────
    print("\n" + "=" * 70)
    print("2. CHOICE MAPPABILITY (how many of the 5 choices map to canonical locs)")
    print("=" * 70)
    
    choice_mappability = Counter()
    correct_in_mapped_choices = 0
    
    for r in results:
        mapped_count = sum(1 for c in r["choices"] if map_loc(c) is not None)
        choice_mappability[mapped_count] += 1
        
        # Is correct location among the mappable choices?
        correct_canon = map_loc(r["correct_location"])
        if correct_canon:
            mapped_choices_canons = [map_loc(c) for c in r["choices"] if map_loc(c) is not None]
            if correct_canon in mapped_choices_canons:
                correct_in_mapped_choices += 1
    
    for k in sorted(choice_mappability.keys()):
        print(f"  {k}/5 choices mappable: {choice_mappability[k]} questions ({choice_mappability[k]/total*100:.1f}%)")
    
    print(f"\n  Correct location's canonical is among mapped choices: {correct_in_mapped_choices}/{total} ({correct_in_mapped_choices/total*100:.1f}%)")
    
    # ── 3. Failure mode classification ───────────────────────────────────────
    print("\n" + "=" * 70)
    print("3. FAILURE MODE CLASSIFICATION (for wrong predictions only)")
    print("=" * 70)
    
    # Categories:
    # A) Correct loc not mappable — pipeline can't possibly pick it
    # B) Correct loc mappable but no choice maps to its canonical — same issue
    # C) Correct loc mappable, choices available, but pipeline picked wrong one
    # D) LLM reranker picked something not even in Clingo ranking
    
    mode_a = 0  # correct loc unmappable
    mode_b = 0  # correct loc mappable but no matching choice  
    mode_c = 0  # correct loc mappable, matching choice exists, but wrong pick
    mode_d = 0  # predicted loc not mappable to any canonical (LLM hallucination)
    
    mode_a_examples = []
    mode_b_examples = []
    mode_c_examples = []
    mode_d_examples = []
    
    for r in results:
        if r["correct"]:
            continue
            
        correct_canon = map_loc(r["correct_location"])
        pred_canon = map_loc(r["predicted_location"])
        
        if correct_canon is None:
            mode_a += 1
            mode_a_examples.append((r["object"], r["correct_location"], r["predicted_location"]))
        else:
            # Check if any choice maps to correct canonical
            choices_with_correct_canon = [c for c in r["choices"] if map_loc(c) == correct_canon]
            if not choices_with_correct_canon:
                mode_b += 1
                mode_b_examples.append((r["object"], r["correct_location"], correct_canon, r["predicted_location"]))
            else:
                mode_c += 1
                mode_c_examples.append((r["object"], r["correct_location"], correct_canon, r["predicted_location"], pred_canon))
        
        if pred_canon is None:
            mode_d += 1
            mode_d_examples.append((r["object"], r["predicted_location"]))
    
    print(f"  Mode A — Correct location unmappable:           {mode_a} ({mode_a/wrong*100:.1f}% of errors)")
    print(f"  Mode B — Mappable but no choice matches canon:  {mode_b} ({mode_b/wrong*100:.1f}% of errors)")
    print(f"  Mode C — Mappable, choice exists, wrong pick:   {mode_c} ({mode_c/wrong*100:.1f}% of errors)")
    print(f"  Mode D — Prediction unmappable (LLM free-form): {mode_d} ({mode_d/wrong*100:.1f}% of errors)")
    
    print(f"\n  Mode A examples (correct loc not in pipeline's vocabulary):")
    for obj, corr, pred in mode_a_examples[:10]:
        print(f"    {obj:25s}  correct={corr:20s}  predicted={pred}")
    
    print(f"\n  Mode C examples (pipeline COULD have picked right, but didn't):")
    for obj, corr, canon, pred, pcanon in mode_c_examples[:15]:
        print(f"    {obj:25s}  correct={corr:15s} ({canon})  predicted={pred:15s} ({pcanon})")
    
    print(f"\n  Mode D examples (LLM predicted something unmappable):")
    for obj, pred in mode_d_examples[:10]:
        print(f"    {obj:25s}  predicted={pred}")
    
    # ── 4. Clingo contribution analysis ──────────────────────────────────────
    print("\n" + "=" * 70)
    print("4. CLINGO CONTRIBUTION ANALYSIS")
    print("=" * 70)
    
    # For each question, check if the correct canonical was in Clingo's ranking
    # We can infer this from the report
    error_rankings = parse_clingo_ranking(REPORT_MD)
    
    # For correct predictions, we need to look at the CSV data differently
    # Let's analyze just the structure of results
    
    # How many questions have the correct answer among choices that map to a canonical?
    clingo_could_help = 0  # correct loc is mappable AND at least one choice maps to it
    clingo_irrelevant = 0  # correct loc unmappable - Clingo can't help
    
    for r in results:
        correct_canon = map_loc(r["correct_location"])
        if correct_canon:
            clingo_could_help += 1
        else:
            clingo_irrelevant += 1
    
    print(f"  Questions where Clingo COULD help (correct loc mappable): {clingo_could_help} ({clingo_could_help/total*100:.1f}%)")
    print(f"  Questions where Clingo is irrelevant (unmappable):        {clingo_irrelevant} ({clingo_irrelevant/total*100:.1f}%)")
    
    # Accuracy breakdown
    clingo_helped_correct = sum(1 for r in results if r["correct"] and map_loc(r["correct_location"]))
    clingo_helped_total = clingo_could_help
    llm_only_correct = sum(1 for r in results if r["correct"] and not map_loc(r["correct_location"]))
    llm_only_total = clingo_irrelevant
    
    print(f"\n  Accuracy where Clingo could help: {clingo_helped_correct}/{clingo_helped_total} = {clingo_helped_correct/clingo_helped_total*100:.1f}%")
    if llm_only_total > 0:
        print(f"  Accuracy where Clingo irrelevant: {llm_only_correct}/{llm_only_total} = {llm_only_correct/llm_only_total*100:.1f}%")
    
    # ── 5. LLM reranker behavior ─────────────────────────────────────────────
    print("\n" + "=" * 70)
    print("5. LLM RERANKER BEHAVIOR (how often it picks from Clingo vs free-form)")
    print("=" * 70)
    
    pred_is_mappable = sum(1 for r in results if map_loc(r["predicted_location"]) is not None)
    pred_is_unmappable = total - pred_is_mappable
    
    print(f"  Predictions that map to a canonical loc: {pred_is_mappable} ({pred_is_mappable/total*100:.1f}%)")
    print(f"  Predictions that are free-form (LLM):    {pred_is_unmappable} ({pred_is_unmappable/total*100:.1f}%)")
    
    # When LLM goes free-form, is it correct?
    freeform_correct = sum(1 for r in results if map_loc(r["predicted_location"]) is None and r["correct"])
    freeform_total = pred_is_unmappable
    mapped_pred_correct = sum(1 for r in results if map_loc(r["predicted_location"]) is not None and r["correct"])
    mapped_pred_total = pred_is_mappable
    
    print(f"\n  Accuracy when prediction is mappable:   {mapped_pred_correct}/{mapped_pred_total} = {mapped_pred_correct/mapped_pred_total*100:.1f}%")
    if freeform_total > 0:
        print(f"  Accuracy when prediction is free-form:  {freeform_correct}/{freeform_total} = {freeform_correct/freeform_total*100:.1f}%")

    # ── 6. LLM call necessity ────────────────────────────────────────────────
    print("\n" + "=" * 70)
    print("6. LLM CALL NECESSITY (per question)")
    print("=" * 70)
    
    # Each question gets:
    # - 1 LLM call for SOMA extraction (always)
    # - 1 LLM call for reranking/picking from choices (always in full pipeline)
    # Total: 2 LLM calls per question
    total_soma_calls = total
    total_rerank_calls = total  # in full pipeline, always called
    total_llm_calls = total_soma_calls + total_rerank_calls
    
    print(f"  SOMA extraction calls:  {total_soma_calls} (1 per question, always)")
    print(f"  LLM reranking calls:    {total_rerank_calls} (1 per question, always)")
    print(f"  Total LLM calls:        {total_llm_calls} ({total_llm_calls/total:.1f} per question)")
    print(f"\n  Note: In 'no_rerank' mode, only SOMA calls are made ({total} total)")
    print(f"  Note: In 'pure_llm' mode, SOMA + direct LLM pick ({total*2} total)")
    
    # ── 7. Canonical location confusion matrix ───────────────────────────────
    print("\n" + "=" * 70)
    print("7. CANONICAL LOCATION CONFUSION (correct → predicted, for wrong answers)")
    print("=" * 70)
    
    confusion = Counter()
    for r in results:
        if not r["correct"]:
            cc = map_loc(r["correct_location"]) or "UNMAPPABLE"
            pc = map_loc(r["predicted_location"]) or "UNMAPPABLE"
            confusion[(cc, pc)] += 1
    
    print(f"\n  Top 20 confusion pairs (correct_canon → predicted_canon):")
    for (cc, pc), count in confusion.most_common(20):
        print(f"    {cc:20s} → {pc:20s}  ({count} times)")
    
    # ── 8. Comparison with LLM baselines ─────────────────────────────────────
    print("\n" + "=" * 70)
    print("8. COMPARISON WITH PURE LLM BASELINES")
    print("=" * 70)
    
    pipeline_acc = correct / total * 100
    baselines = {
        "Llama-3.3-70B (pure LLM)": 61.82,
        "GPT-4o (pure LLM)": 60.90,
        "Gemma-2-27B (pure LLM)": 57.55,
    }
    
    print(f"  Your pipeline (mistral-medium): {pipeline_acc:.2f}%")
    for name, acc in baselines.items():
        delta = pipeline_acc - acc
        print(f"  {name:35s}: {acc:.2f}%  (Δ = {delta:+.2f}%)")
    
    # ── 9. Summary statistics ────────────────────────────────────────────────
    print("\n" + "=" * 70)
    print("9. SUMMARY")
    print("=" * 70)
    
    theoretical_ceiling = (clingo_could_help + llm_only_correct) / total * 100
    
    print(f"""
  Pipeline Accuracy:           {pipeline_acc:.2f}%
  
  Error Breakdown ({wrong} errors total):
    Mode A (unmappable correct): {mode_a} ({mode_a/wrong*100:.1f}%) — UNSOLVABLE by Clingo
    Mode B (no matching choice): {mode_b} ({mode_b/wrong*100:.1f}%) — choice set gap
    Mode C (wrong pick):         {mode_c} ({mode_c/wrong*100:.1f}%) — FIXABLE errors
    Mode D (LLM hallucination):  {mode_d} ({mode_d/wrong*100:.1f}%) — LLM went off-script
    
  Key Insight:
    {mode_c} errors ({mode_c/wrong*100:.1f}% of all errors) are cases where the correct 
    canonical location existed in a choice but the pipeline picked the wrong one.
    These are the errors that better Clingo rules or LLM reranking could fix.
    
    {mode_a + mode_b} errors ({(mode_a+mode_b)/wrong*100:.1f}% of all errors) are STRUCTURAL — 
    either the correct location isn't in the pipeline's vocabulary or no choice 
    maps to the correct canonical. These need vocabulary expansion.
""")


if __name__ == "__main__":
    analyze()
