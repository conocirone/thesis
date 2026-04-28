"""
extract_tool_affordances_cskg.py - Build household tool KB from CSKG via graph traversal
==========================================================================================
Architecture (mirrors module_1/scripts/shared/concept_net_extractor.py):

  Phase 1 — DISCOVERY (generalizable, domain-driven):
    BFS from household room seeds via /r/AtLocation in CSKG. We start from the household domain
    and discover whatever CSKG knows belongs there. The result is a KB that
    generalizes to real household scenarios — any object CSKG locates in a
    household space is automatically included.

  Phase 2 — AFFORDANCE EXTRACTION (per discovered object):
    Query /r/UsedFor and /r/CapableOf (CN + VG sources).
    Normalise raw phrases to the canonical affordance vocabulary via
    SYNONYM_MAP and first-verb extraction.

  Phase 3 — INHERITANCE (for sparse objects):
    For objects with < MIN_DIRECT canonical affordances, perform one-hop
    IsA lookup (CN sources only — WD excluded as too noisy) and inherit
    affordances from the parent concept.


Sources used:
  CN  (ConceptNet)   — AtLocation, UsedFor, CapableOf, IsA  → primary signal
  VG  (Visual Genome) — CapableOf only (mw:MayHaveProperty excluded: noise)
  CN|WN, CN|RG        — included for IsA (WordNet hierarchy helps obscure tools)

Sources excluded:
  ATOMIC (AT)   — agent-event sequences, zero tool-object entries
  FrameNet (FN) — not populated for household tools
  Wikidata (WD) — IsA too noisy (hammer→pistol-part, drill→cotton fabric)

Output:
  module_1/jsons/tool_affordances_cskg.json
  {
    "hammer": {
      "canonical": ["hammer", "break", "fix"],
      "sources": {"hammer": ["cskg:cn"], "break": ["cskg:cn"], "fix": ["cskg:cn"]},
      "inherited_from": [],
      "lookup_key": "hammer",
      "discovered_via_rooms": ["garage", "workshop"]
    },
    ...
  }

Usage:
    python extract_tool_affordances_cskg.py [--rebuild]
==========================================================================================
"""

import argparse
import json
import re
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

CSKG_TSV     = MODULE_DIR / "CSKG" / "cskg.tsv"
PARQUET_PATH = MODULE_DIR / "CSKG" / "cskg_tool_relations.parquet"
OUTPUT_JSON  = MODULE_DIR / "jsons" / "tool_affordances_cskg.json"

# Trigger IsA inheritance when direct canonical count is below this
MIN_DIRECT = 1

# ---------------------------------------------------------------------------
# Household seed rooms (mirrors concept_net_extractor.py)
# ---------------------------------------------------------------------------
SEED_ROOMS = [
    # Living areas
    "kitchen", "dining room", "living room", "family room",
    "sitting room", "front room", "den", "conservatory", "library",
    # Bedrooms
    "bedroom", "nursery", "dressing room",
    # Bathrooms
    "bathroom", "washroom",
    # Work / study / hobby
    "home office", "study", "music room", "playroom", "game room",
    "darkroom", "workroom",
    # Utility rooms
    "laundry room", "utility room", "pantry", "storage room",
    "storeroom", "closet",
    # Transition / access
    "hallway", "foyer", "entryway", "lobby",
    # Garage / basement / workshop
    "garage", "basement", "attic", "cellar", "wine cellar", "workshop",
    # Connected outdoor spaces
    "balcony", "porch", "terrace", "garden", "greenhouse",
    # Tool-specific spaces (extend beyond CN extractor)
    "tool shed", "shed", "woodworking shop", "metalworking shop",
]

# ---------------------------------------------------------------------------
# Canonical affordance vocabulary
# ---------------------------------------------------------------------------
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

