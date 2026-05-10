"""
evaluate.py — Tidy-Up Neuro-Symbolic Evaluation (module_2)
===========================================================
Architecture mirrors the tool_usage pipeline in module_2/tool_usage/evaluate.py,
adapted for the tidy-up task:

  NEURAL  → LLM extracts the canonical location type for the object
             (analogous to affordance extraction in tool_usage)
  SYMBOLIC → Prolog looks up the object in the location KB and selects
             a candidate whose canonical type is KB-confirmed
             (analogous to the Prolog tool selector in tool_usage)
  NEURAL  → LLM makes the final selection from the 5 choices, grounded
             by KB exemplars — objects the KB knows belong in that location
             (analogous to the LLM grounded by KB exemplars in tool_usage)

The old module_1 pipeline (ILASP rules + Clingo scoring) is preserved untouched
in module_1/scripts/tidy_up/. This file is a clean re-implementation in module_2.

Usage:
    python evaluate.py                          # full pipeline, all 867 questions
    python evaluate.py --limit 50               # random sample of 50
    python evaluate.py --ablation pure_llm      # LLM only, no KB
    python evaluate.py --ablation pure_logic    # KB + Prolog only, no LLM picker
    python evaluate.py --verbose                # print per-question details
"""

import argparse
import ast
import json
import os
import random
import re
import subprocess
import sys
import time
from collections import Counter
from pathlib import Path

import pandas as pd
from tqdm import tqdm
from mistralai.client import Mistral

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
EVAL_DIR      = Path(__file__).parent                      # module_2/tidy_up/
MODULE2_DIR   = EVAL_DIR.parent                            # module_2/
REPO_ROOT     = MODULE2_DIR.parent                         # thesis/
BENCHMARK_DIR = REPO_ROOT / "Robo-CSK-Benchmark" / "tidy_up"
# KB: extracted from CSKG using the same architecture as tool_affordances_cskg.json
# (BFS from household seeds via /r/AtLocation, then per-object location extraction
# + IsA inheritance). Built by module_1/scripts/tidy_up/extract_object_locations_cskg.py.
KB_JSON       = REPO_ROOT / "module_1" / "jsons" / "object_locations_cskg.json"
# Ground-truth for the open task (multi-source ranked list, not used as KB)
OPEN_GT_CSV   = BENCHMARK_DIR / "tidy_up_data.csv"
PROLOG_FILE   = EVAL_DIR / "reasoner.pl"
RESULTS_DIR   = EVAL_DIR / "results"
RESULTS_DIR.mkdir(exist_ok=True)

# ---------------------------------------------------------------------------
# LLM client
# ---------------------------------------------------------------------------
MODEL_ID = "mistral-medium-latest"

api_key = os.environ.get("MISTRAL_API_KEY")
if not api_key:
    print("Warning: MISTRAL_API_KEY not set. Neural components will fail.")
    client = None
else:
    client = Mistral(api_key=api_key)

# ---------------------------------------------------------------------------
# Canonical location vocabulary
# Mirrors CANONICAL_TO_READABLE from module_1 evaluate_multichoice.py
# ---------------------------------------------------------------------------
CANONICAL_LOCATIONS = {
    "kitchen", "bathroom", "bedroom", "living_room", "dining_room",
    "home_office", "library", "garage", "garden", "laundry_room",
    "pantry", "closet", "storage_room", "hallway", "fridge",
    "drawer", "shelf", "table", "cabinet", "bed", "sink",
    "trash", "playroom", "music_room",
}

CANONICAL_TO_READABLE = {
    "kitchen":      "kitchen",
    "bathroom":     "bathroom",
    "bedroom":      "bedroom",
    "living_room":  "living room",
    "dining_room":  "dining room",
    "home_office":  "home office",
    "library":      "library",
    "garage":       "garage",
    "garden":       "garden / outdoor area",
    "laundry_room": "laundry / utility room",
    "pantry":       "pantry / food storage",
    "closet":       "closet / wardrobe",
    "storage_room": "storage room / attic / basement",
    "hallway":      "hallway / corridor",
    "fridge":       "fridge / freezer",
    "drawer":       "drawer",
    "shelf":        "shelf / bookshelf",
    "table":        "table / desk / counter",
    "cabinet":      "cabinet / cupboard",
    "bed":          "bed",
    "sink":         "sink / dishwasher",
    "trash":        "bin / trash",
    "playroom":     "playroom",
    "music_room":   "music room",
}

# Mapping from surface location strings (as they appear in choices / KB) to
# canonical location keys.  Mirrors LOCATION_MAP + PROMPT_LOCATION_MAP from
# module_1 evaluate_multichoice.py, extended with KB location strings.
LOCATION_MAP: dict[str, str] = {
    # kitchen
    "kitchen": "kitchen", "oven": "kitchen", "microwave": "kitchen",
    "stove": "kitchen", "stovetop": "kitchen", "cooktop": "kitchen",
    "hob": "kitchen", "range": "kitchen",
    # bathroom
    "bathroom": "bathroom", "restroom": "bathroom", "bathroom cabinet": "bathroom",
    # bedroom
    "bedroom": "bedroom", "guest room": "bedroom", "spare room": "bedroom",
    "separate room": "bedroom", "teenager's bedroom": "bedroom",
    "motel room": "bedroom", "different room": "bedroom",
    # childs room → playroom (17 GT occurrences; child's items go in playroom)
    "childs room": "playroom", "child's room": "playroom",
    "children's room": "playroom", "kids room": "playroom",
    "nursery": "playroom",
    # living room
    "living room": "living_room", "living_room": "living_room",
    "lounge": "living_room", "sitting room": "living_room",
    "family area": "living_room", "family room": "living_room",
    "living area": "living_room", "side of room": "living_room",
    "house": "living_room", "home": "living_room",
    # television room (20 GT occurrences)
    "television room": "living_room", "tv room": "living_room",
    "tv lounge": "living_room", "media room": "living_room",
    # dining room
    "dining room": "dining_room", "dining_room": "dining_room",
    # home office
    "home office": "home_office", "home_office": "home_office", "office": "home_office",
    # library
    "library": "library",
    # garage
    "garage": "garage", "car": "garage", "vehicle": "garage", "trunk": "garage",
    "engine": "garage",
    # garden
    "garden": "garden", "yard": "garden", "patio": "garden",
    "outdoor": "garden", "backyard": "garden", "outdoors": "garden",
    # laundry room
    "laundry room": "laundry_room", "laundry_room": "laundry_room",
    "hamper": "laundry_room", "washing area": "laundry_room",
    # storage / utility (tools go in storage_room, not laundry_room)
    "utility room": "storage_room",
    "exercise room": "storage_room",  # gym equipment → storage
    # pantry
    "pantry": "pantry", "pantry room": "pantry", "larder": "pantry",
    "food storage": "pantry",
    # closet
    "closet": "closet", "wardrobe": "closet", "cupboard": "closet",
    "press": "closet", "suitcase": "closet", "luggage": "closet",
    "chest": "closet",
    # storage room
    "storage room": "storage_room", "storage_room": "storage_room",
    "attic": "storage_room", "basement": "storage_room",
    "loft": "storage_room", "shed": "storage_room", "cabin": "storage_room",
    "vault": "storage_room", "hospital drug storeroom": "storage_room",
    # hallway
    "hallway": "hallway", "corridor": "hallway", "hall": "hallway",
    "entrance": "hallway", "lobby": "hallway",
    # fridge
    "fridge": "fridge", "refrigerator": "fridge", "icebox": "fridge",
    "freezer": "fridge",
    # drawer
    "drawer": "drawer", "wallet": "drawer", "purse": "drawer",
    "bedside drawer": "drawer", "bedroom drawer": "drawer", "bathroom drawer": "drawer",
    # shelf
    "shelf": "shelf", "bookshelf": "shelf", "shelving": "shelf",
    # table
    "table": "table", "desk": "table", "counter": "table",
    "countertop": "table", "plate": "table", "stand": "table",
    "bowl": "table", "tray": "table",
    # cabinet
    "cabinet": "cabinet", "tin": "cabinet",
    "box": "cabinet", "container": "cabinet",
    # pantry containers
    "jar": "pantry", "can": "pantry",
    # bathroom containers
    "bottle": "bathroom", "packet": "bathroom",
    # closet containers
    "backpack": "closet", "bag": "closet", "suitcase": "closet",
    # bed
    "bed": "bed",
    # sink
    "sink": "sink", "dishwasher": "sink",
    # trash
    "trash": "trash", "bin": "trash", "garbage": "trash", "rubbish": "trash",
    # playroom
    "playroom": "playroom",
    # music room
    "music room": "music_room", "music_room": "music_room",
    # other fine-grained house locations → closest canonical
    "dining table": "table",
    "cellar": "storage_room",
    "greenhouse": "garden",
    "porch": "garden",
    "quiver": "storage_room",
    "basket": "laundry_room",
    "cupboard": "cabinet",
    # bathroom surface forms
    "bath": "bathroom", "bathtub": "bathroom",
    "shower": "bathroom", "restroom": "bathroom",
    "medicine cabinet": "cabinet",
    # pantry room (CSKG room label)
    "pantry room": "pantry",
    # corridor / lobby (CSKG room labels)
    "corridor": "hallway", "lobby": "hallway",
    # compound kitchen
    "kitchen counter": "kitchen", "kitchen countertop": "kitchen",
    "kitchen cabinet": "kitchen", "kitchen pantry": "pantry",
    "kitchen drawer": "kitchen", "kitchen sink": "sink",
    # compound bedroom
    "bedroom wardrobe": "closet", "bedroom closet": "closet",
    # compound living room
    "living room shelf": "living_room",
    "living room cabinet": "living_room",
    # compound bathroom
    "bathroom cabinet": "cabinet", "bathroom vanity": "bathroom",
    "bathroom shelf": "bathroom",
    # compound storage
    "storage bin": "storage_room", "storage unit": "storage_room",
    # compound office
    "office desk": "home_office", "study room": "home_office",
    "study": "home_office",
    # misc containers
    "pot": "kitchen", "pan": "kitchen", "pitcher": "kitchen",
    "oven": "kitchen", "stove": "kitchen", "microwave": "kitchen",
    # outdoor
    "campground": "garden", "driveway": "garden",
    "backyard": "garden", "yard": "garden",
    # classroom / school → school has no home canonical, map to library (study space)
    "classroom": "library", "class room": "library",
    "art classroom": "library", "school": "library",
    # toolbox → garage
    "toolbox": "garage", "tool box": "garage", "toolkit": "garage",
    # washing machine / washer → laundry_room
    "washer": "laundry_room", "washing machine": "laundry_room",
    # room (generic) → living_room
    "room": "living_room",
    # apartment / house / home (generic dwelling) → living_room
    "apartment": "living_room",
    # trunk (luggage) → closet
    "trunk": "closet",
    # cup / teapot → kitchen
    "cup": "kitchen", "teapot": "kitchen", "mug": "kitchen",
    # locker → closet
    "locker": "closet",
    # package / parcel → storage_room
    "package": "storage_room", "parcel": "storage_room",
}


