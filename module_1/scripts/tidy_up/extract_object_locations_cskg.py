"""
extract_object_locations_cskg.py — Build household object-location KB from CSKG
================================================================================
Architecture (mirrors extract_tool_affordances_cskg.py):

  Phase 1 — DISCOVERY:
    BFS from household room seeds via /r/AtLocation (reversed: room → objects).
    Collect all objects CSKG places in household rooms.

  Phase 2 — LOCATION EXTRACTION (per discovered object):
    For each discovered object, query /r/AtLocation to find ALL rooms it maps to.
    Filter to household-relevant rooms using a canonical room vocabulary.
    Trust is weighted: direct CN entries > inherited entries.

  Phase 3 — INHERITANCE (for sparse objects):
    For objects with < MIN_DIRECT locations, perform one-hop IsA lookup and
    inherit locations from the parent concept (CN sources only).

  Phase 4 — BENCHMARK FALLBACK:
    For benchmark objects not reached by BFS, attempt direct name lookup
    so evaluate.py always has an entry to query.

Output:
  module_1/jsons/object_locations_cskg.json
  {
    "ladle": {
      "locations": ["kitchen", "drawer"],
      "sources": {"kitchen": ["cskg:cn"], "drawer": ["cskg:cn"]},
      "inherited_from": [],
      "discovered_via_rooms": ["kitchen"]
    },
    ...
  }

Usage:
    python extract_object_locations_cskg.py [--rebuild]
================================================================================
"""

import argparse
import json
import sys
from collections import defaultdict
from pathlib import Path

import duckdb

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR   = Path(__file__).parent
SCRIPTS_ROOT = SCRIPT_DIR.parent
MODULE_DIR   = SCRIPTS_ROOT.parent

PARQUET_PATH = MODULE_DIR / "CSKG" / "cskg_tool_relations.parquet"
OUTPUT_JSON  = MODULE_DIR / "jsons" / "object_locations_cskg.json"

# Trigger IsA inheritance when direct location count is below this
MIN_DIRECT = 1

# ---------------------------------------------------------------------------
# Household seed rooms — same as tool_usage extractor
# ---------------------------------------------------------------------------
SEED_ROOMS = [
    "kitchen", "dining room", "living room", "family room",
    "sitting room", "front room", "den", "conservatory", "library",
    "bedroom", "nursery", "dressing room",
    "bathroom", "washroom",
    "home office", "study", "music room", "playroom", "game room",
    "laundry room", "utility room", "pantry", "storage room",
    "storeroom", "closet",
    "hallway", "foyer", "entryway", "lobby",
    "garage", "basement", "attic", "cellar", "wine cellar", "workshop",
    "balcony", "porch", "terrace", "garden", "greenhouse",
    "tool shed", "shed",
]

# Canonical room vocabulary — normalise location strings to these labels.
# Any CSKG location not in this set is filtered out as non-household.
CANONICAL_ROOMS = {
    # Core household rooms
    "kitchen", "dining room", "living room", "bedroom", "bathroom",
    "hallway", "garage", "basement", "attic", "cellar",
    # Secondary rooms
    "closet", "pantry", "laundry room", "utility room", "storage room",
    "storeroom", "home office", "study", "library", "playroom",
    "nursery", "dressing room", "game room", "music room",
    "family room", "sitting room", "den", "conservatory",
    "workshop", "tool shed", "shed", "greenhouse", "garden",
    "porch", "balcony", "terrace", "foyer", "entryway", "lobby",
    # Furniture / containers that serve as locations in the benchmark
    "drawer", "shelf", "cabinet", "cupboard", "wardrobe", "dresser",
    "refrigerator", "freezer", "oven", "dishwasher",
    "desk", "table", "counter", "countertop", "floor", "wall",
    "bed", "sofa", "couch", "chair",
    "box", "bin", "rack", "hook",
}