# Extended synonym/phrase → canonical map
SYNONYM_MAP: dict[str, str] = {
    # Identity entries
    "absorb": "absorb", "be heated": "be heated", "beautify": "beautify",
    "bend": "bend", "bore": "bore", "break": "break", "carry": "carry",
    "carve": "carve", "change": "change", "chop": "chop", "clean": "clean",
    "cleaning": "clean", "comfort": "comfort", "compress": "compress",
    "compres": "compress", "contain": "contain", "containment": "contain",
    "control": "control", "cool": "cool", "cover": "cover", "crack": "crack",
    "crumble": "crumble", "crunch": "crunch", "cube": "cube", "cut": "cut",
    "cutting": "cut", "cancut": "cut", "decorate": "decorate", "dice": "dice",
    "dig": "dig", "display": "display", "dispose": "dispose", "drill": "drill",
    "dry": "dry", "eat": "eat", "engrave": "engrave", "entertain": "entertain",
    "exercise": "exercise", "file": "file", "fix": "fix", "flex": "flex",
    "grasp": "grasp", "grind": "grind", "hammer": "hammer", "handle": "handle",
    "heat": "heat", "hold": "hold", "illuminate": "illuminate",
    "increase": "increase", "install": "install", "lift": "lift", "mark": "mark",
    "melt": "melt", "mix": "mix", "operate": "operate", "peel": "peel",
    "pick": "pick", "pierce": "pierce", "plow": "plow", "plug": "plug",
    "poke": "poke", "polish": "polish", "pour": "pour", "press": "press",
    "read": "read", "repair": "repair", "roll": "roll", "rub": "rub",
    "saw": "saw", "scoop": "scoop", "screw": "screw", "separate": "separate",
    "shape": "shape", "skin": "skin", "slit": "slit", "smooth": "smoothen",
    "smoothen": "smoothen", "solder": "solder", "spread": "spread",
    "staple": "staple", "stick": "stick", "store": "store", "strip": "strip",
    "support": "support", "tamp": "tamp", "time": "time", "unclog": "unclog",
    "wash": "wash", "wipe": "wipe", "wrap": "wrap", "wrench": "wrench",
    "write": "write",
    # General synonyms
    "slice": "cut", "chop up": "chop", "hack": "chop", "dig up": "dig",
    "scrub": "clean", "sweep": "clean", "dust": "clean",
    "light": "illuminate", "lighten": "illuminate", "shine": "illuminate",
    "pound": "hammer", "drive": "hammer",
    "screw in": "screw",
    "tighten": "wrench", "loosen": "wrench", "turn": "wrench",
    "bore hole": "bore", "drill hole": "drill",
    "punch hole": "pierce", "stab": "pierce", "prick": "pierce",
    "heat up": "heat", "warm": "heat", "boil": "heat",
    "cool down": "cool", "chill": "cool", "freeze": "cool",
    "grind up": "grind", "sand": "smoothen", "smooth out": "smoothen",
    "polish up": "polish",
    "spread out": "spread", "butter": "spread", "apply": "spread",
    "flatten": "press", "stamp": "press",
    "staple together": "staple", "attach": "staple", "fasten": "staple",
    "tie": "wrap", "bind": "wrap",
    "cover up": "cover", "protect": "cover",
    "hold water": "hold", "hold things": "hold",
    "carry water": "carry", "transport": "carry",
    "remove": "dispose", "throw away": "dispose", "dispose of": "dispose",
    "read from": "read",
    "show time": "time", "measure time": "time", "keep time": "time",
    "exercise with": "exercise",
    "play with": "entertain", "entertainment": "entertain", "fun": "entertain",
    "comfort person": "comfort", "sit": "comfort", "rest": "comfort",
    "display item": "display", "show": "display",
    "store item": "store", "store food": "store", "keep": "store",
    "mix together": "mix", "stir": "mix", "blend": "mix",
    "squeeze": "compress", "compress material": "compress",
    # CSKG-specific multi-word phrases observed in probing
    "drive in nails": "hammer", "hit nail": "hammer", "nail board": "hammer",
    "strike nail": "hammer", "nail nails": "hammer", "drive nail": "hammer",
    "force nail into board": "hammer", "bang on": "hammer",
    "nail wood": "hammer",
    "turn screw": "screw", "insert screw": "screw", "inserting screw": "screw",
    "inserting screws": "screw", "putting in screws": "screw",
    "pulling out screws": "screw", "screwing screws": "screw",
    "unscrewing screws": "screw", "installing or removing screws": "screw",
    "fixing loose screws": "fix", "tighten loose screw": "wrench",
    "tighten loose screws": "wrench", "tighten screw": "wrench",
    "open can of paint": "poke", "pry": "fix",
    "break glass": "break", "break object": "break", "break things": "break",
    "break fragile objects": "break", "break wall": "break",
    "break window": "break", "breaking glass": "break",
    "break small metal fasteners": "break", "breaking things": "break",
    "break open": "break",
    "clean dishes": "clean", "collect water": "absorb",
    "wet surface": "wash",
    "cut paper": "cut", "cut hair": "cut", "cut leather": "cut",
    "cut cardboard": "cut", "cut string": "cut", "cut textiles": "cut",
    "cut ribbon": "cut", "cut ribbons": "cut", "part paper": "cut",
    "tear cloth": "cut", "tear paper": "cut", "cut paper or cloth": "cut",
    "cut sisters pigtail off": "cut", "cut paper snowflakes": "cut",
    "home repair": "fix", "building": "fix", "construction work": "fix",
    "building things": "fix", "putting things together": "fix",
    "rough carpenter": "fix",
    "strike with great force": "hammer",
    "break become blunt": "break",
    "open tin of paint": "poke",
    "stir paint": "mix",
    "sewing": "fix",
}