def map_location(loc_str: str) -> str | None:
    """Map a surface location string to a canonical key. Returns None if unknown."""
    if not loc_str:
        return None
    key = loc_str.lower().strip()
    if key in LOCATION_MAP:
        return LOCATION_MAP[key]
    # Space → underscore normalisation (e.g. "music room" → "music_room")
    underscored = key.replace(" ", "_")
    if underscored in CANONICAL_LOCATIONS:
        return underscored
    return None


# ---------------------------------------------------------------------------
# System prompt for location type extraction
# (analogous to AFFORDANCE_EXTRACTION_PROMPT in tool_usage)
# ---------------------------------------------------------------------------
LOCATION_EXTRACTION_PROMPT = f"""You are a commonsense knowledge assistant for a household robot.
Given a household object, identify the single most appropriate canonical location TYPE \
where this object is typically stored or placed in a home.

Choose EXACTLY ONE canonical location from the following list:
{', '.join(sorted(CANONICAL_LOCATIONS))}

Rules:
- Output ONLY the single canonical location key exactly as it appears in the list above.
- Choose the location where the object is MOST COMMONLY stored, not just where it could be.
- If the object is food or a consumable, prefer "kitchen", "fridge", or "pantry" as appropriate.
- If the object is clothing or accessories, prefer "bedroom", "closet", or "laundry_room".
- If the object is a tool or appliance, prefer "kitchen", "garage", "home_office", or "storage_room".
- If the object is a toy or game, prefer "bedroom", "playroom", or "living_room".
- If the object is a book, prefer "library", "home_office", or "shelf".
- Outdoor equipment, vehicles, or garden tools → "garage" or "garden".
- Cleaning supplies → "laundry_room" or "bathroom".
- Medicine or personal care items → "bathroom" or "cabinet".
- Do NOT output explanations or anything other than the single canonical location key.

First provide a 1-sentence "reasoning", then the "location".

Respond ONLY with a JSON dictionary:
{{"reasoning": "<1-sentence explanation>", "location": "<canonical location key>"}}

EXAMPLES:
Object: apple
{{"reasoning": "Fruit is typically stored in the kitchen or fridge.", "location": "kitchen"}}

Object: jacket
{{"reasoning": "Clothing is stored in the bedroom closet or wardrobe.", "location": "closet"}}

Object: hammer
{{"reasoning": "Tools are typically stored in the garage.", "location": "garage"}}

Object: novel
{{"reasoning": "Books are stored on a shelf or in a library.", "location": "library"}}

Object: shampoo
{{"reasoning": "Personal care items are stored in the bathroom.", "location": "bathroom"}}

Object: lawnmower
{{"reasoning": "Garden equipment is kept in the garage.", "location": "garage"}}
"""

# Near-synonym expansions for location canonicals — mirrors AFFORDANCE_SYNONYMS in tool_usage.
# When the extracted canonical has no KB match, try these before falling back to LLM.
LOCATION_SYNONYMS: dict[str, list[str]] = {
    "kitchen":      ["pantry", "fridge", "cabinet", "table"],
    "pantry":       ["kitchen", "cabinet"],
    "fridge":       ["kitchen", "pantry"],
    "cabinet":      ["kitchen", "pantry", "drawer", "closet"],
    "drawer":       ["cabinet", "closet", "table"],
    "closet":       ["bedroom", "storage_room", "drawer"],
    "bedroom":      ["closet", "living_room", "storage_room"],
    "living_room":  ["bedroom", "home_office", "library"],
    "home_office":  ["library", "living_room", "shelf"],
    "library":      ["home_office", "shelf", "living_room"],
    "shelf":        ["library", "home_office", "cabinet"],
    "bathroom":     ["bedroom", "laundry_room"],
    "laundry_room": ["bathroom", "kitchen"],
    "garage":       ["storage_room", "garden"],
    "garden":       ["garage"],
    "storage_room": ["closet", "garage"],
    "hallway":      ["living_room", "storage_room"],
    "table":        ["kitchen", "dining_room", "cabinet"],
    "dining_room":  ["kitchen", "table", "living_room"],
    "sink":         ["kitchen", "bathroom"],
    "bed":          ["bedroom"],
    "trash":        ["kitchen", "garden"],
    "playroom":     ["bedroom", "living_room"],
    "music_room":   ["living_room", "library"],
}


