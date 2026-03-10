"""
generate_ilasp_examples.py - Generate ILASP input for goesIn rule learning
=============================================================================
Reads SOMA-annotated background knowledge and ConceptNet atLocation data.
Produces a complete ILASP input file with context-dependent examples:
  - Each example carries only its own object's BK (avoids grounding explosion)
  - Positive examples from ConceptNet atLocation
  - Negative examples via closed-world sampling
  - Mode declarations with #constant definitions

Data sources: ConceptNet.

Usage:
    python generate_ilasp_examples.py [--max-per-loc N] [--neg-per-obj N]
                                      [--ml N] [--output PATH]

    --max-per-loc N   Max positive examples per location (default: 5)
    --neg-per-obj N   Negative examples per unique object (default: 2)
    --ml N            Max body literals for mode declarations (default: 2)
    --output PATH     Output file path (default: rules/ilasp_tidy_up.las)
    --full            Use ALL examples (no stratified sampling)
    --mvp             Use minimal dataset (core locations, max 2 examples)
                      Designed for fast testing and online phase integration
=============================================================================
"""

import argparse
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

BK_FILE = RULES_DIR / "background_knowledge_validated.las"
SUBGRAPH_FILE = JSONS_DIR / "conceptnet_domestic_subgraph.json"
DEFAULT_OUTPUT = RULES_DIR / "ilasp_tidy_up.las"

# -- Canonical location mapping ---------------------------------------------
ROOM_MAPPING = {
    "kitchen": "kitchen",
    "bathroom": "bathroom",
    "washroom": "bathroom",
    "bedroom": "bedroom",
    "nursery": "bedroom",
    "living room": "living_room",
    "family room": "living_room",
    "sitting room": "living_room",
    "den": "living_room",
    "front room": "living_room",
    "dining room": "dining_room",
    "home office": "home_office",
    "study": "home_office",
    "garage": "garage",
    "workshop": "garage",
    "garden": "garden",
    "balcony": "garden",
    "porch": "garden",
    "terrace": "garden",
    "greenhouse": "garden",
    "laundry room": "laundry_room",
    "utility room": "laundry_room",
    "pantry": "pantry",
    "closet": "closet",
    "dressing room": "closet",
    "storage room": "storage_room",
    "storeroom": "storage_room",
    "attic": "storage_room",
    "basement": "storage_room",
    "cellar": "storage_room",
    "wine cellar": "storage_room",
    "library": "library",
    "hallway": "hallway",
    "foyer": "hallway",
    "entryway": "hallway",
    "lobby": "hallway",
    "playroom": "playroom",
    "game room": "playroom",
    "music room": "music_room",
    "conservatory": "music_room",
    "darkroom": "storage_room",
    "workroom": "garage",
}

SUBLOCATION_MAPPING = {
    "fridge": "fridge",
    "refrigerator": "fridge",
    "freezer": "fridge",
    "drawer": "drawer",
    "shelf": "shelf",
    "bookshelf": "shelf",
    "table": "table",
    "desk": "table",
    "counter": "table",
    "cabinet": "cabinet",
    "cupboard": "cabinet",
    "bed": "bed",
    "sink": "sink",
    "trash": "trash",
    "garbage": "trash",
}

ALL_MAPPING = {**ROOM_MAPPING, **SUBLOCATION_MAPPING}
ALL_CANONICAL_LOCATIONS = sorted(set(ALL_MAPPING.values()))

# Core locations for MVP testing
MVP_LOCATIONS = ["kitchen", "bedroom", "bathroom", "living_room", "garage", "fridge", "closet"]


# -- Helper functions -------------------------------------------------------

def clean_obj_id(name: str) -> str:
    """Convert object name to Prolog-safe identifier."""
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