# ---------------------------------------------------------------------------
# Normalisation helpers
# ---------------------------------------------------------------------------

def _extract_first_verb(phrase: str) -> str:
    words = phrase.strip().lower().split()
    return words[0] if words else ""


def normalise_to_canonical(phrase: str) -> str | None:
    """Map a raw CSKG phrase to a canonical affordance label, or None."""
    p = phrase.lower().strip()
    # 1. Direct match in vocabulary
    if p in CANONICAL_AFFORDANCES:
        return p
    # 2. Synonym/phrase map
    if p in SYNONYM_MAP:
        m = SYNONYM_MAP[p]
        return m if m != "None" else None
    # 3. First-verb extraction ("cut cardboard" → "cut")
    first = _extract_first_verb(p)
    if first in CANONICAL_AFFORDANCES:
        return first
    if first in SYNONYM_MAP:
        m = SYNONYM_MAP[first]
        return m if m != "None" else None
    return None


def _src_tag(raw_source: str, inherited: bool = False) -> str:
    """Normalise CSKG source string to a compact tag."""
    base = raw_source.lower().split("|")[0]   # "cn|wn" → "cn"
    return f"cskg:{base}:inherited" if inherited else f"cskg:{base}"


# ---------------------------------------------------------------------------
# Parquet cache
# ---------------------------------------------------------------------------

def build_parquet_cache(con: duckdb.DuckDBPyConnection) -> None:
    """Build a filtered Parquet from the full CSKG TSV (one-time operation).
    Includes AtLocation for BFS discovery, plus UsedFor/CapableOf/IsA for
    affordance extraction and inheritance.
    """
    if PARQUET_PATH.exists():
        size = PARQUET_PATH.stat().st_size / 1e6
        print(f"Parquet cache found: {PARQUET_PATH} ({size:.1f} MB)")
        return

    if not CSKG_TSV.exists():
        sys.exit(f"ERROR: CSKG TSV not found at {CSKG_TSV}")

    print(f"Building Parquet cache from {CSKG_TSV} (one-time, ~30 s) ...")
    PARQUET_PATH.parent.mkdir(parents=True, exist_ok=True)

    con.execute(f"""
        COPY (
            SELECT
                "node1;label"  AS node1,
                relation,
                "node2;label"  AS node2,
                source
            FROM read_csv('{CSKG_TSV}', delim='\t', header=True, ignore_errors=True)
            WHERE relation IN ('/r/AtLocation', '/r/UsedFor', '/r/CapableOf', '/r/IsA')
              AND source IN ('CN', 'VG', 'CN|WN', 'CN|RG')
              AND "node1;label" IS NOT NULL
              AND "node2;label" IS NOT NULL
              AND "node1;label" != ''
              AND "node2;label" != ''
        ) TO '{PARQUET_PATH}' (FORMAT PARQUET, COMPRESSION 'zstd')
    """)
    size = PARQUET_PATH.stat().st_size / 1e6
    print(f"  Saved: {PARQUET_PATH} ({size:.1f} MB)")