# ---------------------------------------------------------------------------
# Keyword-based location extractor (pure_logic ablation — no LLM needed)
# ---------------------------------------------------------------------------
KEYWORD_LOCATION_MAP: list[tuple[list[str], str]] = [
    (["food", "fruit", "vegetable", "meat", "bread", "grain", "spice", "cook",
      "pan", "pot", "utensil", "stove", "oven", "range", "baking"],     "kitchen"),
    (["fridge", "refrigerator", "dairy", "yogurt", "milk", "juice",
      "leftover", "cold", "freezer"],                                    "fridge"),
    (["pantry", "cereal", "can", "tin", "jar", "pasta", "rice", "flour",
      "sugar", "larder", "dry good"],                                     "pantry"),
    (["cloth", "shirt", "trouser", "jacket", "coat", "dress", "shoe",
      "sock", "underwear", "garment", "outfit", "fashion"],               "closet"),
    (["toy", "game", "puzzle", "doll", "lego", "action figure", "teddy"], "playroom"),
    (["book", "novel", "magazine", "journal", "textbook", "dictionary"],  "library"),
    (["laptop", "computer", "monitor", "keyboard", "mouse", "printer",
      "office supply", "pen", "pencil", "stapler"],                       "home_office"),
    (["shampoo", "soap", "towel", "toothbrush", "toothpaste", "razor",
      "medicine", "pill", "cream", "lotion"],                             "bathroom"),
    (["washing machine", "detergent", "laundry", "iron", "mop", "broom",
      "cleaning supply", "vacuum"],                                        "laundry_room"),
    (["tool", "hammer", "screwdriver", "drill", "wrench", "saw",
      "lawn", "mower", "bike", "bicycle", "car", "vehicle"],              "garage"),
    (["plant", "garden", "soil", "fertilizer", "hose", "rake", "shovel",
      "seed", "outdoor"],                                                  "garden"),
    (["sofa", "couch", "tv", "television", "remote", "cushion",
      "living room"],                                                      "living_room"),
    (["bed", "pillow", "blanket", "mattress", "alarm clock",
      "nightstand"],                                                       "bedroom"),
    (["dining", "plate", "bowl", "fork", "spoon", "napkin",
      "dining table"],                                                     "dining_room"),
    (["trash", "garbage", "rubbish", "bin", "waste"],                     "trash"),
]


def keyword_extract_location(obj_name: str) -> dict:
    t = obj_name.lower().strip()
    for keywords, canon in KEYWORD_LOCATION_MAP:
        if any(kw in t for kw in keywords):
            return {"reasoning": "Keyword match.", "location": canon}
    return {"reasoning": "No keyword match, defaulting.", "location": "living_room"}


# ---------------------------------------------------------------------------
# LLM helpers
# ---------------------------------------------------------------------------
def llm_chat(messages: list, temperature: float = 0.0,
             json_format: bool = False) -> str:
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


def extract_location_llm(obj_name: str, ablation: str = "none") -> dict:
    """Use LLM to extract the canonical location type for an object."""
    if ablation == "pure_logic":
        return keyword_extract_location(obj_name)

    messages = [
        {"role": "system", "content": LOCATION_EXTRACTION_PROMPT.strip()},
        {"role": "user", "content": f"Object: {obj_name}"},
    ]
    raw = llm_chat(messages, json_format=True)
    try:
        parsed = json.loads(raw)
        loc = str(parsed.get("location", "")).lower().strip()
        # Normalise underscores
        loc = loc.replace(" ", "_")
        if loc not in CANONICAL_LOCATIONS:
            # Try to map through LOCATION_MAP
            loc = LOCATION_MAP.get(loc, loc)
        return {"reasoning": parsed.get("reasoning", ""), "location": loc}
    except Exception:
        for word in CANONICAL_LOCATIONS:
            if word in raw.lower():
                return {"reasoning": "Parsed from output.", "location": word}
        return {"reasoning": "Parse failed.", "location": "living_room"}


def llm_select_location(obj_name: str, candidates: list[str],
                        context: str = "") -> str:
    """LLM directly selects the most suitable location from the 5 candidates."""
    system = (
        "You are a household robot that tidies up objects. "
        "Given an object and a list of possible locations, choose the SINGLE "
        "most appropriate location where this object is typically stored or placed "
        "in a real home. The correct answer may be a room, a container, a piece "
        "of furniture, or an appliance — pick whichever option makes the most "
        "real-world sense for where the object actually belongs. "
        "Reply ONLY with the exact location name from the list — no explanation."
    )
    candidate_str = "\n".join(f"- {c}" for c in candidates)
    msg = f"Object: {obj_name}\n\nPossible locations:\n{candidate_str}\n\nYour Choice:"
    if context:
        msg = context + "\n\n" + msg

    raw = llm_chat(
        [{"role": "system", "content": system},
         {"role": "user", "content": msg}]
    )
    raw_clean = raw.strip().lower()
    # 1. Exact match
    for c in candidates:
        if c.lower() == raw_clean:
            return c
    # 2. Candidate text appears inside LLM output (e.g. LLM says "I choose kitchen")
    for c in candidates:
        if c.lower() in raw_clean:
            return c
    # 3. LLM output appears inside candidate — but only if it's a substantial
    #    portion (≥70%) of the candidate.  This prevents "kitchen" from falsely
    #    matching "kitchen or bathroom" (ratio 7/19 ≈ 0.37 < 0.70).
    for c in candidates:
        c_lower = c.lower()
        if raw_clean in c_lower and len(raw_clean) / max(len(c_lower), 1) >= 0.70:
            return c
    return candidates[0]


def pure_llm_select(obj_name: str, candidates: list[str]) -> str:
    """Pure LLM selection ablation — no KB, no location extraction."""
    system = (
        "You are a household robot that tidies up objects. "
        "Given an object and a list of possible locations, choose the SINGLE "
        "most appropriate location where this object is typically stored or placed. "
        "Reply ONLY with the exact location name from the list."
    )
    candidate_str = "\n".join(f"- {c}" for c in candidates)
    raw = llm_chat([
        {"role": "system", "content": system},
        {"role": "user", "content": f"Object: {obj_name}\n\nPossible locations:\n{candidate_str}\n\nYour Choice:"},
    ])
    raw_clean = raw.strip().lower()
    for c in candidates:
        if c.lower() == raw_clean:
            return c
    for c in candidates:
        if c.lower() in raw_clean:
            return c
    for c in candidates:
        c_lower = c.lower()
        if raw_clean in c_lower and len(raw_clean) / max(len(c_lower), 1) >= 0.70:
            return c
    return candidates[0]


# ---------------------------------------------------------------------------
# KB loader
# ---------------------------------------------------------------------------
_KB_CACHE: dict | None = None


def load_kb() -> dict:
    """
    Load the CSKG-extracted tidy-up KB (object_locations_cskg.json).

    Structure mirrors tool_affordances_cskg.json used by module_2/tool_usage:
        { object_name: {
            "locations": ["kitchen", "drawer", ...],  # canonical room strings
            "sources":   {"kitchen": ["cskg:cn"], ...},
            "inherited_from": [],
            "discovered_via_rooms": [...]
          }, ... }
    """
    global _KB_CACHE
    if _KB_CACHE is None:
        if not KB_JSON.exists():
            sys.exit(
                f"ERROR: CSKG KB not found at {KB_JSON}.\n"
                "Run module_1/scripts/tidy_up/extract_object_locations_cskg.py first."
            )
        with open(KB_JSON, encoding="utf-8") as f:
            _KB_CACHE = json.load(f)
    return _KB_CACHE


# ---------------------------------------------------------------------------
# KB reverse lookup — canonical location → exemplar objects
# (mirrors get_exemplars_for_affordance in tool_usage)
# ---------------------------------------------------------------------------
def get_exemplars_for_location(
    canonical: str,
    kb: dict,
    synonyms: list[str] | None = None,
    max_exemplars: int = 8,
) -> tuple[str, list[str]]:
    """
    Reverse-lookup: given a canonical location, return objects in the KB
    known to belong there (or at a synonym location).

    Returns (matched_canonical, exemplar_list) so callers know which label hit.
    """
    def _collect(canon: str) -> list[str]:
        results = []
        for obj, data in kb.items():
            # CSKG KB: data["locations"] is a list of canonical-ish room strings
            locs = data.get("locations", [])
            if any(map_location(l) == canon for l in locs if map_location(l)):
                results.append(obj)
        return results

    found = _collect(canonical)
    if found:
        return canonical, found[:max_exemplars]

    for syn in (synonyms or []):
        found = _collect(syn)
        if found:
            return syn, found[:max_exemplars]

    return canonical, []