# Extended synonym map: CSKG location phrases → canonical room label
ROOM_SYNONYM_MAP: dict[str, str] = {
    # Rooms
    "living room": "living room", "lounge": "living room",
    "front room": "living room", "sitting room": "living room",
    "family room": "living room", "reception room": "living room",
    "dining room": "dining room", "dining area": "dining room",
    "kitchen": "kitchen", "kitchenette": "kitchen",
    "bedroom": "bedroom", "master bedroom": "bedroom",
    "child's room": "bedroom", "children's room": "bedroom",
    "guest room": "bedroom", "spare room": "bedroom",
    "bathroom": "bathroom", "washroom": "bathroom", "restroom": "bathroom",
    "toilet": "bathroom", "lavatory": "bathroom", "powder room": "bathroom",
    "half bath": "bathroom", "full bath": "bathroom",
    "hallway": "hallway", "corridor": "hallway", "passage": "hallway",
    "hall": "hallway",
    "garage": "garage", "car garage": "garage",
    "basement": "basement", "cellar": "cellar",
    "attic": "attic", "loft": "attic",
    "pantry": "pantry", "larder": "pantry", "food pantry": "pantry",
    "laundry room": "laundry room", "laundry": "laundry room",
    "utility room": "utility room", "utility": "utility room",
    "closet": "closet", "wardrobe": "wardrobe", "cupboard": "cupboard",
    "storage room": "storage room", "storeroom": "storage room",
    "store room": "storage room",
    "home office": "home office", "office": "home office",
    "study": "study", "study room": "study",
    "library": "library", "bookroom": "library",
    "workshop": "workshop", "tool shed": "tool shed", "shed": "shed",
    "playroom": "playroom", "play room": "playroom",
    "nursery": "nursery", "baby room": "nursery",
    "game room": "game room", "games room": "game room",
    "garden": "garden", "yard": "garden", "backyard": "garden",
    "greenhouse": "greenhouse", "conservatory": "conservatory",
    "porch": "porch", "balcony": "balcony", "terrace": "terrace",
    "foyer": "foyer", "entryway": "foyer", "lobby": "lobby",
    # Furniture / containers
    "drawer": "drawer", "dresser drawer": "drawer",
    "shelf": "shelf", "shelving": "shelf", "shelves": "shelf",
    "cabinet": "cabinet", "kitchen cabinet": "cabinet",
    "refrigerator": "refrigerator", "fridge": "refrigerator",
    "freezer": "freezer",
    "oven": "oven", "stove": "kitchen",
    "dishwasher": "dishwasher",
    "desk": "desk", "table": "table",
    "counter": "counter", "countertop": "counter", "kitchen counter": "counter",
    "bed": "bed",
    "box": "box", "bin": "bin",
}


def normalise_room(phrase: str) -> str | None:
    """Map a CSKG location phrase to a canonical room label, or None."""
    p = phrase.lower().strip()
    if p in CANONICAL_ROOMS:
        return p
    if p in ROOM_SYNONYM_MAP:
        return ROOM_SYNONYM_MAP[p]
    return None


def _src_tag(raw_source: str, inherited: bool = False) -> str:
    base = raw_source.lower().split("|")[0]
    return f"cskg:{base}:inherited" if inherited else f"cskg:{base}"


# ---------------------------------------------------------------------------
# DuckDB query helpers
# ---------------------------------------------------------------------------

def _query_atlocation_reverse(con: duckdb.DuckDBPyConnection, room: str) -> list[str]:
    """Return objects CSKG places AtLocation a given room (node2=room → node1=object)."""
    rows = con.execute(
        """
        SELECT DISTINCT node1 FROM read_parquet(?)
        WHERE relation = '/r/AtLocation'
          AND source = 'CN'
          AND lower(node2) = lower(?)
        """,
        [str(PARQUET_PATH), room],
    ).fetchall()
    return [r[0] for r in rows]


def _query_atlocation_forward(
    con: duckdb.DuckDBPyConnection, obj: str
) -> list[tuple[str, str]]:
    """Return (location, source) pairs for an object (node1=object → node2=location)."""
    rows = con.execute(
        """
        SELECT DISTINCT node2, source FROM read_parquet(?)
        WHERE relation = '/r/AtLocation'
          AND source IN ('CN', 'CN|WN', 'CN|RG')
          AND lower(node1) = lower(?)
        """,
        [str(PARQUET_PATH), obj],
    ).fetchall()
    return rows


def _query_isa_parents(
    con: duckdb.DuckDBPyConnection, obj: str
) -> list[str]:
    """Return IsA parents for an object (CN sources only, no WD)."""
    rows = con.execute(
        """
        SELECT DISTINCT node2 FROM read_parquet(?)
        WHERE relation = '/r/IsA'
          AND source IN ('CN', 'CN|WN', 'CN|RG')
          AND lower(node1) = lower(?)
        """,
        [str(PARQUET_PATH), obj],
    ).fetchall()
    return [r[0] for r in rows]


# ---------------------------------------------------------------------------
# Per-object location extraction
# ---------------------------------------------------------------------------

# Generic parent concepts that are too broad to inherit locations from
BLOCKLIST_PARENTS = {
    "object", "thing", "item", "entity", "concept", "artifact",
    "physical object", "physical entity", "matter", "substance",
    "product", "article", "unit", "piece",
}
MAX_PARENT_LOCATIONS = 3  # skip parents with more distinct canonical rooms