# ---------------------------------------------------------------------------
# Phase 1 — BFS discovery via AtLocation
# ---------------------------------------------------------------------------

def _clean_label(raw: str) -> str:
    """Normalise a CSKG label to lowercase, stripped, article-free."""
    raw = raw.lower().strip()
    raw = re.sub(r"^(a |an |the )", "", raw).strip()
    return raw


def discover_household_objects(con: duckdb.DuckDBPyConnection) -> dict[str, list[str]]:
    """
    Two-hop BFS from SEED_ROOMS via /r/AtLocation.

    Returns:
        obj_to_rooms: {object_name: [room1, room2, ...]}
        Objects reachable directly from a room are included.
        Objects reachable via a container (hop 2) are also included.
    """
    pq = str(PARQUET_PATH)

    # Hop 1: X AtLocation room  →  X is a household object
    hop1 = con.execute("""
        SELECT DISTINCT node1, node2 AS room
        FROM read_parquet(?)
        WHERE relation = '/r/AtLocation'
          AND node2 = ANY(?)
          AND node1 IS NOT NULL AND node1 != ''
    """, [pq, SEED_ROOMS]).fetchall()

    obj_to_rooms: dict[str, list[str]] = defaultdict(list)
    hop1_objects: set[str] = set()
    for obj, room in hop1:
        obj = _clean_label(obj)
        room = _clean_label(room)
        if obj and room:
            obj_to_rooms[obj].append(room)
            hop1_objects.add(obj)

    # Hop 2: Y AtLocation X (container)  →  Y is also household
    if hop1_objects:
        hop2 = con.execute("""
            SELECT DISTINCT node1, node2 AS container
            FROM read_parquet(?)
            WHERE relation = '/r/AtLocation'
              AND node2 = ANY(?)
              AND node1 IS NOT NULL AND node1 != ''
        """, [pq, list(hop1_objects)]).fetchall()
        for obj, container in hop2:
            obj = _clean_label(obj)
            container = _clean_label(container)
            if obj and container:
                # Inherit the rooms the container belongs to
                for room in obj_to_rooms.get(container, [container]):
                    if room not in obj_to_rooms[obj]:
                        obj_to_rooms[obj].append(room)

    print(f"  Discovered {len(obj_to_rooms)} household objects via AtLocation BFS")
    return dict(obj_to_rooms)


# ---------------------------------------------------------------------------
# Phase 2 & 3 — Affordance extraction + IsA inheritance (per object)
# ---------------------------------------------------------------------------

def _query_direct(con: duckdb.DuckDBPyConnection, name: str) -> list[tuple[str, str]]:
    """(phrase, source) pairs for UsedFor/CapableOf directly on name."""
    rows = con.execute(
        """
        SELECT node2, source FROM read_parquet(?)
        WHERE node1 = ?
          AND relation IN ('/r/UsedFor', '/r/CapableOf')
        """,
        [str(PARQUET_PATH), name],
    ).fetchall()
    return [(r[0], r[1]) for r in rows if r[0]]


def _query_isa_parents(con: duckdb.DuckDBPyConnection, name: str) -> list[str]:
    """IsA parent labels (CN sources only — WD excluded as noisy)."""
    rows = con.execute(
        """
        SELECT DISTINCT node2 FROM read_parquet(?)
        WHERE node1 = ?
          AND relation = '/r/IsA'
          AND source IN ('CN', 'CN|WN', 'CN|RG')
        """,
        [str(PARQUET_PATH), name],
    ).fetchall()
    return [r[0] for r in rows if r[0]]