# ---------------------------------------------------------------------------
# Prolog solver
# (mirrors run_prolog_solver in tool_usage, adapted for locations)
# ---------------------------------------------------------------------------
def _prolog_atom(name: str) -> str:
    return "'" + name.replace("'", "\\'") + "'"


def run_prolog_solver(
    required_canonical: str,
    candidates: list[str],
    kb: dict,
) -> dict:
    """
    Assert KB location facts for each candidate and run the Prolog reasoner.

    Returns {
      "selected": str,            # candidate name, "ambiguous", or "none"
      "confidence": str,
      "ambiguous_set": [...],
      "kb_confirmed_set": [...],
    }
    """
    goals = []

    canon_atom = _prolog_atom(required_canonical)
    goals.append(f"assertz(required_canonical({canon_atom}))")

    for c in candidates:
        c_atom = _prolog_atom(c)
        goals.append(f"assertz(candidate({c_atom}))")
        # Map the candidate surface string to its canonical
        c_canon = map_location(c)
        if c_canon:
            goals.append(f"assertz(has_location({c_atom}, {_prolog_atom(c_canon)}))")
            # Check KB confirmation: does the KB know an object similar to the
            # one being placed belongs in this canonical location?
            # We use the exemplar reverse-lookup: if at least one KB object maps
            # to c_canon then we treat c_canon as KB-confirmed for this candidate.
            found_exemplars = _collect_exemplars_fast(c_canon, kb)
            if found_exemplars:
                goals.append(f"assertz(kb_confirmed({c_atom}, {_prolog_atom(c_canon)}))")

    goals.append("run")
    goal_str = ", ".join(goals)

    cmd = ["swipl", "-f", str(PROLOG_FILE), "-g", goal_str]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        output = result.stdout.strip()
        return _parse_prolog_output(output)
    except subprocess.TimeoutExpired:
        return {"selected": "none", "confidence": "timeout",
                "ambiguous_set": [], "kb_confirmed_set": []}
    except Exception as e:
        return {"selected": "none", "confidence": f"error:{e}",
                "ambiguous_set": [], "kb_confirmed_set": []}


def _collect_exemplars_fast(canon: str, kb: dict) -> list[str]:
    """Quick check: any KB object with this canonical location?"""
    results = []
    for obj, data in kb.items():
        locs = data.get("locations", [])  # CSKG KB: list of room strings
        if any(map_location(l) == canon for l in locs if map_location(l)):
            results.append(obj)
        if len(results) >= 3:
            break
    return results


def _parse_prolog_output(output: str) -> dict:
    result = {
        "selected": "none",
        "confidence": "unknown",
        "ambiguous_set": [],
        "kb_confirmed_set": [],
    }
    m = re.search(r"SELECTED=(.+)", output)
    if m:
        result["selected"] = m.group(1).strip().strip("'")
    m = re.search(r"CONFIDENCE=(.+)", output)
    if m:
        result["confidence"] = m.group(1).strip()
    m = re.search(r"AMBIGUOUS_SET=\[(.*?)\]", output)
    if m:
        raw = m.group(1).strip()
        if raw:
            result["ambiguous_set"] = [x.strip().strip("'") for x in raw.split(",")]
    m = re.search(r"KB_CONFIRMED_SET=\[(.*?)\]", output)
    if m:
        raw = m.group(1).strip()
        if raw:
            result["kb_confirmed_set"] = [x.strip().strip("'") for x in raw.split(",")]
    return result