def extract_location_pairs(subgraph: dict, kb_objects: set) -> dict:
    """Extract (object -> set of canonical locations) from ConceptNet.
    Returns dict: {obj_id: set of canonical locations}
    """
    obj_locations = defaultdict(set)
    tidy = subgraph["tidy_up_hierarchy"]

    for room, info in tidy.items():
        canonical_room = ROOM_MAPPING.get(room)
        if not canonical_room:
            continue

        for item in info["direct_items"]:
            obj_id = clean_obj_id(item)
            if obj_id in kb_objects:
                obj_locations[obj_id].add(canonical_room)

        for container, nested_items in info["nested_items"].items():
            container_lower = container.lower().strip()
            canonical_subloc = SUBLOCATION_MAPPING.get(container_lower)
            for nested in nested_items:
                obj_id = clean_obj_id(nested)
                if obj_id in kb_objects:
                    if canonical_subloc:
                        obj_locations[obj_id].add(canonical_subloc)
                    else:
                        obj_locations[obj_id].add(canonical_room)

    return dict(obj_locations)


def format_obj_context(obj_id: str, obj_data: dict) -> str:
    """Format an object's SOMA annotations as Prolog facts for ILASP context.
    Uses only roles and tasks (not qualities) to reduce search space.
    """
    facts = [f"obj({obj_id})."]
    for r in obj_data["roles"]:
        facts.append(f"hasRole({obj_id}, {r}).")
    for t in obj_data["tasks"]:
        facts.append(f"affordsTask({obj_id}, {t}).")
    return " ".join(facts)


def stratified_sample(obj_locations: dict, kb_objects: dict,
                      max_per_loc: int) -> list:
    """Select a representative subset: up to max_per_loc objects per location,
    preferring diverse SOMA signatures.
    Returns list of (obj_id, location) pairs.
    """
    by_loc = defaultdict(list)
    for obj_id, locs in obj_locations.items():
        sig = (
            tuple(sorted(kb_objects[obj_id]["roles"])),
            tuple(sorted(kb_objects[obj_id]["tasks"])),
        )
        for loc in locs:
            by_loc[loc].append((obj_id, sig))

    selected = []
    for loc in ALL_CANONICAL_LOCATIONS:
        candidates = by_loc.get(loc, [])
        if not candidates:
            continue
        random.shuffle(candidates)

        # Prioritize unique SOMA signatures
        seen_sigs = set()
        diverse = []
        for obj_id, sig in candidates:
            if sig not in seen_sigs:
                diverse.append(obj_id)
                seen_sigs.add(sig)
            if len(diverse) >= max_per_loc:
                break

        for obj_id in diverse:
            selected.append((obj_id, loc))

    return selected


def generate_ilasp_file(kb_objects: dict, obj_locations: dict,
                        selected_pos: list, neg_per_obj: int, ml: int,
                        output_path: Path):
    """Write the complete ILASP input file with context-dependent examples."""
    # Collect all unique SOMA constants
    all_roles = set()
    all_tasks = set()
    for data in kb_objects.values():
        all_roles.update(data["roles"])
        all_tasks.update(data["tasks"])

    ex_idx = 0
    n_pos = 0
    n_neg = 0

    with open(output_path, "w", encoding="utf-8") as f:
        # Header
        f.write("% ==========================================================\n")
        f.write("% ILASP Input: goesIn(Object, Location) rule learning\n")
        f.write("% Context-dependent examples (each carries its own BK)\n")
        f.write("% Generated from ConceptNet + SOMA background knowledge\n")
        f.write("% ==========================================================\n\n")
        f.write("#maxv(1).\n\n")

        # Constants
        for loc in ALL_CANONICAL_LOCATIONS:
            f.write(f"#constant(location, {loc}).\n")
        f.write("\n")
        for r in sorted(all_roles):
            f.write(f"#constant(role, {r}).\n")
        f.write("\n")
        for t in sorted(all_tasks):
            f.write(f"#constant(task, {t}).\n")
        f.write("\n")

        # Mode declarations
        f.write("#modeh(goesIn(var(obj), const(location))).\n")
        f.write(f"#modeb({ml}, hasRole(var(obj), const(role))).\n")
        f.write(f"#modeb({ml}, affordsTask(var(obj), const(task))).\n\n")

        # Positive examples
        f.write("% --- Positive examples (weight 100) ---\n")
        for obj_id, loc in selected_pos:
            if obj_id not in kb_objects:
                continue
            ex_idx += 1
            ctx = format_obj_context(obj_id, kb_objects[obj_id])
            atom = f"goesIn({obj_id}, {loc})"
            f.write(f"#pos(e{ex_idx}@100, {{{atom}}}, {{}}, {{\n")
            f.write(f"  {ctx}\n")
            f.write(f"}}).\n")
            n_pos += 1

        # Negative examples (closed-world sampling)
        f.write("\n% --- Negative examples (weight 10) ---\n")
        seen_objs = set()
        for obj_id, loc in selected_pos:
            if obj_id in seen_objs or obj_id not in kb_objects:
                continue
            seen_objs.add(obj_id)
            ctx = format_obj_context(obj_id, kb_objects[obj_id])
            pos_locs = obj_locations.get(obj_id, set())
            neg_cands = [
                l for l in ALL_CANONICAL_LOCATIONS if l not in pos_locs
            ]
            n_sample = min(neg_per_obj, len(neg_cands))
            for nl in sorted(random.sample(neg_cands, n_sample)):
                ex_idx += 1
                atom = f"goesIn({obj_id}, {nl})"
                f.write(f"#pos(e{ex_idx}@10, {{}}, {{{atom}}}, {{\n")
                f.write(f"  {ctx}\n")
                f.write(f"}}).\n")
                n_neg += 1

    return n_pos, n_neg