def get_affordances_for_obj(
    con: duckdb.DuckDBPyConnection,
    obj: str,
    discovered_via_rooms: list[str],
) -> dict:
    """
    Extract canonical affordances for a single object.

    Pipeline:
      L0  — direct query on exact name
      L0b — word fallback for compound names (last word, then others)
      L1  — IsA inheritance (1 hop, CN only) when direct yield < MIN_DIRECT
    """
    canonical: list[str] = []
    sources: dict[str, list[str]] = {}
    seen: set[str] = set()
    direct_raw: list[str] = []
    inherited_from: list[str] = []
    lookup_key = obj

    def _record(phrase: str, tag: str) -> None:
        c = normalise_to_canonical(phrase)
        if not c:
            return
        if c not in seen:
            canonical.append(c)
            seen.add(c)
            sources[c] = [tag]
        elif tag not in sources[c]:
            sources[c].append(tag)

    # L0 — exact name
    pairs = _query_direct(con, obj)
    for phrase, src in pairs:
        direct_raw.append(phrase)
        _record(phrase, _src_tag(src))

    # L0b — word fallback for compound names
    if not pairs and " " in obj:
        candidates = [obj.split()[-1]] + [w for w in obj.split()[:-1] if len(w) > 3]
        for word in candidates:
            word_pairs = _query_direct(con, word)
            if word_pairs:
                lookup_key = word
                for phrase, src in word_pairs:
                    direct_raw.append(phrase)
                    _record(phrase, _src_tag(src))
                break

    # L1 — IsA inheritance when direct yield is sparse
    # Skip parents that are too generic to avoid noise from over-broad concepts.
    # Two-stage filter:
    #   (a) explicit blocklist of known over-broad concepts
    #   (b) cardinality cap: skip if parent yields > MAX_PARENT_AFFORDANCES distinct canonicals
    MAX_PARENT_AFFORDANCES = 2
    BLOCKLIST_PARENTS = {
        "tool", "object", "thing", "item", "device", "hardware", "machine",
        "equipment", "implement", "instrument", "apparatus", "appliance",
        "vehicle", "surface", "material", "substance", "product", "artifact",
        "food", "name", "entity", "concept", "category", "type", "kind",
        "rigid portable object", "shaped thing", "hardware tool",
        "user powered device", "industrial equipment",
    }
    if len(canonical) < MIN_DIRECT:
        parents = _query_isa_parents(con, obj)
        if not parents and " " in obj:
            parents = _query_isa_parents(con, obj.split()[-1])
        for parent in parents:
            if parent.lower() in BLOCKLIST_PARENTS:
                continue  # explicitly too generic
            parent_pairs = _query_direct(con, parent)
            parent_canonical = {normalise_to_canonical(p) for p, _ in parent_pairs} - {None}
            if len(parent_canonical) > MAX_PARENT_AFFORDANCES:
                continue  # too many affordances — too generic
            if parent_pairs:
                inherited_from.append(parent)
                for phrase, src in parent_pairs:
                    direct_raw.append(f"[via {parent}] {phrase}")
                    _record(phrase, _src_tag(src, inherited=True))

    return {
        "canonical": canonical,
        "sources": sources,
        "inherited_from": inherited_from,
        "lookup_key": lookup_key,
        "discovered_via_rooms": discovered_via_rooms,
        "direct_raw": direct_raw,
    }


# ---------------------------------------------------------------------------
# Full pipeline
# ---------------------------------------------------------------------------