def get_locations_for_obj(
    con: duckdb.DuckDBPyConnection,
    obj: str,
    discovered_via_rooms: list[str],
) -> dict:
    """
    Extract canonical locations for an object.
    Returns a dict with keys: locations, sources, inherited_from.
    """
    canonical: dict[str, list[str]] = defaultdict(list)  # room → [tags]
    inherited_from: list[str] = []

    def _record(phrase: str, tag: str) -> None:
        room = normalise_room(phrase)
        if room:
            canonical[room].append(tag)

    # L0 — direct AtLocation lookup
    direct_pairs = _query_atlocation_forward(con, obj)
    for phrase, src in direct_pairs:
        _record(phrase, _src_tag(src))

    # L0b — word-level fallback (e.g. "bread knife" → "knife")
    if len(canonical) < MIN_DIRECT and " " in obj:
        for word in obj.split():
            if len(word) > 3:
                for phrase, src in _query_atlocation_forward(con, word):
                    _record(phrase, _src_tag(src))

    # L1 — IsA inheritance for sparse objects
    if len(canonical) < MIN_DIRECT:
        parents = _query_isa_parents(con, obj)
        if not parents and " " in obj:
            parents = _query_isa_parents(con, obj.split()[-1])
        for parent in parents:
            if parent.lower() in BLOCKLIST_PARENTS:
                continue
            parent_pairs = _query_atlocation_forward(con, parent)
            parent_canonical = {normalise_room(p) for p, _ in parent_pairs} - {None}
            if len(parent_canonical) > MAX_PARENT_LOCATIONS:
                continue  # too generic
            if parent_pairs:
                inherited_from.append(parent)
                for phrase, src in parent_pairs:
                    _record(phrase, _src_tag(src, inherited=True))

    return {
        "locations": sorted(canonical.keys()),
        "sources": {room: tags for room, tags in canonical.items()},
        "inherited_from": inherited_from,
        "discovered_via_rooms": discovered_via_rooms,
    }


# ---------------------------------------------------------------------------
# BFS discovery
# ---------------------------------------------------------------------------

def discover_household_objects(con: duckdb.DuckDBPyConnection) -> dict[str, list[str]]:
    """
    BFS from SEED_ROOMS via AtLocation (reversed) to discover objects
    placed in household rooms by CSKG.

    Returns {object: [rooms_it_was_discovered_via]}.
    """
    print("Phase 1: Discovering household objects via BFS from seed rooms ...")
    obj_to_rooms: dict[str, list[str]] = defaultdict(list)

    for room in SEED_ROOMS:
        objects = _query_atlocation_reverse(con, room)
        for obj in objects:
            if room not in obj_to_rooms[obj]:
                obj_to_rooms[obj].append(room)

    print(f"  Discovered {len(obj_to_rooms)} distinct objects across {len(SEED_ROOMS)} seed rooms")
    return dict(obj_to_rooms)


# ---------------------------------------------------------------------------
# Main KB builder
# ---------------------------------------------------------------------------

def build_kb(rebuild: bool = False) -> dict:
    if OUTPUT_JSON.exists() and not rebuild:
        print(f"Loading existing KB from {OUTPUT_JSON}")
        with open(OUTPUT_JSON) as f:
            return json.load(f)

    if not PARQUET_PATH.exists():
        sys.exit(
            f"ERROR: CSKG Parquet not found at {PARQUET_PATH}.\n"
            "Run extract_tool_affordances_cskg.py --rebuild first to build it."
        )

    con = duckdb.connect()
    kb: dict = {}

    # Phase 1 — discovery
    obj_to_discovery_rooms = discover_household_objects(con)

    # Phase 2 — location extraction per discovered object
    print(f"Phase 2: Extracting locations for {len(obj_to_discovery_rooms)} objects ...")
    for obj, discovery_rooms in obj_to_discovery_rooms.items():
        kb[obj] = get_locations_for_obj(con, obj, discovery_rooms)

    OUTPUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    with open(OUTPUT_JSON, "w") as f:
        json.dump(kb, f, indent=2)
    print(f"KB saved to {OUTPUT_JSON}  ({len(kb)} objects)")
    return kb


# ---------------------------------------------------------------------------
# Validation
# ---------------------------------------------------------------------------

def validate_kb(kb: dict) -> None:
    total = len(kb)
    with_locs = sum(1 for v in kb.values() if v["locations"])
    inherited = sum(1 for v in kb.values() if v["inherited_from"])
    via_bfs   = sum(1 for v in kb.values() if v["discovered_via_rooms"])

    print("\n=== KB Validation ===")
    print(f"Total objects       : {total}")
    print(f"With locations      : {with_locs}  ({with_locs/total*100:.1f}%)")
    print(f"Via BFS discovery   : {via_bfs}")
    print(f"Inherited locations : {inherited}")

    # Room distribution
    from collections import Counter
    room_counts: Counter = Counter()
    for entry in kb.values():
        for room in entry["locations"]:
            room_counts[room] += 1
    print("\nTop 15 rooms by object count:")
    for room, cnt in room_counts.most_common(15):
        print(f"  {room:25s}: {cnt}")




# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Build household object-location KB from CSKG"
    )
    parser.add_argument(
        "--rebuild", action="store_true",
        help="Force rebuild even if output JSON already exists"
    )
    args = parser.parse_args()

    kb = build_kb(rebuild=args.rebuild)
    validate_kb(kb)
