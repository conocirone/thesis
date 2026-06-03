"""
evaluate_rules.py
=================
Evaluates learned ASP rules against the ground-truth examples in the ILASP file.

For each location it computes:
  - True  Positives  (TP): positive examples correctly covered by the rules
  - False Negatives  (FN): positive examples NOT covered (misses)
  - False Positives  (FP): negative examples wrongly covered
  - True  Negatives  (TN): negative examples correctly excluded

From these it derives per-location and macro-averaged:
  - Precision = TP / (TP + FP)
  - Recall    = TP / (TP + FN)
  - F1        = 2 * P * R / (P + R)

Usage:
    python3 evaluate_rules.py
    python3 evaluate_rules.py --rules path/to/rules.txt --examples path/to/ilasp.las
    python3 evaluate_rules.py --verbose          # print per-object breakdown
    python3 evaluate_rules.py --location kitchen # evaluate one location only
"""

import subprocess
import re
import sys
import argparse
from pathlib import Path
from collections import defaultdict


# =============================================================================
# CONFIG
# =============================================================================

SCRIPT_DIR   = Path(__file__).parent
MODULE_DIR   = SCRIPT_DIR.parent.parent
RULES_DIR    = MODULE_DIR / "rules"

DEFAULT_RULES_FILE    = RULES_DIR / "tidy_up" / "learned_rules_llm.txt"
DEFAULT_EXAMPLES_FILE = RULES_DIR / "tidy_up" / "ilasp_tidy_up.las"


# =============================================================================
# PARSERS
# =============================================================================

def parse_ilasp_file(filename):
    """Parse ILASP format examples into {loc: {pos, neg, ctx}} structure.

    ctx[obj] is a list of individual ASP facts (one per element, no trailing
    period) extracted from the context block of each example.
    """
    examples_by_loc = defaultdict(lambda: {"pos": set(), "neg": set(), "ctx": {}})

    with open(filename, "r") as f:
        content = f.read()

    pattern = re.compile(
        r'#pos\((e\d+)@\d+,\s*\{(.*?)\},\s*\{(.*?)\},\s*\{(.*?)\}\)\.',
        re.DOTALL
    )

    for match in pattern.finditer(content):
        pos_atoms_str = match.group(2).strip()
        neg_atoms_str = match.group(3).strip()
        ctx_str       = match.group(4).strip()

        target     = pos_atoms_str if pos_atoms_str else neg_atoms_str
        atom_match = re.search(r'goesIn\((.*?),\s*(.*?)\)', target)
        if not atom_match:
            continue

        obj_id, loc = atom_match.group(1), atom_match.group(2)

        # Split on '.' so each fact is a separate element (no trailing period).
        raw_facts = ctx_str.replace('\n', ' ')
        ctx_facts = [f.strip() for f in raw_facts.split('.') if f.strip()]

        examples_by_loc[loc]["ctx"][obj_id] = ctx_facts

        if pos_atoms_str:
            examples_by_loc[loc]["pos"].add(obj_id)
        if neg_atoms_str:
            examples_by_loc[loc]["neg"].add(obj_id)

    return examples_by_loc


def parse_rules_file(filename):
    """Parse the learned rules output file into {loc: [rule, ...]} structure.

    The file format is:
        % --- location ---
        goesIn(X, location) :- ...
        goesIn(X, location) :- ...

        % --- next_location ---
        ...
    """
    rules_by_loc = defaultdict(list)
    current_loc  = None

    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            # Section header
            m = re.match(r"% --- (.*?) ---", line)
            if m:
                current_loc = m.group(1)
                continue

            # Skip file-level comments
            if line.startswith("%"):
                continue

            # Rule line
            if current_loc and "goesIn" in line:
                rules_by_loc[current_loc].append(line)

    return rules_by_loc


# =============================================================================
# CLINGO EVALUATION
# =============================================================================