# -- Main -------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description="Generate ILASP input for goesIn rule learning"
    )
    parser.add_argument(
        "--max-per-loc", type=int, default=5,
        help="Max positive examples per location (default: 5)"
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
        help="Use minimal dataset (core locations, max 2 examples, 1 negative) for fast testing"
    )
    args = parser.parse_args()

    output_path = Path(args.output) if args.output else DEFAULT_OUTPUT

    global ALL_CANONICAL_LOCATIONS
    if args.mvp:
        args.max_per_loc = min(args.max_per_loc, 2)
        args.neg_per_obj = min(args.neg_per_obj, 1)
        ALL_CANONICAL_LOCATIONS = MVP_LOCATIONS
        print("\n*** RUNNING IN MVP MODE (Minimal subset for fast testing) ***")

    print("=" * 60)
    print("ILASP Example Generator -- goesIn(Object, Location)")
    print("=" * 60)

    print("\n[1/4] Loading background knowledge...")
    kb_objects = load_background_knowledge()
    print(f"      {len(kb_objects)} objects loaded")

    print("[2/4] Loading ConceptNet subgraph...")
    with open(SUBGRAPH_FILE, encoding="utf-8") as f:
        subgraph = json.load(f)
    print(f"      {len(subgraph['tidy_up_hierarchy'])} rooms loaded")

    print("[3/4] Extracting location pairs...")
    obj_locations = extract_location_pairs(subgraph, set(kb_objects.keys()))
    total_pairs = sum(len(locs) for locs in obj_locations.values())
    print(f"      {len(obj_locations)} objects with locations")
    print(f"      {total_pairs} (object, location) pairs")
    print(f"      {len(ALL_CANONICAL_LOCATIONS)} canonical locations")

    # Select examples
    if args.full:
        print("      Mode: FULL (all examples, no sampling)")
        selected = []
        for obj_id, locs in sorted(obj_locations.items()):
            for loc in sorted(locs):
                selected.append((obj_id, loc))
    else:
        print(f"      Mode: STRATIFIED (max {args.max_per_loc} per location)")
        selected = stratified_sample(
            obj_locations, kb_objects, args.max_per_loc
        )

    print("[4/4] Generating ILASP file...")
    n_pos, n_neg = generate_ilasp_file(
        kb_objects, obj_locations, selected, args.neg_per_obj, args.ml, output_path
    )
    size_kb = output_path.stat().st_size / 1024
    print(f"      {n_pos} positive examples (weight 100)")
    print(f"      {n_neg} negative examples (weight 10)")
    print(f"      {n_pos + n_neg} total examples")
    if n_pos > 0:
        print(f"      Ratio: {n_neg / n_pos:.1f} negatives per positive")
    print(f"      File: {output_path}")
    print(f"      Size: {size_kb:.1f} KB")

    # Summary by location
    print(f"\n{'-' * 60}")
    print("POSITIVE EXAMPLES PER LOCATION:")
    loc_counts = Counter(loc for _, loc in selected)
    for loc, count in loc_counts.most_common():
        print(f"  {loc}: {count}")


if __name__ == "__main__":
    main()
