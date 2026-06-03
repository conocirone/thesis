"""
build_tool_kb.py - Build the final tool KB from CSKG (+ optional ablations)
==================================================================================
Creates tool_affordances_full.json used by module_2/tool_usage/evaluate.py.

DEFAULT (CSKG):
  Uses tool_affordances_cskg.json as the primary source.
  CSKG combines ConceptNet + Visual Genome UsedFor/CapableOf, with IsA
  inheritance for obscure tools. No benchmark labels — fully leakage-safe.

ABLATION (--source cn):
  Uses tool_affordances_cn.json (plain ConceptNet only) as the primary source.
  Useful for measuring the contribution of the CSKG enrichment.

ABLATION (--include-csv):
  Supplements the primary source with affordance_data.csv labels. 

Output format:
  {
    "sponge": {
      "affordances": ["clean", "absorb", "hold"],
      "sources": {"clean": ["cskg:cn"], "absorb": ["cskg:vg"], "hold": ["cskg:cn"]},
      "lookup_key": "sponge"
    },
    ...
  }

Usage:
    python build_tool_kb.py [--rebuild] [--source {cskg,cn}] [--include-csv]
==================================================================================
"""

import argparse
import ast
import json
from pathlib import Path

import pandas as pd

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR   = Path(__file__).parent
SCRIPTS_ROOT = SCRIPT_DIR.parent
MODULE_DIR   = SCRIPTS_ROOT.parent

BENCHMARK_DIR     = MODULE_DIR.parent / "Robo-CSK-Benchmark" / "tool_usage"
AFFORDANCE_CSV    = BENCHMARK_DIR / "affordance_data.csv"
AFFORDANCE_MAP    = BENCHMARK_DIR / "affordance_map.json"
CSKG_KB_JSON      = MODULE_DIR / "jsons" / "tool_affordances_cskg.json"
CN_KB_JSON        = MODULE_DIR / "jsons" / "tool_affordances_cn.json"
FULL_KB_JSON      = MODULE_DIR / "jsons" / "tool_affordances_full.json"
TASK_AFF_MAP_JSON = BENCHMARK_DIR / "affordance_task_map.json"

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


def load_affordance_map() -> dict:
    with open(AFFORDANCE_MAP, encoding="utf-8") as f:
        raw = json.load(f)
    # raw maps label → canonical or "None"
    return {k: (v if v != "None" else None) for k, v in raw.items()}


def parse_affordance_dict(aff_str: str) -> list[tuple[str, float]]:
    """
    Parse the affordance column from affordance_data.csv.
    Returns [(affordance_label, trust_value), ...]
    """
    try:
        d: dict = ast.literal_eval(str(aff_str))
        return [(v[0].lower().strip(), float(v[1])) for v in d.values() if isinstance(v, tuple)]
    except Exception:
        return []


def normalise_csv_affordance(label: str, aff_map: dict) -> str | None:
    """Map a raw affordance label to a canonical one via affordance_map.json."""
    lower = label.lower().strip()
    if lower in CANONICAL_AFFORDANCES:
        return lower
    mapped = aff_map.get(lower)
    if mapped and mapped in CANONICAL_AFFORDANCES:
        return mapped
    return None


def build_full_kb(
    rebuild: bool = False,
    source: str = "cskg",
    include_csv: bool = False,
) -> dict:
    """
    Build tool_affordances_full.json.

    Args:
        source:      "cskg" (default) or "cn" (ablation: plain ConceptNet only)
        include_csv: If True, supplement with benchmark CSV labels (data leakage —
                     use for ablation only).
    """
    if FULL_KB_JSON.exists() and not rebuild:
        print(f"Loading existing full KB from {FULL_KB_JSON}")
        with open(FULL_KB_JSON, encoding="utf-8") as f:
            return json.load(f)

    # --- Select primary KB source ---
    if source == "cskg":
        kb_path = CSKG_KB_JSON
        if not kb_path.exists():
            raise FileNotFoundError(
                f"CSKG KB not found at {kb_path}. "
                "Run extract_tool_affordances_cskg.py first."
            )
        print(f"Primary source: CSKG ({kb_path.name})")
    else:  # source == "cn"
        kb_path = CN_KB_JSON
        if not kb_path.exists():
            raise FileNotFoundError(
                f"ConceptNet KB not found at {kb_path}. "
                "Run extract_tool_affordances.py first."
            )
        print(f"Primary source: ConceptNet-only ({kb_path.name}) [ablation]")

    if include_csv:
        print("WARNING: --include-csv is active. KB will contain benchmark labels "
              "(data leakage — ablation only).")

    with open(kb_path, encoding="utf-8") as f:
        primary_kb = json.load(f)

    aff_map = load_affordance_map() if include_csv else {}

    # When --include-csv is active, load the benchmark CSV for supplemental labels.
    csv_affordances: dict[str, list[tuple[str, float]]] = {}
    if include_csv:
        df = pd.read_csv(AFFORDANCE_CSV)
        for _, row in df.iterrows():
            obj = str(row["Object"]).lower().strip()
            csv_affordances[obj] = parse_affordance_dict(row["Affordances"])

    full_kb: dict = {}

    for obj, entry in primary_kb.items():
        obj = obj.lower().strip()

        affordances: list[str] = []
        sources: dict[str, list[str]] = {}

        # --- PRIMARY: CSKG (or CN) canonical affordances ---
        for aff in entry.get("canonical", []):
            if aff not in affordances:
                affordances.append(aff)
            sources.setdefault(aff, []).extend(entry.get("sources", {}).get(aff, [source]))

        # --- SUPPLEMENTARY (ablation only): affordance_data.csv ---
        if include_csv:
            csv_pairs = csv_affordances.get(obj, [])
            for raw_label, trust in sorted(csv_pairs, key=lambda x: -x[1]):
                canon = normalise_csv_affordance(raw_label, aff_map)
                if canon:
                    if canon not in affordances:
                        affordances.append(canon)
                    sources.setdefault(canon, []).append("csv")

        full_kb[obj] = {
            "affordances": affordances,
            "sources": sources,
            "lookup_key": entry.get("lookup_key", obj),
        }

    FULL_KB_JSON.parent.mkdir(parents=True, exist_ok=True)
    with open(FULL_KB_JSON, "w", encoding="utf-8") as f:
        json.dump(full_kb, f, indent=2, ensure_ascii=False)
    print(f"Saved full KB to {FULL_KB_JSON}  ({len(full_kb)} objects)")
    return full_kb