def build_clingo_program(loc, rules, obj_id, ctx_facts):
    """Build a complete ASP program that tests whether obj_id is covered
    by the given rules for loc, given its background facts."""
    lines = []

    # Background facts for this object (re-add the period stripped during parsing)
    for fact in ctx_facts:
        lines.append(fact + ".")

    lines.append("")

    # All learned rules for this location
    for rule in rules:
        lines.append(rule)

    lines.append("")

    # Probe atoms
    lines.append(f"covered :- goesIn({obj_id}, {loc}).")

    return "\n".join(lines)


def is_covered_by_rules(loc, rules, obj_id, ctx_facts):
    """Return True if the learned rules derive goesIn(obj_id, loc)."""
    if not rules:
        return False

    program = build_clingo_program(loc, rules, obj_id, ctx_facts)

    tmp = Path("/tmp/eval_rule.lp")
    with open(tmp, "w") as f:
        f.write(program)

    result = subprocess.run(
        [sys.executable, "-m", "clingo", str(tmp), "0", "--out-ifs=\n"],
        capture_output=True,
        text=True
    )

    return "covered" in result.stdout


# =============================================================================
# METRICS
# =============================================================================

def safe_div(num, denom):
    return num / denom if denom > 0 else 0.0


def compute_metrics(tp, fp, fn, tn):
    precision = safe_div(tp, tp + fp)
    recall    = safe_div(tp, tp + fn)
    f1        = safe_div(2 * precision * recall, precision + recall)
    accuracy  = safe_div(tp + tn, tp + fp + fn + tn)
    return precision, recall, f1, accuracy


# =============================================================================
# EVALUATOR
# =============================================================================