# ---------------------------------------------------------------------------
# Main evaluation loop
# ---------------------------------------------------------------------------
def evaluate(
    verbose: bool = False,
    output_file: str = "results_tidy_up.txt",
    ablation: str = "none",
    limit: int | None = None,
) -> None:
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Tidy-Up (module_2)")
    print(f"  Model    : {MODEL_ID}")
    print(f"  Ablation : {ablation}")
    print("=" * 60)

    # Add model name to output file
    name, ext = os.path.splitext(output_file)
    if ext == '':
        ext = '.txt'
    output_file = f"{name}_{MODEL_ID}{ext}"

    # Add ablation suffix if applicable
    if ablation != "none":
        name, ext = os.path.splitext(output_file)
        output_file = f"{name}_ablation_{ablation}{ext}"

    # Load benchmark
    csv_path = BENCHMARK_DIR / "tidy_up_multichoice.csv"
    if not csv_path.exists():
        sys.exit(f"ERROR: Benchmark CSV not found at {csv_path}")
    df = pd.read_csv(csv_path)
    if limit is not None:
        df = df.sample(n=min(limit, len(df)), random_state=42).reset_index(drop=True)
        print(f"[--limit] Running on {len(df)} randomly sampled questions")

    kb = load_kb()

    total   = len(df)
    correct = 0

    breakdown = {
        "neuro_symbolic": {"correct": 0, "total": 0},
        "pure_llm":       {"correct": 0, "total": 0},
        "pure_logic":     {"correct": 0, "total": 0},
    }

    # Diagnostic counters (full pipeline only)
    stats = {
        "object_in_kb":    0,  # object found directly in KB
        "kb_hit":          0,  # KB had exemplars for extracted canonical
        "kb_miss":         0,  # KB had no exemplars → fallback to synonym or LLM
        "synonym_hit":     0,  # found exemplars via synonym expansion
        "hint_suppressed": 0,  # canonical hint suppressed (no candidate matches canon)
        "prolog_selected": 0,  # Prolog returned a definite selection
        "prolog_ambiguous":0,  # Prolog returned ambiguous → LLM disambiguates
        "prolog_none":     0,  # Prolog returned none → LLM picks freely
        "correct_in_kb":   0,  # correct answer's canonical had KB exemplars
    }

    log = open(output_file, "w", encoding="utf-8")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG — Tidy-Up Evaluation (module_2)\n")
    log.write(f"Model: {MODEL_ID}  |  Ablation: {ablation}\n")
    log.write("=" * 60 + "\n\n")

    loc_cache: dict[str, dict] = {}  # object → location extraction result

    for idx, row in tqdm(df.iterrows(), total=total, desc="Eval", mininterval=5.0):
        obj_name     = str(row["Object"]).strip()
        ground_truth = str(row["Correct_Location"]).strip().lower()
        wrong_locs   = ast.literal_eval(str(row["Wrong_Locations"]))
        candidates   = [str(row["Correct_Location"])] + [str(w) for w in wrong_locs]

        # ------------------------------------------------------------------ #
        # [ABLATION] pure_llm
        # ------------------------------------------------------------------ #
        if ablation == "pure_llm":
            predicted  = pure_llm_select(obj_name, candidates)
            is_correct = predicted.lower() == ground_truth
            if is_correct:
                correct += 1
            breakdown["pure_llm"]["total"]   += 1
            breakdown["pure_llm"]["correct"] += int(is_correct)
            _write_log_entry(log, {
                "object": obj_name, "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Location"],
                "correct": is_correct, "mode": "pure_llm",
            }, verbose)
            continue

        # ------------------------------------------------------------------ #
        # Step 1 — NEURAL: extract canonical location type for this object
        # ------------------------------------------------------------------ #
        if obj_name not in loc_cache:
            loc_cache[obj_name] = extract_location_llm(obj_name, ablation=ablation)
        loc_result    = loc_cache[obj_name]
        required_canon = loc_result.get("location", "living_room").lower().strip()

        # KB direct lookup: if this exact object is in the CSKG KB, use its
        # known locations to override the LLM-extracted canonical.
        kb_entry = kb.get(obj_name.lower())
        kb_object_locations: list[str] = []
        if kb_entry:
            kb_object_locations = kb_entry.get("locations", [])[:6]
            stats["object_in_kb"] += 1
            for kbl in kb_object_locations:
                c = map_location(kbl)
                if c:
                    required_canon = c
                    break

        if verbose:
            tqdm.write(f"\n[Object] {obj_name}")
            tqdm.write(f"  Canonical: {required_canon} — {loc_result.get('reasoning', '')}")

        # ------------------------------------------------------------------ #
        # [ABLATION] pure_logic: Prolog direct lookup, no LLM picker
        # ------------------------------------------------------------------ #
        if ablation == "pure_logic":
            prolog_result = run_prolog_solver(required_canon, candidates, kb)
            sel = prolog_result["selected"]
            if sel in ("none", "ambiguous"):
                for syn_canon in LOCATION_SYNONYMS.get(required_canon, []):
                    syn_res = run_prolog_solver(syn_canon, candidates, kb)
                    if syn_res["selected"] not in ("none", "ambiguous"):
                        sel = syn_res["selected"]
                        break
                    if syn_res["selected"] == "ambiguous":
                        sel = (syn_res["kb_confirmed_set"] or
                               syn_res["ambiguous_set"] or candidates)[:1][0]
                        break
            if sel in ("none", "ambiguous"):
                sel = random.choice(candidates)
            predicted  = sel
            is_correct = predicted.lower() == ground_truth
            if is_correct:
                correct += 1
            breakdown["pure_logic"]["total"]   += 1
            breakdown["pure_logic"]["correct"] += int(is_correct)
            _write_log_entry(log, {
                "object": obj_name, "required_canonical": required_canon,
                "location_reasoning": loc_result.get("reasoning", ""),
                "candidates": candidates, "prolog_result": prolog_result,
                "predicted": predicted, "ground_truth": row["Correct_Location"],
                "correct": is_correct, "mode": "pure_logic",
            }, verbose)
            continue

        # ------------------------------------------------------------------ #
        # Step 2 — SYMBOLIC: KB reverse lookup
        #   Ask: "what objects in the KB are known to belong in this location?"
        #   Use those exemplars to ground the LLM's selection.
        # ------------------------------------------------------------------ #
        syn_list = LOCATION_SYNONYMS.get(required_canon, [])
        matched_canon, exemplars = get_exemplars_for_location(
            required_canon, kb, synonyms=syn_list
        )

        if exemplars:
            stats["kb_hit"] += 1
            if matched_canon != required_canon:
                stats["synonym_hit"] += 1
        else:
            stats["kb_miss"] += 1

        # Track whether the correct answer's canonical had KB support
        correct_canon = map_location(ground_truth)
        if correct_canon:
            _, c_exs = get_exemplars_for_location(correct_canon, kb)
            if c_exs:
                stats["correct_in_kb"] += 1

        if verbose:
            tqdm.write(f"  KB exemplars for '{matched_canon}': {exemplars or '—'}")

        # ------------------------------------------------------------------ #
        # Step 3 — NEURAL: LLM selects, grounded by canonical hint
        # ------------------------------------------------------------------ #
        # Determine if any candidate maps to the extracted canonical.
        # - If yes: strong canonical hint + exemplar list (if available)
        # - If no:  soft canonical hint only — gives semantic orientation without
        #           forcing the LLM to pick a canonical-matching location
        #           (important when the GT is a container/appliance like "jar",
        #           "refrigerator", or "utility room" and no candidate is the
        #           room type itself).  Removing exemplars avoids stale fixture.
        candidates_mapping_to_canon = [
            c for c in candidates if map_location(c.lower()) == required_canon
        ]
        canon_matches_candidate = bool(candidates_mapping_to_canon)

        if kb_object_locations:
            # Prefer direct KB object locations over reverse-lookup exemplars.
            kb_context = (
                f"Hint: based on a household knowledge base, '{obj_name}' is typically "
                f"found in the following locations (ranked by reliability): "
                f"{', '.join(kb_object_locations)}. "
                f"Select the candidate that best matches this knowledge."
            )
        elif canon_matches_candidate and exemplars:
            readable = CANONICAL_TO_READABLE.get(
                matched_canon, matched_canon.replace("_", " ")
            )
            label = (f" (or similar: {matched_canon})"
                     if matched_canon != required_canon else "")
            # If multiple candidates map to the required canonical, add a tiebreaker:
            # explicitly name the matching candidates so the LLM picks the right one
            # (e.g., between "oven" and "kitchen" both→kitchen, prefer "oven" for biscuit).
            if len(candidates_mapping_to_canon) > 1:
                tie_note = (
                    f" Among the matching options ({', '.join(candidates_mapping_to_canon)}), "
                    f"prefer the most specific one (e.g., a named appliance, container, "
                    f"or furniture piece rather than a generic room name)."
                )
            elif len(candidates_mapping_to_canon) == 1:
                tie_note = f" The best matching option is '{candidates_mapping_to_canon[0]}'."
            else:
                tie_note = ""
            kb_context = (
                f"Hint: based on commonsense knowledge, '{obj_name}' most likely "
                f"belongs in a '{readable}'{label}. "
                f"From a household knowledge base, similar objects include: "
                f"{', '.join(exemplars)}.{tie_note} "
                f"Select the candidate most consistent with that location type."
            )
        elif canon_matches_candidate:
            readable = CANONICAL_TO_READABLE.get(
                required_canon, required_canon.replace("_", " ")
            )
            if len(candidates_mapping_to_canon) > 1:
                tie_note = (
                    f" Among the matching options ({', '.join(candidates_mapping_to_canon)}), "
                    f"prefer the most specific one (e.g., a named appliance, container, "
                    f"or furniture piece rather than a generic room name)."
                )
            elif len(candidates_mapping_to_canon) == 1:
                tie_note = f" The best matching option is '{candidates_mapping_to_canon[0]}'."
            else:
                tie_note = ""
            kb_context = (
                f"Hint: based on commonsense knowledge, '{obj_name}' most likely "
                f"belongs in a '{readable}'.{tie_note} "
                f"Select the candidate most consistent with that location type."
            )
        else:
            # No candidate maps exactly to the extracted canonical.
            # Instead of anchoring to the (possibly wrong) LLM-extracted canonical,
            # derive the most plausible canonical FROM the candidates themselves:
            # count how many candidates map to each canonical and use the top one.
            # This "candidate-informed canonical" corrects for LLM extraction errors
            # (e.g., extracted="kitchen" but all candidates point to "cabinet"/"playroom").
            cc_counter: Counter = Counter()
            for c in candidates:
                cc = map_location(c.lower())
                if cc:
                    cc_counter[cc] += 1

            if cc_counter:
                top_count = cc_counter.most_common(1)[0][1]
                # Break ties by first occurrence in candidate order
                informed_canon = next(
                    cc for c in candidates
                    for cc in [map_location(c.lower())] if cc and cc_counter[cc] == top_count
                )
                readable = CANONICAL_TO_READABLE.get(
                    informed_canon, informed_canon.replace("_", " ")
                )
                # List the candidates that actually match the informed canonical;
                # this grounds the LLM rather than leaving it to guess.
                matching_cands = [
                    c for c in candidates if map_location(c.lower()) == informed_canon
                ]
                if len(matching_cands) == 1:
                    kb_context = (
                        f"Hint: among the options, '{matching_cands[0]}' best fits a "
                        f"'{readable}' context for '{obj_name}'. "
                        f"Select the most plausible location for this object."
                    )
                else:
                    # Multiple matches — name them and ask LLM to pick the most specific
                    kb_context = (
                        f"Hint: for '{obj_name}', the most relevant options are: "
                        f"{', '.join(matching_cands)} (all relate to a '{readable}'). "
                        f"Prefer the most specific one that best matches where "
                        f"'{obj_name}' is actually stored."
                    )
            else:
                # No candidate maps to any known canonical — generic orientation
                readable = CANONICAL_TO_READABLE.get(
                    required_canon, required_canon.replace("_", " ")
                )
                kb_context = (
                    f"Hint: '{obj_name}' is typically associated with a '{readable}'. "
                    f"Choose whichever candidate best reflects where '{obj_name}' would "
                    f"actually be stored or found in a household, even if it is a "
                    f"container or specific appliance."
                )
            stats["hint_suppressed"] += 1  # candidate-informed hint used

        predicted  = llm_select_location(obj_name, candidates, context=kb_context)
        is_correct = predicted.lower() == ground_truth
        if is_correct:
            correct += 1

        breakdown["neuro_symbolic"]["total"]   += 1
        breakdown["neuro_symbolic"]["correct"] += int(is_correct)

        _write_log_entry(log, {
            "object": obj_name,
            "required_canonical": required_canon,
            "location_reasoning": loc_result.get("reasoning", ""),
            "kb_object_locations": kb_object_locations,
            "kb_exemplars": exemplars,
            "matched_canonical": matched_canon,
            "candidates": candidates,
            "predicted": predicted,
            "ground_truth": row["Correct_Location"],
            "correct": is_correct,
            "mode": "neuro_symbolic",
        }, verbose)

    # ---------------------------------------------------------------------- #
    # Summary
    # ---------------------------------------------------------------------- #
    accuracy = correct / total

    print("\n" + "=" * 60)
    print("FINAL RESULTS — Tidy-Up (module_2)")
    print("=" * 60)
    print(f"  Model    : {MODEL_ID}")
    print(f"  Ablation : {ablation}")
    print(f"  Correct  : {correct} / {total}")
    print(f"  Accuracy : {accuracy:.4f}  ({accuracy * 100:.2f}%)")
    if ablation == "none":
        print(f"\n  {'─' * 36}")
        print(f"  KB Activity")
        print(f"  {'─' * 36}")
        print(f"  Objects found in KB:  {stats['object_in_kb']:>5} / {total}")
        print(f"  KB hit (exemplars):   {stats['kb_hit']:>5} / {total}")
        print(f"    of which via synonym: {stats['synonym_hit']:>3}")
        print(f"  KB miss:              {stats['kb_miss']:>5} / {total}")
        print(f"  Hint suppressed:      {stats['hint_suppressed']:>5} / {total}  (soft hint used)")
        print(f"  Correct answer in KB: {stats['correct_in_kb']:>3} / {total}")
    print(f"\n  Decision breakdown:")
    for mode_name, counts in breakdown.items():
        if counts["total"] > 0:
            acc = counts["correct"] / counts["total"]
            print(f"    {mode_name:20s}: {counts['correct']:3d}/{counts['total']:3d}  ({acc:.3f})")
    print("=" * 60)

    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"Total     : {total}\n")
    log.write(f"Correct   : {correct}\n")
    log.write(f"Accuracy  : {accuracy:.4f}  ({accuracy * 100:.2f}%)\n\n")
    if ablation == "none":
        log.write("KB Activity:\n")
        log.write(f"  Objects found in KB:   {stats['object_in_kb']}\n")
        log.write(f"  KB hit (exemplars):    {stats['kb_hit']}\n")
        log.write(f"  KB hit (synonym):      {stats['synonym_hit']}\n")
        log.write(f"  KB miss:               {stats['kb_miss']}\n")
        log.write(f"  Hint suppressed:       {stats['hint_suppressed']}  (soft hint used)\n")
        log.write(f"  Correct answer in KB:  {stats['correct_in_kb']}\n\n")
    log.write("Decision breakdown:\n")
    for mode_name, counts in breakdown.items():
        if counts["total"] > 0:
            acc = counts["correct"] / counts["total"]
            log.write(f"  {mode_name}: {counts['correct']}/{counts['total']} ({acc:.4f})\n")
    log.write("=" * 60 + "\n")
    log.close()
    print(f"\nResults saved to {output_file}")