def validate_full_kb(kb: dict) -> None:
    total = len(kb)

    def _has_tag(entry: dict, tag_substr: str) -> bool:
        return any(
            tag_substr in s
            for ss in entry.get("sources", {}).values()
            for s in ss
        )

    has_kb   = sum(1 for v in kb.values() if _has_tag(v, "cskg") or _has_tag(v, "cn"))
    has_csv  = sum(1 for v in kb.values() if _has_tag(v, "csv"))
    kb_only  = sum(1 for v in kb.values() if (_has_tag(v, "cskg") or _has_tag(v, "cn")) and not _has_tag(v, "csv"))
    csv_only = sum(1 for v in kb.values() if not (_has_tag(v, "cskg") or _has_tag(v, "cn")) and _has_tag(v, "csv"))

    print("\n=== Full KB Validation ===")
    print(f"Total objects         : {total}")
    print(f"Objects with KB data  : {has_kb}  ({has_kb / total * 100:.1f}%)")
    print(f"Objects with CSV data : {has_csv}")
    print(f"KB-only objects       : {kb_only}")
    print(f"CSV-only objects      : {csv_only}")

    # Check correct-tool coverage from benchmark
    q = pd.read_csv(BENCHMARK_DIR / "tool_usage_multichoice_questions.csv")

    # For each correct tool, check if the correct affordance is in the KB
    correct_aff_covered = 0
    for _, row in q.iterrows():
        tool = str(row["Correct_Tool"]).lower()
        aff  = str(row["Affordance"]).lower()
        entry = kb.get(tool, {})
        if aff in entry.get("affordances", []):
            correct_aff_covered += 1

    print(f"\nBenchmark questions where correct tool has required affordance: "
          f"{correct_aff_covered}/{len(q)} ({correct_aff_covered / len(q) * 100:.1f}%)")

    # Check KB-primary (no CSV) coverage
    kb_aff_covered = 0
    for _, row in q.iterrows():
        tool = str(row["Correct_Tool"]).lower()
        aff  = str(row["Affordance"]).lower()
        entry = kb.get(tool, {})
        aff_in = aff in entry.get("affordances", [])
        src_tags = entry.get("sources", {}).get(aff, [])
        if aff_in and any("cskg" in t or ("cn" in t and "csv" not in t) for t in src_tags):
            kb_aff_covered += 1

    print(f"Questions where affordance is confirmed by KB (no CSV): "
          f"{kb_aff_covered}/{len(q)} ({kb_aff_covered / len(q) * 100:.1f}%)")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Build full tool KB")
    parser.add_argument("--rebuild", action="store_true",
                        help="Rebuild even if output already exists")
    parser.add_argument("--source", choices=["cskg", "cn"], default="cskg",
                        help="Primary KB source: 'cskg' (default, CSKG with IsA "
                             "inheritance) or 'cn' (ablation: plain ConceptNet only)")
    parser.add_argument("--include-csv", action="store_true",
                        help="Supplement with affordance_data.csv labels "
                             "(ablation only — introduces data leakage into the KB)")
    args = parser.parse_args()

    kb = build_full_kb(rebuild=args.rebuild, source=args.source,
                       include_csv=args.include_csv)
    validate_full_kb(kb)