def evaluate(rules_file, examples_file, verbose=False, location_filter=None):

    print(f"Rules file:    {rules_file}")
    print(f"Examples file: {examples_file}")
    print()

    examples  = parse_ilasp_file(examples_file)
    rules     = parse_rules_file(rules_file)

    locations = sorted(examples.keys())
    if location_filter:
        locations = [l for l in locations if l == location_filter]
        if not locations:
            print(f"[ERROR] Location '{location_filter}' not found in examples file.")
            sys.exit(1)

    # Aggregate counters
    total_tp = total_fp = total_fn = total_tn = 0

    results = {}

    for loc in locations:
        data      = examples[loc]
        loc_rules = rules.get(loc, [])

        pos_objs = data["pos"]
        neg_objs = data["neg"]
        ctx      = data["ctx"]

        tp = fp = fn = tn = 0
        tp_list = []
        fp_list = []
        fn_list = []
        tn_list = []

        # Test positive examples
        for obj in sorted(pos_objs):
            facts   = ctx.get(obj, [])
            covered = is_covered_by_rules(loc, loc_rules, obj, facts)
            if covered:
                tp += 1
                tp_list.append(obj)
            else:
                fn += 1
                fn_list.append(obj)

        # Test negative examples
        for obj in sorted(neg_objs):
            facts   = ctx.get(obj, [])
            covered = is_covered_by_rules(loc, loc_rules, obj, facts)
            if covered:
                fp += 1
                fp_list.append(obj)
            else:
                tn += 1
                tn_list.append(obj)

        precision, recall, f1, accuracy = compute_metrics(tp, fp, fn, tn)

        results[loc] = {
            "rules":     loc_rules,
            "tp": tp, "fp": fp, "fn": fn, "tn": tn,
            "precision": precision,
            "recall":    recall,
            "f1":        f1,
            "accuracy":  accuracy,
            "tp_list":   tp_list,
            "fp_list":   fp_list,
            "fn_list":   fn_list,
            "tn_list":   tn_list,
        }

        total_tp += tp
        total_fp += fp
        total_fn += fn
        total_tn += tn

    # ==========================================================================
    # PRINT REPORT
    # ==========================================================================

    print("=" * 72)
    print(f"{'LOCATION':<22} {'RULES':>5}  {'TP':>4} {'FP':>4} {'FN':>4} {'TN':>4}  "
          f"{'PREC':>6} {'REC':>6} {'F1':>6}")
    print("=" * 72)

    for loc in locations:
        r = results[loc]
        n_rules = len(r["rules"])
        flag = ""
        if r["fn"] > 0 and r["fp"] == 0:
            flag = " ←miss"
        elif r["fp"] > 0 and r["fn"] == 0:
            flag = " ←fp"
        elif r["fp"] > 0 and r["fn"] > 0:
            flag = " ←both"
        elif n_rules == 0:
            flag = " ←no rules"

        print(f"{loc:<22} {n_rules:>5}  {r['tp']:>4} {r['fp']:>4} {r['fn']:>4} {r['tn']:>4}  "
              f"{r['precision']:>6.2f} {r['recall']:>6.2f} {r['f1']:>6.2f}{flag}")

        if verbose:
            if r["tp_list"]:
                print(f"  ✓  covered positives : {', '.join(r['tp_list'])}")
            if r["fn_list"]:
                print(f"  ✗  missed  positives : {', '.join(r['fn_list'])}")
            if r["fp_list"]:
                print(f"  !  wrong   negatives : {', '.join(r['fp_list'])}")
            if r["rules"]:
                print(f"  Rules:")
                for rule in r["rules"]:
                    print(f"    {rule}")
            print()

    print("=" * 72)

    # Macro averages (average of per-location metrics)
    n_locs = len(locations)
    macro_p  = sum(results[l]["precision"] for l in locations) / n_locs
    macro_r  = sum(results[l]["recall"]    for l in locations) / n_locs
    macro_f1 = sum(results[l]["f1"]        for l in locations) / n_locs

    # Micro averages (global TP/FP/FN/TN pooled)
    micro_p, micro_r, micro_f1, micro_acc = compute_metrics(
        total_tp, total_fp, total_fn, total_tn
    )

    print(f"\n{'MACRO averages':<22}         "
          f"{'':>4} {'':>4} {'':>4} {'':>4}  "
          f"{macro_p:>6.2f} {macro_r:>6.2f} {macro_f1:>6.2f}")
    print(f"{'MICRO averages':<22}  "
          f"{total_tp:>4} {total_fp:>4} {total_fn:>4} {total_tn:>4}  "
          f"{micro_p:>6.2f} {micro_r:>6.2f} {micro_f1:>6.2f}")
    print(f"\nMicro accuracy: {micro_acc:.3f}   "
          f"({total_tp + total_tn} correct / "
          f"{total_tp + total_fp + total_fn + total_tn} total)")

    # Summary of problem locations
    problem_locs = [l for l in locations if results[l]["fn"] > 0 or results[l]["fp"] > 0]
    no_rule_locs = [l for l in locations if not results[l]["rules"]]

    if no_rule_locs:
        print(f"\nLocations with NO learned rules ({len(no_rule_locs)}): "
              f"{', '.join(no_rule_locs)}")
    if problem_locs:
        print(f"\nLocations with errors ({len(problem_locs)}): "
              f"{', '.join(problem_locs)}")

    return results


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(
        description="Evaluate learned ASP rules against ILASP ground truth."
    )
    parser.add_argument(
        "--rules",
        type=Path,
        default=DEFAULT_RULES_FILE,
        help="Path to learned rules .txt file (default: %(default)s)"
    )
    parser.add_argument(
        "--examples",
        type=Path,
        default=DEFAULT_EXAMPLES_FILE,
        help="Path to ILASP .las examples file (default: %(default)s)"
    )
    parser.add_argument(
        "--verbose", "-v",
        action="store_true",
        help="Print per-object breakdown for every location"
    )
    parser.add_argument(
        "--location", "-l",
        type=str,
        default=None,
        help="Evaluate a single location only (e.g. --location kitchen)"
    )
    args = parser.parse_args()

    if not args.rules.exists():
        print(f"[ERROR] Rules file not found: {args.rules}")
        sys.exit(1)
    if not args.examples.exists():
        print(f"[ERROR] Examples file not found: {args.examples}")
        sys.exit(1)

    evaluate(
        rules_file=args.rules,
        examples_file=args.examples,
        verbose=args.verbose,
        location_filter=args.location,
    )


if __name__ == "__main__":
    main()