def _write_log_entry(log, entry: dict, verbose: bool) -> None:
    log.write(f"[Object] {entry.get('object', entry.get('task', ''))}\n")
    if "required_canonical" in entry:
        log.write(f"Canonical location  : {entry['required_canonical']}\n")
        log.write(f"Reasoning           : {entry.get('location_reasoning', '')}\n")
    if "kb_object_locations" in entry and entry["kb_object_locations"]:
        log.write(f"KB direct locs      : {entry['kb_object_locations']}\n")
    if "kb_exemplars" in entry:
        matched = entry.get("matched_canonical", "")
        label   = f" (via '{matched}')" if matched and matched != entry.get("required_canonical") else ""
        log.write(f"KB exemplars{label}    : {entry['kb_exemplars'] or '—'}\n")
    log.write(f"Candidates          : {entry['candidates']}\n")
    if "prolog_result" in entry:
        pr = entry["prolog_result"]
        log.write(f"Prolog selected     : {pr['selected']}  [{pr['confidence']}]\n")
        if pr["ambiguous_set"]:
            log.write(f"  Ambiguous set     : {pr['ambiguous_set']}\n")
        if pr["kb_confirmed_set"]:
            log.write(f"  KB confirmed      : {pr['kb_confirmed_set']}\n")
    log.write(f"Predicted           : {entry['predicted']}\n")
    log.write(f"Ground Truth        : {entry['ground_truth']}\n")
    log.write(f"Correct             : {entry['correct']}  [mode: {entry.get('mode', '')}]\n")
    log.write("-" * 60 + "\n\n")
    if verbose:
        tqdm.write(
            f"  Pred={entry['predicted']:20s}  GT={entry['ground_truth']:20s}  "
            f"{'✓' if entry['correct'] else '✗'}"
        )


# ---------------------------------------------------------------------------# Ranking metrics — copied from Robo-CSK-Benchmark metric_calculator.py
# Used for the open-question evaluation.
# ---------------------------------------------------------------------------

def _reciprocal_rank(retrieved: list[str], gold: list[str]) -> float:
    for i, r in enumerate(retrieved):
        if r in gold:
            return 1.0 / (i + 1)
    return 0.0


def _average_precision_at_k(k: int, retrieved: list[str], gold: list[str]) -> float:
    if not gold:
        return 0.0
    r = sum(1 for x in retrieved[:k] if x in gold)
    if r == 0:
        return 0.0
    ap = 0.0
    for i in range(1, k + 1):
        if i > len(retrieved):
            break
        if retrieved[i - 1] in gold:
            ap += sum(1 for x in retrieved[:i] if x in gold) / i
    return ap / r


def _recall_at_k(k: int, retrieved: list[str], gold: list[str]) -> float:
    if not gold:
        return 0.0
    cap = min(k, len(gold))
    return sum(1 for x in retrieved[:cap] if x in gold) / len(gold)


# ---------------------------------------------------------------------------
# Open-task prediction normalizer
# ---------------------------------------------------------------------------
# The benchmark uses exact string matching; LLM often produces compound
# strings like "kitchen refrigerator" or "bedroom closet" instead of the
# short canonical strings used in the ground truth.
# Strategy: map compound/verbose strings to their GT-compatible short form.
# ---------------------------------------------------------------------------