def build_kb(rebuild: bool = False) -> dict:
    """
    Build the household tool KB using graph traversal from room seeds.

    Phase 1 — Discover all household objects via AtLocation BFS.
    Phase 2 — Extract affordances for every discovered object.
    Phase 3 — Benchmark fallback: add any benchmark objects not reached by
               graph traversal (very obscure tools absent from CSKG AtLocation),
               using direct lookup + IsA. These get discovered_via_rooms=[].
    """
    if OUTPUT_JSON.exists() and not rebuild:
        print(f"Loading existing CSKG KB from {OUTPUT_JSON}")
        with open(OUTPUT_JSON, encoding="utf-8") as f:
            return json.load(f)

    con = duckdb.connect()
    build_parquet_cache(con)

    # --- Phase 1: Discovery ---
    print("\nPhase 1 — Discovering household objects via AtLocation BFS ...")
    obj_to_rooms = discover_household_objects(con)

    # --- Phase 2: Affordance extraction for discovered objects ---
    print(f"\nPhase 2 — Extracting affordances for {len(obj_to_rooms)} discovered objects ...")
    kb: dict = {}
    found = 0
    for i, (obj, rooms) in enumerate(obj_to_rooms.items()):
        result = get_affordances_for_obj(con, obj, rooms)
        kb[obj] = result
        if result["canonical"]:
            found += 1
        if (i + 1) % 200 == 0:
            print(f"  {i+1}/{len(obj_to_rooms)} — with affordances: {found}")
    print(f"  Discovered objects with affordances: {found}/{len(obj_to_rooms)}")

    total_covered = sum(1 for v in kb.values() if v["canonical"])
    print(f"\nTotal KB size       : {len(kb)} objects")
    print(f"Objects with any affordance: {total_covered} ({total_covered/len(kb)*100:.1f}%)")

    OUTPUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    with open(OUTPUT_JSON, "w", encoding="utf-8") as f:
        json.dump(kb, f, indent=2, ensure_ascii=False)
    print(f"Saved KB → {OUTPUT_JSON}")
    return kb


# ---------------------------------------------------------------------------
# Validation
# ---------------------------------------------------------------------------

def validate_kb(kb: dict) -> None:
    from collections import Counter

    total = len(kb)
    discovered    = sum(1 for v in kb.values() if v["discovered_via_rooms"])
    has_aff       = sum(1 for v in kb.values() if v["canonical"])
    has_direct    = sum(
        1 for v in kb.values()
        if any("inherited" not in s for ss in v["sources"].values() for s in ss)
    )
    has_inherited = sum(1 for v in kb.values() if v["inherited_from"])
    no_coverage   = sum(1 for v in kb.values() if not v["canonical"])

    print("\n=== CSKG KB Validation ===")
    print(f"Total KB objects        : {total}")
    print(f"  Discovered via rooms  : {discovered}")
    print(f"Objects with affordances: {has_aff} ({has_aff/total*100:.1f}%)")
    print(f"  Direct (L0/L0b)       : {has_direct}")
    print(f"  IsA-inherited (L1)    : {has_inherited}")
    print(f"  No coverage           : {no_coverage}")

    # Source breakdown
    all_src = [s for v in kb.values() for ss in v["sources"].values() for s in ss]
    print("\nSource breakdown (affordance-label counts):")
    for src, cnt in Counter(all_src).most_common():
        print(f"  {src:30s}: {cnt}")

    print("\nInheritance examples (first 10):")
    shown = 0
    for obj, v in kb.items():
        if v["inherited_from"] and shown < 10:
            print(f"  {obj:25s} → via {v['inherited_from']} → {v['canonical'][:5]}")
            shown += 1

    print("\nRoom-discovery examples (garage/workshop, first 15 tools with affordances):")
    shown = 0
    for obj, v in kb.items():
        if any(r in ("garage", "workshop", "tool shed") for r in v["discovered_via_rooms"]):
            if v["canonical"] and shown < 15:
                print(f"  {obj:25s} [{', '.join(v['discovered_via_rooms'][:2])}] "
                      f"→ {v['canonical'][:4]}")
                shown += 1


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Extract tool affordances from CSKG")
    parser.add_argument("--rebuild", action="store_true",
                        help="Rebuild even if output already exists")
    args = parser.parse_args()

    kb = build_kb(rebuild=args.rebuild)
    validate_kb(kb)
