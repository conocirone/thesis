"""
generate_ilasp_examples_tool_usage.py - Generate ILASP input for hasAffordance rule learning
=============================================================================
Reads SOMA-annotated background knowledge and affordance data from the
Robo-CSK-Benchmark tool_usage dataset.

Produces a complete ILASP input file with context-dependent examples:
  - Each example carries only its own object's BK (avoids grounding explosion)
  - Positive examples from affordance_data.csv
  - Negative examples via closed-world sampling
  - Mode declarations with #constant definitions

Target predicate: hasAffordance(Object, Affordance)

Data sources: Robo-CSK-Benchmark affordance_data.csv + SOMA BK.

Usage:
    python generate_ilasp_examples_tool_usage.py [--max-per-aff N] [--neg-per-obj N]
                                                  [--ml N] [--output PATH]

    --max-per-aff N   Max positive examples per affordance (default: 5)
    --neg-per-obj N   Negative examples per unique object (default: 2)
    --ml N            Max body literals for mode declarations (default: 2)
    --output PATH     Output file path (default: rules/ilasp_tool_usage.las)
    --full            Use ALL examples (no stratified sampling)
    --mvp             Use minimal dataset (core affordances, max 2 examples)
                      Designed for fast testing and online phase integration
=============================================================================
"""

import argparse
import csv
import json
import re
import random
from pathlib import Path
from collections import defaultdict, Counter

random.seed(42)

SCRIPT_DIR = Path(__file__).parent
MODULE_DIR = SCRIPT_DIR.parent.parent
RULES_DIR = MODULE_DIR / "rules"
JSONS_DIR = MODULE_DIR / "jsons"

BK_FILE = RULES_DIR / "shared" / "background_knowledge_validated.las"
BENCHMARK_DIR = MODULE_DIR.parent / "Robo-CSK-Benchmark" / "tool_usage"
AFFORDANCE_CSV = BENCHMARK_DIR / "affordance_data.csv"
AFFORDANCE_LIST_FILE = BENCHMARK_DIR / "affordances_after_mapping.json"
DEFAULT_OUTPUT = RULES_DIR / "tool_usage" / "ilasp_tool_usage.las"

# Core affordances for MVP testing (high-frequency, well-defined)
MVP_AFFORDANCES = [
    "cut", "clean", "hammer", "contain", "heat",
    "wash", "illuminate", "drill", "screw", "pour",
    "mix", "dig", "absorb", "carry", "write",
]


# -- Helper functions -------------------------------------------------------

def clean_obj_id(name: str) -> str:
    """Convert object name to Prolog-safe identifier."""
    return name.strip().lower().replace(" ", "_").replace("-", "_")


def clean_affordance_id(name: str) -> str:
    """Convert affordance name to Prolog-safe identifier."""
    return name.strip().lower().replace(" ", "_").replace("-", "_")