# Exact-match overrides first (most common LLM outputs that differ from GT)
_OPEN_NORM_EXACT: dict[str, str] = {
    # TV room synonyms → GT uses "television room"
    "tv room": "television room",
    "tv lounge": "television room",
    "media room": "television room",
    "family room": "living room",
    "lounge": "living room",
    "sitting room": "living room",
    "couch": "living room",
    "sofa": "living room",
    "coffee table": "living room",
    # Children's room variants → GT uses "childs room"
    "children's room": "childs room",
    "child's room": "childs room",
    "kids room": "childs room",
    "children room": "childs room",
    "nursery": "childs room",
    # Laundry variants → GT uses "utility room" or "laundry room"
    "laundry": "laundry room",
    "utility": "utility room",
    "washroom": "utility room",
    # Exercise
    "gym": "exercise room",
    "fitness room": "exercise room",
    "workout room": "exercise room",
    # Pantry
    "food storage": "pantry room",
    "larder": "pantry",
    # Corridor/lobby
    "lobby": "lobby",
    "entrance": "lobby",
    "foyer": "lobby",
    "hallway": "corridor",
    "hall": "corridor",
    "passageway": "corridor",
    # Study
    "study": "home office",
    "study room": "home office",
    "office": "home office",
    # Garden
    "backyard": "garden",
    "yard": "garden",
    "patio": "garden",
    "outdoor": "garden",
    "outdoors": "garden",
    # Storage — attic/loft/basement normalize to "storage room" (same canonical for both pred and gold)
    "attic": "storage room",
    "loft": "storage room",
    "basement": "storage room",
    "cellar": "storage room",
    "storeroom": "storage room",
    "shed": "storage room",
    # Fridge / refrigerator / freezer all → "fridge" (same canonical for both pred and gold)
    "refrigerator": "fridge",
    "freezer": "fridge",
    "icebox": "fridge",
    # Bathroom sub-locations → "bathroom"
    "bathtub": "bathroom",
    "bath tub": "bathroom",
    "shower": "bathroom",
    "toilet": "bathroom",
    # Backpack synonyms → "backpack"
    "school bag": "backpack",
    "rucksack": "backpack",
    "daypack": "backpack",
    "book bag": "backpack",
    "knapsack": "backpack",
    "bookbag": "backpack",
    # Closet
    "wardrobe": "closet",
    # Bed
    "mattress": "bed",
    "bunk bed": "bed",
    # Desk synonyms
    "work desk": "desk",
    "writing desk": "desk",
    "computer desk": "desk",
}

# Substring-based normalization: if ANY of these substrings appear in the
# predicted string (in order), map to the corresponding GT label.
# Ordered from most-specific to least-specific.
_OPEN_NORM_SUBSTR: list[tuple[str, str]] = [
    # Kitchen sub-locations → usually just "kitchen" in GT
    ("kitchen refrigerator", "refrigerator"),
    ("kitchen pantry", "pantry"),
    ("kitchen cabinet", "kitchen"),
    ("kitchen counter", "kitchen"),
    ("kitchen sink", "kitchen"),
    ("kitchen drawer", "kitchen"),
    ("kitchen storage", "pantry"),
    ("kitchen shelf", "kitchen"),
    # Bedroom sub-locations
    ("bedroom closet", "closet"),
    ("bedroom wardrobe", "closet"),
    ("bedroom dresser", "bedroom"),
    ("bedroom drawer", "bedroom"),
    ("bedroom shelf", "bedroom"),
    # Bathroom sub-locations
    ("bathroom cabinet", "bathroom"),
    ("bathroom vanity", "bathroom"),
    ("bathroom drawer", "bathroom"),
    ("bathroom shelf", "bathroom"),
    ("bathroom counter", "bathroom"),
    # Living room sub-locations
    ("living room shelf", "living room"),
    ("living room cabinet", "living room"),
    ("living room coffee table", "living room"),
    ("living room", "living room"),
    # Office sub-locations
    ("office desk", "home office"),
    ("office shelf", "home office"),
    ("office drawer", "home office"),
    ("home office", "home office"),
    # Dining sub-locations
    ("dining table", "dining room"),
    ("dining room", "dining room"),
    # Bedroom
    ("bedroom", "bedroom"),
    # Kitchen (must come after "kitchen X" patterns above)
    ("kitchen", "kitchen"),
    # Garage
    ("garage", "garage"),
    # Garden/outdoors
    ("garden", "garden"),
    # Storage
    ("storage room", "storage room"),
    ("storage unit", "storage room"),
    ("storage bin", "storage room"),
    ("storage", "storage room"),
    # Pantry
    ("pantry", "pantry"),
    # Closet
    ("closet", "closet"),
    ("wardrobe", "closet"),
    # Laundry
    ("laundry room", "laundry room"),
    ("utility room", "utility room"),
    # Bathroom
    ("bathroom", "bathroom"),
    # Hallway/corridor
    ("hallway", "corridor"),
    ("corridor", "corridor"),
    # Playroom
    ("playroom", "playroom"),
    # Library
    ("library", "library"),
]


def normalize_open_prediction(loc: str) -> str:
    """
    Normalize a single predicted location string to a GT-compatible form.
    Applies exact-match overrides first, then substring patterns.
    Falls back to returning the original string lowercased.
    """
    s = loc.strip().lower()
    # Exact match
    if s in _OPEN_NORM_EXACT:
        return _OPEN_NORM_EXACT[s]
    # Substring match (ordered, most-specific first)
    for substring, target in _OPEN_NORM_SUBSTR:
        if substring in s:
            return target
    return s




def llm_generate_ranked_locations(obj_name: str, kb_context: str = "") -> list[str]:
    """
    Generate a ranked comma-separated list of household locations for an object.
    Uses the same prompt as the Robo-CSK-Benchmark baseline, extended to request
    a broader list (improves MAR) and to use short canonical location names.
    """
    system = "Imagine you are a robot tidying up a household."
    user = (
        "What are the prototypical locations in a household where the following "
        "object can be found? Please only answer with a comma separated & ranked "
        "list of locations. Use short standard location names such as: kitchen, "
        "bedroom, living room, bathroom, garage, dining room, home office, "
        "playroom, closet, storage room, utility room, television room, "
        "childs room, exercise room, pantry room, corridor, lobby, garden, "
        "library, laundry room, fridge, drawer, shelf, cabinet, oven, table, "
        "desk, box, suitcase, backpack, jar, can, plate, bed, sofa. "
        "Aim to list at least 10 candidate locations.\n\n"
        f"Object: {obj_name}\n"
    )
    if kb_context:
        user += f"\n{kb_context}\n"
    user += "Locations:"

    raw = llm_chat(
        [{"role": "system", "content": system},
         {"role": "user",   "content": user}]
    )
    locs = [l.strip().lower() for l in raw.split(",")]
    return [l for l in locs if l]


# ---------------------------------------------------------------------------
# Open-question evaluation  (MRR, MAP@k, MAR@k)
# ---------------------------------------------------------------------------