def load_background_knowledge() -> dict:
    """Load SOMA annotations from the validated .las file.
    Returns dict: {obj_id: {qualities: [...], roles: [...], tasks: [...]}}
    """
    objects = {}
    current = None
    with open(BK_FILE, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            m = re.match(r"obj\((\w+)\)\.", line)
            if m:
                current = m.group(1)
                objects[current] = {"qualities": [], "roles": [], "tasks": []}
                continue
            if current:
                m = re.match(r"hasPhysicalQuality\(\w+, (\w+)\)\.", line)
                if m:
                    objects[current]["qualities"].append(m.group(1))
                m = re.match(r"hasRole\(\w+, (\w+)\)\.", line)
                if m:
                    objects[current]["roles"].append(m.group(1))
                m = re.match(r"affordsTask\(\w+, (\w+)\)\.", line)
                if m:
                    objects[current]["tasks"].append(m.group(1))
    return objects


def load_affordance_data() -> dict:
    """Load object-affordance pairs from the benchmark CSV.
    Returns dict: {obj_id: set of affordance_ids}
    """
    obj_affordances = defaultdict(set)

    with open(AFFORDANCE_CSV, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            obj_name = row["Object"].strip()
            obj_id = clean_obj_id(obj_name)

            aff_str = row["Affordances"]
            aff_matches = re.findall(r"\('([^']+)',\s*[0-9.]+\)", aff_str)

            for aff in aff_matches:
                aff_id = clean_affordance_id(aff)
                obj_affordances[obj_id].add(aff_id)

    return dict(obj_affordances)


def load_canonical_affordances() -> list:
    """Load canonical affordance list from the benchmark."""
    with open(AFFORDANCE_LIST_FILE, encoding="utf-8") as f:
        raw = json.load(f)
    return sorted(clean_affordance_id(a) for a in raw)


def format_obj_context(obj_id: str, obj_data: dict) -> str:
    """Format an object's SOMA annotations as Prolog facts for ILASP context.
    For tool_usage, include qualities, roles, and tasks (all are discriminative
    for affordance prediction).
    """
    facts = [f"obj({obj_id})."]
    for q in obj_data["qualities"]:
        facts.append(f"hasPhysicalQuality({obj_id}, {q}).")
    for r in obj_data["roles"]:
        facts.append(f"hasRole({obj_id}, {r}).")
    for t in obj_data["tasks"]:
        facts.append(f"affordsTask({obj_id}, {t}).")
    return " ".join(facts)


def stratified_sample(obj_affordances: dict, kb_objects: dict,
                      max_per_aff: int, canonical_affordances: list) -> list:
    """Select a representative subset: up to max_per_aff objects per affordance,
    preferring diverse SOMA signatures.
    Returns list of (obj_id, affordance) pairs.
    """
    by_aff = defaultdict(list)
    for obj_id, affs in obj_affordances.items():
        if obj_id not in kb_objects:
            continue
        sig = (
            tuple(sorted(kb_objects[obj_id]["qualities"])),
            tuple(sorted(kb_objects[obj_id]["roles"])),
            tuple(sorted(kb_objects[obj_id]["tasks"])),
        )
        for aff in affs:
            if aff in canonical_affordances:
                by_aff[aff].append((obj_id, sig))

    selected = []
    for aff in canonical_affordances:
        candidates = by_aff.get(aff, [])
        if not candidates:
            continue
        random.shuffle(candidates)

        seen_sigs = set()
        diverse = []
        for obj_id, sig in candidates:
            if sig not in seen_sigs:
                diverse.append(obj_id)
                seen_sigs.add(sig)
            if len(diverse) >= max_per_aff:
                break

        for obj_id in diverse:
            selected.append((obj_id, aff))

    return selected


def generate_ilasp_file(kb_objects: dict, obj_affordances: dict,
                        selected_pos: list, neg_per_obj: int, ml: int,
                        output_path: Path, canonical_affordances: list):
    """Write the complete ILASP input file with context-dependent examples."""
    all_qualities = set()
    all_roles = set()
    all_tasks = set()
    for data in kb_objects.values():
        all_qualities.update(data["qualities"])
        all_roles.update(data["roles"])
        all_tasks.update(data["tasks"])

    ex_idx = 0
    n_pos = 0
    n_neg = 0

    with open(output_path, "w", encoding="utf-8") as f:
        f.write("% ==========================================================\n")
        f.write("% ILASP Input: hasAffordance(Object, Affordance) rule learning\n")
        f.write("% Context-dependent examples (each carries its own BK)\n")
        f.write("% Generated from Robo-CSK-Benchmark + SOMA background knowledge\n")
        f.write("% ==========================================================\n\n")
        f.write("#maxv(1).\n\n")

        for aff in canonical_affordances:
            f.write(f"#constant(affordance, {aff}).\n")
        f.write("\n")
        for q in sorted(all_qualities):
            f.write(f"#constant(quality, {q}).\n")
        f.write("\n")
        for r in sorted(all_roles):
            f.write(f"#constant(role, {r}).\n")
        f.write("\n")
        for t in sorted(all_tasks):
            f.write(f"#constant(task, {t}).\n")
        f.write("\n")

        f.write("#modeh(hasAffordance(var(obj), const(affordance))).\n")
        f.write(f"#modeb({ml}, hasPhysicalQuality(var(obj), const(quality))).\n")
        f.write(f"#modeb({ml}, hasRole(var(obj), const(role))).\n")
        f.write(f"#modeb({ml}, affordsTask(var(obj), const(task))).\n\n")

        # Positive examples
        f.write("% --- Positive examples (weight 100) ---\n")
        for obj_id, aff in selected_pos:
            if obj_id not in kb_objects:
                continue
            ex_idx += 1
            ctx = format_obj_context(obj_id, kb_objects[obj_id])
            atom = f"hasAffordance({obj_id}, {aff})"
            f.write(f"#pos(e{ex_idx}@100, {{{atom}}}, {{}}, {{\n")
            f.write(f"  {ctx}\n")
            f.write(f"}}).\n")
            n_pos += 1

        # Negative examples (closed-world sampling)
        f.write("\n% --- Negative examples (weight 10) ---\n")
        seen_objs = set()
        for obj_id, aff in selected_pos:
            if obj_id in seen_objs or obj_id not in kb_objects:
                continue
            seen_objs.add(obj_id)
            ctx = format_obj_context(obj_id, kb_objects[obj_id])
            pos_affs = obj_affordances.get(obj_id, set())
            neg_cands = [
                a for a in canonical_affordances if a not in pos_affs
            ]
            n_sample = min(neg_per_obj, len(neg_cands))
            for na in sorted(random.sample(neg_cands, n_sample)):
                ex_idx += 1
                atom = f"hasAffordance({obj_id}, {na})"
                f.write(f"#pos(e{ex_idx}@10, {{}}, {{{atom}}}, {{\n")
                f.write(f"  {ctx}\n")
                f.write(f"}}).\n")
                n_neg += 1

    return n_pos, n_neg


# -- Main -------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description="Generate ILASP input for hasAffordance rule learning"
    )
    parser.add_argument(
        "--max-per-aff", type=int, default=5,
        help="Max positive examples per affordance (default: 5)"
    )
    parser.add_argument(
        "--neg-per-obj", type=int, default=2,
        help="Negative examples per unique object (default: 2)"
    )
    parser.add_argument(
        "--ml", type=int, default=2,
        help="Max body literals for mode declarations (default: 2)"
    )
    parser.add_argument(
        "--output", type=str, default=None,
        help="Output file path"
    )
    parser.add_argument(
        "--full", action="store_true",
        help="Use ALL examples (no stratified sampling)"
    )
    parser.add_argument(
        "--mvp", action="store_true",
        help="Use minimal dataset (core affordances, max 2 examples, 1 negative) for fast testing"
    )
    args = parser.parse_args()

    output_path = Path(args.output) if args.output else DEFAULT_OUTPUT

    print("=" * 60)
    print("ILASP Example Generator -- hasAffordance(Object, Affordance)")
    print("=" * 60)

    canonical_affordances = load_canonical_affordances()

    if args.mvp:
        args.max_per_aff = min(args.max_per_aff, 2)
        args.neg_per_obj = min(args.neg_per_obj, 1)
        canonical_affordances = [a for a in canonical_affordances if a in
                                  [clean_affordance_id(x) for x in MVP_AFFORDANCES]]
        print("\n*** RUNNING IN MVP MODE (Minimal subset for fast testing) ***")

    print(f"\n[1/4] Loading background knowledge...")
    kb_objects = load_background_knowledge()
    print(f"      {len(kb_objects)} objects loaded from SOMA BK")

    print("[2/4] Loading affordance data from benchmark...")
    obj_affordances = load_affordance_data()
    print(f"      {len(obj_affordances)} objects with affordances in benchmark")

    # Match objects between SOMA BK and affordance data
    matched_objects = set(kb_objects.keys()) & set(obj_affordances.keys())
    print(f"      {len(matched_objects)} objects matched between BK and benchmark")

    # Filter to only matched objects
    matched_affordances = defaultdict(set)
    for obj_id in matched_objects:
        matched_affordances[obj_id] = obj_affordances[obj_id]

    print("[3/4] Extracting affordance pairs...")
    total_pairs = sum(len(affs) for affs in matched_affordances.values())
    print(f"      {total_pairs} (object, affordance) pairs")
    print(f"      {len(canonical_affordances)} canonical affordances")

    if args.full:
        print("      Mode: FULL (all examples, no sampling)")
        selected = []
        for obj_id in sorted(matched_objects):
            for aff in sorted(matched_affordances[obj_id]):
                if aff in canonical_affordances:
                    selected.append((obj_id, aff))
    else:
        print(f"      Mode: STRATIFIED (max {args.max_per_aff} per affordance)")
        selected = stratified_sample(
            matched_affordances, kb_objects, args.max_per_aff, canonical_affordances
        )

    print("[4/4] Generating ILASP file...")
    n_pos, n_neg = generate_ilasp_file(
        kb_objects, matched_affordances, selected, args.neg_per_obj,
        args.ml, output_path, canonical_affordances
    )
    size_kb = output_path.stat().st_size / 1024
    print(f"      {n_pos} positive examples (weight 100)")
    print(f"      {n_neg} negative examples (weight 10)")
    print(f"      {n_pos + n_neg} total examples")
    if n_pos > 0:
        print(f"      Ratio: {n_neg / n_pos:.1f} negatives per positive")
    print(f"      File: {output_path}")
    print(f"      Size: {size_kb:.1f} KB")

    # Summary by affordance
    print(f"\n{'-' * 60}")
    print("POSITIVE EXAMPLES PER AFFORDANCE:")
    aff_counts = Counter(aff for _, aff in selected)
    for aff, count in aff_counts.most_common():
        print(f"  {aff}: {count}")


if __name__ == "__main__":
    main()