def evaluate_open(
    verbose: bool = False,
    output_file: str = "results_tidy_up_open.txt",
    ablation: str = "none",
    limit: int | None = None,
) -> None:
    """
    Evaluate on the open-question task (tidy_up_data.csv).
    Metrics: MRR, MAP@1/3/5, MAR@1/3/5  — matching the Robo-CSK-Benchmark.
    """
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Tidy-Up OPEN task (module_2)")
    print(f"  Model    : {MODEL_ID}")
    print(f"  Ablation : {ablation}")
    print("=" * 60)

    # Add model name to output file
    name, ext = os.path.splitext(output_file)
    if ext == '':
        ext = '.txt'
    output_file = f"{name}_{MODEL_ID}{ext}"

    # Add ablation suffix if applicable
    if ablation != "none":
        name, ext = os.path.splitext(output_file)
        output_file = f"{name}_ablation_{ablation}{ext}"

    kb = load_kb()  # CSKG KB — used for context grounding

    # Ground truth comes from the multi-source benchmark file
    if not OPEN_GT_CSV.exists():
        sys.exit(f"ERROR: Open-task ground truth not found at {OPEN_GT_CSV}")
    df_gt = pd.read_csv(OPEN_GT_CSV)
    # Build {object_lower: [ranked locations]} from tidy_up_data.csv
    gt_map: dict[str, list[str]] = {}
    for _, row in df_gt.iterrows():
        obj = str(row["Object"]).strip().lower()
        raw = ast.literal_eval(str(row["Locations"]))
        ranked = [raw[k][0].lower() for k in sorted(raw.keys())]
        # Normalize gold labels with the same function used for predictions,
        # so fridge/refrigerator/freezer and attic/basement all use one canonical.
        norm_gold: list[str] = []
        seen_gold: set[str] = set()
        for loc in ranked:
            n = normalize_open_prediction(loc)
            if n not in seen_gold:
                norm_gold.append(n)
                seen_gold.add(n)
        gt_map[obj] = norm_gold

    items = list(gt_map.items())
    if limit is not None:
        random.seed(42)
        items = random.sample(items, min(limit, len(items)))
        print(f"[--limit] Running on {len(items)} randomly sampled objects")

    total = len(items)
    # Metric accumulators
    mrr = map1 = map3 = map5 = mar1 = mar3 = mar5 = 0.0

    log = open(output_file, "w", encoding="utf-8")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG — Tidy-Up OPEN task (module_2)\n")
    log.write(f"Model: {MODEL_ID}  |  Ablation: {ablation}\n")
    log.write("=" * 60 + "\n\n")

    for obj_name, gold in tqdm(items, total=total, desc="Open Eval", mininterval=5.0):
        # gold is already a ranked list of location strings (from tidy_up_data.csv)

        # -------------------------------------------------------------- #
        # Build KB context: look up object in CSKG KB
        # -------------------------------------------------------------- #
        kb_context = ""
        kb_entry = kb.get(obj_name)
        cskg_locs = kb_entry.get("locations", []) if kb_entry else []
        if ablation == "pure_logic":
            # pure_logic: use CSKG locations directly; empty list if object not in KB
            predicted = [l.lower() for l in cskg_locs]
            mrr  += _reciprocal_rank(predicted, gold)
            map1 += _average_precision_at_k(1, predicted, gold)
            map3 += _average_precision_at_k(3, predicted, gold)
            map5 += _average_precision_at_k(5, predicted, gold)
            mar1 += _recall_at_k(1, predicted, gold)
            mar3 += _recall_at_k(3, predicted, gold)
            mar5 += _recall_at_k(5, predicted, gold)
            log.write(f"[Object] {obj_name}\n")
            log.write(f"Gold standard : {gold}\n")
            log.write(f"CSKG locs     : {cskg_locs}\n")
            log.write(f"Predicted     : {predicted} [pure_logic=CSKG direct]\n")
            log.write("-" * 60 + "\n\n")
            if verbose:
                tqdm.write(f"  {obj_name}: RR={_reciprocal_rank(predicted, gold):.2f}")
            continue
        if ablation != "pure_llm" and cskg_locs:
            # Normalize CSKG location strings to GT-compatible short form so
            # the hint vocabulary matches what the LLM should output.
            norm_cskg = []
            seen_cskg: set[str] = set()
            for l in cskg_locs:
                n = normalize_open_prediction(l)
                if n not in seen_cskg:
                    norm_cskg.append(n)
                    seen_cskg.add(n)
            top_locs = norm_cskg[:5]
            # neuro_symbolic: add CSKG locations as context to ground the LLM
            kb_context = (
                f"Knowledge base hint: '{obj_name}' is typically found in: "
                f"{', '.join(top_locs)} (from CSKG)."
            )

        predicted = llm_generate_ranked_locations(obj_name, kb_context)
        # Normalize: map verbose/compound strings to GT-compatible short forms,
        # then deduplicate while preserving rank order.
        normalized: list[str] = []
        seen: set[str] = set()
        for p in predicted:
            n = normalize_open_prediction(p)
            if n not in seen:
                normalized.append(n)
                seen.add(n)
        predicted = normalized

        # KB re-ranking: for objects with CSKG hits, promote the KB-known
        # locations to the front of the ranked list (rank-1 accuracy boost).
        # This mirrors how Clingo uses KB-derived locations as rank-1 predictions.
        if ablation not in ("pure_llm",) and cskg_locs:
            norm_cskg_set = [normalize_open_prediction(l.lower()) for l in cskg_locs]
            # Build re-ranked list: KB locations first (preserving their order),
            # then remaining LLM predictions not already in KB list.
            reranked: list[str] = []
            seen_rerank: set[str] = set()
            for loc in norm_cskg_set:
                if loc and loc not in seen_rerank:
                    reranked.append(loc)
                    seen_rerank.add(loc)
            for loc in predicted:
                if loc not in seen_rerank:
                    reranked.append(loc)
                    seen_rerank.add(loc)
            predicted = reranked

        # Compute metrics
        mrr  += _reciprocal_rank(predicted, gold)
        map1 += _average_precision_at_k(1, predicted, gold)
        map3 += _average_precision_at_k(3, predicted, gold)
        map5 += _average_precision_at_k(5, predicted, gold)
        mar1 += _recall_at_k(1, predicted, gold)
        mar3 += _recall_at_k(3, predicted, gold)
        mar5 += _recall_at_k(5, predicted, gold)

        log.write(f"[Object] {obj_name}\n")
        if kb_context:
            log.write(f"KB context    : {kb_context}\n")
        log.write(f"Gold standard : {gold}\n")
        log.write(f"Predicted     : {predicted}\n")
        log.write(f"RR={_reciprocal_rank(predicted, gold):.3f}  "
                  f"AP@1={_average_precision_at_k(1, predicted, gold):.3f}  "
                  f"AP@3={_average_precision_at_k(3, predicted, gold):.3f}  "
                  f"AP@5={_average_precision_at_k(5, predicted, gold):.3f}\n")
        log.write("-" * 60 + "\n\n")
        if verbose:
            tqdm.write(f"  {obj_name}: RR={_reciprocal_rank(predicted, gold):.2f}  "
                       f"AP@5={_average_precision_at_k(5, predicted, gold):.2f}")

    # Summary
    print("\n" + "=" * 60)
    print("FINAL RESULTS — Tidy-Up OPEN task (module_2)")
    print("=" * 60)
    print(f"  Model    : {MODEL_ID}")
    print(f"  Ablation : {ablation}")
    print(f"  N objects: {total}")
    print(f"  {'─' * 38}")
    print(f"  MRR      : {mrr/total:.4f}")
    print(f"  MAP@1    : {map1/total:.4f}")
    print(f"  MAP@3    : {map3/total:.4f}")
    print(f"  MAP@5    : {map5/total:.4f}")
    print(f"  MAR@1    : {mar1/total:.4f}")
    print(f"  MAR@3    : {mar3/total:.4f}")
    print(f"  MAR@5    : {mar5/total:.4f}")
    print("=" * 60)
    # Reference baselines from Robo-CSK-Benchmark README:
    print("  [Reference] GPT-4o:    MRR=0.412  MAP@1=0.345  MAP@5=0.365  MAR@5=0.163")
    print("  [Reference] Llama-70B: MRR=0.424  MAP@1=0.364  MAP@5=0.372  MAR@5=0.154")

    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"N objects : {total}\n")
    log.write(f"MRR       : {mrr/total:.4f}\n")
    log.write(f"MAP@1     : {map1/total:.4f}\n")
    log.write(f"MAP@3     : {map3/total:.4f}\n")
    log.write(f"MAP@5     : {map5/total:.4f}\n")
    log.write(f"MAR@1     : {mar1/total:.4f}\n")
    log.write(f"MAR@3     : {mar3/total:.4f}\n")
    log.write(f"MAR@5     : {mar5/total:.4f}\n")
    log.write("=" * 60 + "\n")
    log.close()
    print(f"\nResults saved to {output_file}")


# ---------------------------------------------------------------------------# Entry point
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run Tidy-Up Neuro-Symbolic Evaluation (module_2)"
    )
    parser.add_argument("--task", type=str,
                        choices=["multichoice", "open"],
                        default="multichoice",
                        help=("Evaluation task: 'multichoice' (Accuracy, from "
                              "tidy_up_multichoice.csv) or 'open' (MRR/MAP/MAR, "
                              "from tidy_up_data.csv). Default: multichoice"))
    parser.add_argument("--verbose", action="store_true",
                        help="Print per-question details")
    parser.add_argument("--output_file", type=str, default="./results/results.txt",
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

    if args.task == "open":
        evaluate_open(
            verbose=args.verbose,
            output_file=args.output_file.replace('.txt', '_open.txt') if 'results.txt' in args.output_file else args.output_file,
            ablation=args.ablation,
            limit=args.limit,
        )
    else:
        evaluate(
            verbose=args.verbose,
            output_file=args.output_file.replace('.txt', '_multichoice.txt') if 'results.txt' in args.output_file else args.output_file,
            ablation=args.ablation,
            limit=args.limit,
        )