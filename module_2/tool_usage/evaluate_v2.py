"""
evaluate_v2.py — Neuro-Symbolic Evaluation: Tool Usage (v2 — Symbolic Pre-filtering)
======================================================================================
Pipeline
--------
1. [NEURAL] LLM extracts the required affordance from the task description.

2. [SYMBOLIC] Prolog filters the candidate list to those confirmed in the KB
   as having that affordance (+ synonym expansion). This is a hard constraint:
   the LLM can only pick from symbolically-validated tools.

3. [NEURAL] LLM picks from the filtered shortlist.

Branch logic:
  filtered == 1 tool  → SYMBOLIC DIRECT: pick it without calling LLM
  filtered > 1 tools  → SYMBOLIC FILTERED LLM: LLM picks from the shortlist
  filtered == 0 tools → EXEMPLAR LLM: KB lookup unavailable for these candidates,
                        fall back to exemplar-grounded LLM over all candidates

This makes the symbolic component a genuine pre-filter that constrains the LLM's
search space, rather than just a hint injected into a prompt.

Ablations
---------
  pure_llm   — LLM picks directly from all candidates, no KB, no affordance step
  pure_logic — keyword affordance extractor + Prolog filter + random from filtered
               (or random from all if no filter match)

Decision breakdown categories
------------------------------
  symbolic_direct       — filtered to exactly 1 candidate → selected symbolically
  symbolic_filtered_llm — filtered to 2+ candidates → LLM picks from shortlist
  exemplar_llm          — no filter match → LLM picks from all with exemplar context
  pure_llm              — ablation only
  pure_logic            — ablation only

Usage
-----
    python evaluate_v2.py [options]

    --ablation {none,pure_llm,pure_logic}
    --model mistral-large-latest | mistral-small-latest | ...
    --verbose
    --output_file
    --limit N
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
from pathlib import Path

import pandas as pd
from tqdm import tqdm
from mistralai.client import Mistral

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
EVAL_DIR      = Path(__file__).parent
MODULE2_DIR   = EVAL_DIR.parent
REPO_ROOT     = MODULE2_DIR.parent
BENCHMARK_DIR = REPO_ROOT / "Robo-CSK-Benchmark" / "tool_usage"
KB_JSON       = REPO_ROOT / "module_1" / "jsons" / "tool_affordances_full.json"
PROLOG_FILE   = EVAL_DIR / "reasoner.pl"
RESULTS_DIR   = EVAL_DIR / "results"
RESULTS_DIR.mkdir(exist_ok=True)

# ---------------------------------------------------------------------------
# LLM client
# ---------------------------------------------------------------------------
MODEL_ID = "mistral-large-latest"

api_key = os.environ.get("MISTRAL_API_KEY")
if not api_key:
    print("Warning: MISTRAL_API_KEY not set. Neural components will fail.")
    client = None
else:
    client = Mistral(api_key=api_key)

# ---------------------------------------------------------------------------
# Affordance extraction prompt (identical to evaluate.py)
# ---------------------------------------------------------------------------
AFFORDANCE_EXTRACTION_PROMPT = """You are a commonsense knowledge assistant for a household robot.
Given a household task description, you must identify which single affordance (physical capability) \
an object must have to be useful for this task.

Choose EXACTLY ONE affordance from the following canonical list:
absorb, be heated, beautify, bend, bore, break, carry, carve, change, chop, clean, comfort, compress, \
contain, control, cool, cover, crack, crumble, crunch, cube, cut, decorate, dice, dig, display, dispose, \
drill, dry, eat, engrave, entertain, exercise, file, fix, flex, grasp, grind, hammer, handle, heat, hold, \
illuminate, increase, install, lift, mark, melt, mix, operate, peel, pick, pierce, plow, plug, poke, \
polish, pour, press, read, repair, roll, rub, saw, scoop, screw, separate, shape, skin, slit, smoothen, \
solder, spread, staple, stick, store, strip, support, tamp, time, unclog, wash, wipe, wrap, wrench, write

Rules:
- Output ONLY the single affordance word/phrase, exactly as it appears in the list above.
- If the task involves placing a container on heat (boiling, reheating, cooking food in a pot/pan), output "be heated".
- If the task involves melting something (wax, butter, chocolate, ice) using a tool that PROVIDES heat, output "heat".
- If the task involves chopping food into pieces, output "chop". Reserve "cut" for slicing/trimming tasks (e.g., cutting paper, cutting fabric, slicing deli meat thin).
- If the task involves breaking an object apart (opening packages, smashing), output "break". If cracking eggs or nuts, output "crack". If crumbling into fine pieces, output "crumble". If crunching hard food, output "crunch". If dicing into small cubes, output "dice".
- If the task involves boring or making a hole for screws (assembling furniture, hanging pictures, installing fixtures), output "bore". Output "screw" only for driving/tightening screws explicitly.
- If the task involves drilling a hole with a powered drill, output "drill".
- If the task involves hammering a nail, output "hammer".
- If the task involves cleaning, dusting, or removing dirt from a surface or object, output "clean". Use "wipe" only for wiping up liquid spills. Use "wash" for rinsing with water.
- If the task involves mixing, blending, or stirring ingredients or drinks, output "mix".
- If the task involves pressing a button or operating gadgets/appliances via buttons, output "press".
- If the task involves piercing, puncturing, or creating a hole in material, output "pierce".
- If the task involves physically lifting or moving heavy objects, output "lift". If gripping/grasping a specific item, output "grasp".
- Do NOT output explanations, full sentences, or anything other than the single affordance.

First provide a 1-sentence "reasoning", then the "affordance".

Respond ONLY with a JSON dictionary:
{"reasoning": "<1-sentence explanation>", "affordance": "<canonical affordance>"}

EXAMPLES:
Task: cleaning up spills
{"reasoning": "A sponge-like object that absorbs liquid is needed.", "affordance": "absorb"}

Task: reheating coffee
{"reasoning": "The object must be heatable on a stove or similar.", "affordance": "be heated"}

Task: cutting meat
{"reasoning": "A sharp cutting tool is required.", "affordance": "cut"}

Task: hanging pictures
{"reasoning": "A tool to bore a hole into the wall is needed.", "affordance": "bore"}

Task: shaping wire
{"reasoning": "A tool that can bend metal is required.", "affordance": "bend"}

Task: installing shelves
{"reasoning": "A boring tool is needed to make pilot holes in the wall for screws.", "affordance": "bore"}

Task: assembling furniture
{"reasoning": "Pilot holes must be bored before inserting screws when assembling furniture.", "affordance": "bore"}

Task: boiling water
{"reasoning": "A container that can be placed on heat is needed.", "affordance": "be heated"}

Task: melting butter
{"reasoning": "A heat source that provides heat to melt the butter is needed.", "affordance": "heat"}

Task: watching a movie
{"reasoning": "A comfortable seat is needed.", "affordance": "comfort"}

Task: chopping vegetables
{"reasoning": "A chopping tool is needed to cut vegetables into pieces.", "affordance": "chop"}

Task: breaking an egg
{"reasoning": "A tool that can crack open an egg shell is needed.", "affordance": "crack"}

Task: preparing drinks
{"reasoning": "A mixing tool is needed to blend or stir the drink ingredients.", "affordance": "mix"}

Task: using appliances with a button
{"reasoning": "A tool capable of pressing buttons to operate the appliance is needed.", "affordance": "press"}

Task: creating a drainage
{"reasoning": "A tool that can pierce or puncture material to create drainage holes is needed.", "affordance": "pierce"}

Task: dusting furniture
{"reasoning": "A tool that cleans dust from surfaces is needed.", "affordance": "clean"}

Task: moving furniture
{"reasoning": "A tool that can lift and transport heavy objects is needed.", "affordance": "lift"}
"""

# ---------------------------------------------------------------------------
# Keyword-based affordance extractor (pure_logic ablation)
# ---------------------------------------------------------------------------
KEYWORD_AFFORDANCE_MAP: list[tuple[list[str], str]] = [
    (["absorb", "soak", "wipe up", "mop up", "blot"],                           "absorb"),
    (["reheat", "boil", "heat up", "warm up", "cook", "fry", "simmer",
      "reheating", "boiling", "heating"],                                         "be heated"),
    (["beautify", "make-up", "makeup", "decor", "decorate room", "paint wall",
      "arrange flower", "polish nail"],                                            "beautify"),
    (["bend", "flex", "shape wire", "flexible pipe"],                             "bend"),
    (["bore", "boring", "install shelf", "hang picture"],                         "bore"),
    (["break apart", "open packaging", "smash", "crack open"],                   "break"),
    (["carry", "transport", "serve", "watering"],                                 "carry"),
    (["carve", "sculpt", "whittle", "carving"],                                   "carve"),
    (["change", "replace", "swap", "swap out"],                                   "change"),
    (["chop", "hack", "cleave", "firewood"],                                      "chop"),
    (["clean", "wash", "scrub", "dust", "disinfect", "mop"],                     "clean"),
    (["comfort", "relax", "sit", "watch movie", "comfortable"],                  "comfort"),
    (["compress", "store clothes", "compact"],                                    "compress"),
    (["contain", "store food", "measure liquid", "fill", "manage waste"],        "contain"),
    (["control", "adjust setting", "manage lighting", "operate appliance"],      "control"),
    (["cool", "keep food", "freeze", "ice", "refrigerate"],                      "cool"),
    (["cover", "protect", "shield", "seal"],                                     "cover"),
    (["crack", "open nut", "break egg", "crack egg"],                            "crack"),
    (["crumble", "breadcrumb", "crumble pastry"],                                "crumble"),
    (["cut", "slice", "trim", "slit", "cut meat", "cut apple", "knife"],         "cut"),
    (["decorate", "adorn", "embellish"],                                         "decorate"),
    (["dice", "cube vegetable", "mince"],                                        "dice"),
    (["dig", "garden", "soil", "plant"],                                         "dig"),
    (["display", "showcase", "exhibit"],                                         "display"),
    (["dispose", "throw away", "trash", "discard"],                              "dispose"),
    (["drill", "drilling", "make hole", "assembling furniture", "hanging"],      "drill"),
    (["dry", "drying the dish", "remove moisture", "dry off"],                   "dry"),
    (["eat", "eating", "edible"],                                                "eat"),
    (["engrave", "etch", "inscribe"],                                            "engrave"),
    (["entertain", "play", "game", "movie", "music"],                            "entertain"),
    (["exercise", "workout", "sport", "fitness"],                                "exercise"),
    (["file", "filing", "smooth nail"],                                          "file"),
    (["fix", "repair", "mend", "fixing"],                                        "fix"),
    (["flex", "flex material"],                                                  "flex"),
    (["grasp", "grip", "clamp"],                                                 "grasp"),
    (["grind", "grinding", "pulverize", "pestle"],                               "grind"),
    (["hammer", "hammering", "nail", "drive nail"],                              "hammer"),
    (["illuminate", "lighting", "brighten", "light up room", "light bulb",
      "floor lamp", "managing lighting"],                                         "illuminate"),
    (["lift", "raising", "hoist"],                                               "lift"),
    (["mark", "marking", "label"],                                               "mark"),
    (["melt", "melting", "solder"],                                              "melt"),
    (["mix", "mixing", "stir", "blend", "whisk"],                               "mix"),
    (["peel", "peeling", "skin fruit"],                                          "peel"),
    (["pierce", "punch hole", "perforate", "prick"],                             "pierce"),
    (["plow", "plowing", "till"],                                                "plow"),
    (["polish", "polishing", "shine"],                                           "polish"),
    (["pour", "pouring", "transfer liquid"],                                     "pour"),
    (["press", "pressing", "stamp", "imprint"],                                  "press"),
    (["read", "reading"],                                                        "read"),
    (["roll", "rolling"],                                                        "roll"),
    (["saw", "sawing", "cut wood"],                                              "saw"),
    (["scoop", "scooping", "ladle"],                                             "scoop"),
    (["screw", "screwing", "fasten screw"],                                      "screw"),
    (["smooth", "smoothen", "sanding", "sand wood"],                             "smoothen"),
    (["spread", "spreading", "apply butter"],                                    "spread"),
    (["staple", "stapling"],                                                     "staple"),
    (["store", "storing", "storage"],                                            "store"),
    (["support", "hold up", "prop"],                                             "support"),
    (["time", "timing", "watch alarm"],                                          "time"),
    (["unclog", "plunge", "unblock"],                                            "unclog"),
    (["wipe", "wiping", "clean mirror"],                                         "wipe"),
    (["wrap", "wrapping", "cover food"],                                         "wrap"),
    (["write", "writing", "note"],                                               "write"),
]

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
    # Absorbing / drying / wiping
    "absorb":      ["dry", "wipe"],
    "dry":         ["absorb", "wipe"],
    "wipe":        ["clean", "wash", "absorb", "dry"],
    # Decorating / beautifying
    "beautify":    ["decorate", "polish"],
    "decorate":    ["beautify", "polish"],
    # Bending / flexing
    "bend":        ["flex", "shape"],
    "flex":        ["bend", "shape"],
    # Cutting family — most common confusion source
    "cut":         ["chop", "carve", "saw", "slit", "dice", "peel"],
    "chop":        ["cut", "carve", "saw", "dice"],
    "carve":       ["cut", "chop", "saw"],
    "saw":         ["cut", "carve", "chop"],
    "slit":        ["cut", "pierce"],
    "dice":        ["cut", "chop"],
    "peel":        ["cut", "skin"],
    "skin":        ["peel", "cut"],
    # Hole-making family
    "bore":        ["drill", "pierce", "poke", "dig"],
    "drill":       ["bore", "pierce"],
    "pierce":      ["bore", "drill", "poke", "slit"],
    "poke":        ["pierce", "bore"],
    "dig":         ["bore", "pierce", "plow"],
    "plow":        ["dig"],
    # Cleaning family
    "clean":       ["wipe", "wash", "scrub", "polish", "dry"],
    "wash":        ["clean", "wipe", "scrub"],
    "polish":      ["rub", "clean", "smoothen", "beautify"],
    "rub":         ["polish", "clean", "smoothen", "spread"],
    "smoothen":    ["polish", "rub", "file"],
    "file":        ["smoothen", "polish", "rub"],
    # Fixing / repairing
    "fix":         ["repair", "mend"],
    "repair":      ["fix", "mend"],
    # Compression / storage / containing
    "compress":    ["store", "contain"],
    "store":       ["compress", "contain"],
    "contain":     ["hold", "store", "carry"],
    # Breaking / cracking
    "crack":       ["break", "split"],
    "break":       ["crack", "split"],
    # Carrying / lifting / supporting / holding
    "carry":       ["lift", "hold", "support"],
    "lift":        ["carry", "hold", "support"],
    "support":     ["hold", "carry", "lift"],
    "hold":        ["contain", "support", "carry", "grasp"],
    "grasp":       ["hold", "carry"],
    # Heat (critical: LLM may extract one form, KB may store the other)
    "heat":        ["be heated"],
    "be heated":   ["heat"],
    # Grinding / crushing / blending
    "grind":       ["crush", "blend", "mix"],
    "crush":       ["grind", "break", "press"],
    "blend":       ["mix", "grind", "stir"],
    # Marking / writing / engraving
    "mark":        ["write", "label", "engrave"],
    "write":       ["mark", "label", "engrave"],
    "engrave":     ["mark", "write", "carve"],
    # Mixing / stirring
    "mix":         ["blend", "stir", "whisk", "grind"],
    "stir":        ["mix", "blend"],
    # Pouring / scooping
    "pour":        ["scoop"],
    "scoop":       ["pour", "dig"],
    # Pressing / hammering
    "press":       ["push", "hammer"],
    "hammer":      ["press", "pound"],
    # Spreading / covering / wrapping
    "spread":      ["rub", "cover", "apply"],
    "cover":       ["wrap", "protect", "spread"],
    "wrap":        ["cover", "protect"],
    # Illuminating / displaying
    "illuminate":  ["display"],
    "display":     ["illuminate", "entertain"],
    "entertain":   ["display"],
    # Control / operate
    "control":     ["operate", "press"],
    "operate":     ["control", "press"],
    # Unclogging
    "unclog":      ["clean", "pierce", "poke"],
    # Fastening
    "staple":      ["fix", "fasten"],
    "screw":       ["fix", "drill", "bore"],
}


def keyword_extract_affordance(task: str) -> dict:
    t = task.lower().strip()
    for keywords, affordance in KEYWORD_AFFORDANCE_MAP:
        if any(kw in t for kw in keywords):
            return {"reasoning": "Keyword match.", "affordance": affordance}
    return {"reasoning": "No keyword match, defaulting.", "affordance": "hold"}


# ---------------------------------------------------------------------------
# LLM helpers
# ---------------------------------------------------------------------------
def llm_chat(messages: list, temperature: float = 0.0, json_format: bool = False) -> str:
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
            if "429" in str(e) or "rate" in str(e).lower():
                wait = 10 * (attempt + 1)
                tqdm.write(f"  Rate limited — waiting {wait}s...")
                time.sleep(wait)
            else:
                raise
    raise RuntimeError("Rate limit exceeded after retries")


def extract_affordance_llm(task: str, use_keywords: bool = False) -> dict:
    if use_keywords:
        return keyword_extract_affordance(task)
    messages = [
        {"role": "system", "content": AFFORDANCE_EXTRACTION_PROMPT.strip()},
        {"role": "user",   "content": f"Task: {task}"},
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


def llm_select_tool(task: str, candidates: list[str], context: str = "") -> str:
    system = (
        "You are an expert robot assistant in a household environment.\n"
        "Given a task and a list of tools, choose the single most suitable tool.\n"
        "Reply ONLY with the exact tool name from the list — no explanation, no punctuation."
    )
    candidate_str = "\n".join(f"- {c}" for c in candidates)
    msg = f"Task: {task}\n\nTools:\n{candidate_str}\n\nYour Choice:"
    if context:
        msg = context + "\n\n" + msg
    raw = llm_chat(
        [{"role": "system", "content": system}, {"role": "user", "content": msg}]
    )
    raw_clean = raw.strip().lower()
    for c in candidates:
        if c.lower() == raw_clean:
            return c
    for c in candidates:
        if c.lower() in raw_clean or raw_clean in c.lower():
            return c
    return candidates[0]


# ---------------------------------------------------------------------------
# KB loader
# ---------------------------------------------------------------------------
_KB_CACHE: dict | None = None


def load_kb() -> dict:
    global _KB_CACHE
    if _KB_CACHE is None:
        if not KB_JSON.exists():
            sys.exit(
                f"ERROR: KB not found at {KB_JSON}.\n"
                "Run module_1/scripts/tool_usage/build_tool_kb.py first."
            )
        with open(KB_JSON, encoding="utf-8") as f:
            _KB_CACHE = json.load(f)
    return _KB_CACHE


# ---------------------------------------------------------------------------
# Symbolic pre-filter
# ---------------------------------------------------------------------------
def _kb_lookup(tool: str, kb: dict) -> dict:
    """Fuzzy KB lookup with progressive fallback for name normalization."""
    # 1. Exact
    if tool in kb:
        return kb[tool]
    # 2. Lowercase + strip
    key = tool.lower().strip()
    if key in kb:
        return kb[key]
    # 3. Normalized: remove apostrophes/hyphens (e.g. "chef's knife" → "chefs knife")
    norm = re.sub(r"[^a-z0-9 ]", "", key).strip()
    if norm in kb:
        return kb[norm]
    # 4. Fully compressed: remove all non-alphanumeric
    compressed = re.sub(r"[^a-z0-9]", "", key)
    for k in kb:
        if re.sub(r"[^a-z0-9]", "", k.lower()) == compressed:
            return kb[k]
    return {}


def prolog_filter_candidates(
    affordance: str,
    candidates: list[str],
    kb: dict,
) -> tuple[list[str], str]:
    """
    Use Prolog to find which candidates have the required affordance in the KB.
    Expands to synonyms if the primary affordance yields nothing.

    Returns (filtered_candidates, matched_affordance).
    filtered_candidates is a subset of candidates (may be empty).
    """
    def _filter(aff: str) -> list[str]:
        goals = [f"assertz(required_affordance({_atom(aff)}))"]
        for c in candidates:
            goals.append(f"assertz(candidate({_atom(c)}))")
            entry = _kb_lookup(c, kb)
            for a in entry.get("affordances", []):
                goals.append(f"assertz(has_affordance({_atom(c)}, {_atom(a)}))")
                sources = entry.get("sources", {}).get(a, [])
                if any("cn" in s and "csv" not in s for s in sources):
                    goals.append(f"assertz(cn_confirmed({_atom(c)}, {_atom(a)}))")
        goals.append("run")
        cmd = ["swipl", "-f", str(PROLOG_FILE), "-g", ", ".join(goals)]
        try:
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
            return _parse_filtered(result.stdout, candidates)
        except (subprocess.TimeoutExpired, Exception):
            return []

    # Union strategy: try primary affordance + all synonyms, collect results from all
    all_affs = [affordance] + AFFORDANCE_SYNONYMS.get(affordance, [])
    seen: set[str] = set()
    union: list[str] = []

    for aff in all_affs:
        for c in _filter(aff):
            if c not in seen:
                seen.add(c)
                union.append(c)

    if union:
        return union, affordance
    return [], affordance


def _atom(name: str) -> str:
    return "'" + name.replace("'", "\\'") + "'"


def _parse_filtered(output: str, candidates: list[str]) -> list[str]:
    """
    Extract the filtered candidate set from Prolog output.
    Accepts either a single SELECTED= or AMBIGUOUS_SET= or CN_CONFIRMED_SET=.
    """
    filtered = []

    # Single unambiguous match
    sel_m = re.search(r"SELECTED=(.+)", output)
    if sel_m:
        sel = sel_m.group(1).strip().strip("'")
        if sel not in ("none", "ambiguous"):
            # Return only this one candidate
            for c in candidates:
                if c.lower() == sel.lower():
                    return [c]

    # CN-confirmed set (prefer over full ambiguous set)
    cn_m = re.search(r"CN_CONFIRMED_SET=\[(.*?)\]", output)
    if cn_m:
        raw = cn_m.group(1).strip()
        if raw:
            cn_names = {x.strip().strip("'").lower() for x in raw.split(",")}
            filtered = [c for c in candidates if c.lower() in cn_names]
            if filtered:
                return filtered

    # Full ambiguous set
    amb_m = re.search(r"AMBIGUOUS_SET=\[(.*?)\]", output)
    if amb_m:
        raw = amb_m.group(1).strip()
        if raw:
            amb_names = {x.strip().strip("'").lower() for x in raw.split(",")}
            filtered = [c for c in candidates if c.lower() in amb_names]

    return filtered


# ---------------------------------------------------------------------------
# KB exemplar lookup (fallback when Prolog filter returns nothing)
# ---------------------------------------------------------------------------
def get_exemplars_for_affordance(
    affordance: str,
    kb: dict,
    synonyms: list[str] | None = None,
    max_exemplars: int = 8,
) -> tuple[str, list[str]]:
    def _collect(aff: str) -> list[str]:
        return [obj for obj, data in kb.items() if aff in data.get("affordances", [])]

    found = _collect(affordance)
    if found:
        return affordance, found[:max_exemplars]
    for syn in (synonyms or []):
        found = _collect(syn)
        if found:
            return syn, found[:max_exemplars]
    return affordance, []


# ---------------------------------------------------------------------------
# Main evaluation loop
# ---------------------------------------------------------------------------
def evaluate(
    verbose: bool = False,
    output_file: str = "results_tool_usage_v2.txt",
    ablation: str = "none",
    limit: int | None = None,
) -> None:
    print("=" * 60)
    print("Neuro-Symbolic Evaluation v2: Tool Usage (Symbolic Pre-filtering)")
    print(f"Using model : {MODEL_ID}")
    print(f"Ablation    : {ablation}")
    print("=" * 60)

    name, ext = os.path.splitext(output_file)
    ext = ext or ".txt"
    out_path = RESULTS_DIR / f"{name}_{MODEL_ID}{ext}"
    if ablation != "none":
        out_path = RESULTS_DIR / f"{name}_{MODEL_ID}_ablation_{ablation}{ext}"

    csv_path = BENCHMARK_DIR / "tool_usage_multichoice_questions.csv"
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
        "symbolic_direct":       {"correct": 0, "total": 0},
        "symbolic_filtered_llm": {"correct": 0, "total": 0},
        "exemplar_llm":          {"correct": 0, "total": 0},
        "pure_llm":              {"correct": 0, "total": 0},
        "pure_logic":            {"correct": 0, "total": 0},
    }

    log = open(out_path, "w", encoding="utf-8")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG — Tool Usage Evaluation v2 (Symbolic Pre-filtering)\n")
    log.write(f"Model: {MODEL_ID}  |  Ablation: {ablation}\n")
    log.write("=" * 60 + "\n\n")

    aff_cache: dict[str, dict] = {}

    for idx, row in tqdm(df.iterrows(), total=total, desc="Eval", mininterval=5.0):
        task         = str(row["Task"])
        ground_truth = str(row["Correct_Tool"]).lower()
        wrong_tools  = ast.literal_eval(str(row["Wrong_Tools"]))
        candidates   = [str(row["Correct_Tool"])] + [str(w) for w in wrong_tools]
        rng = random.Random(idx)
        rng.shuffle(candidates)

        # ------------------------------------------------------------------ #
        # [ABLATION] pure_llm
        # ------------------------------------------------------------------ #
        if ablation == "pure_llm":
            predicted  = llm_select_tool(task, candidates)
            is_correct = predicted.lower() == ground_truth
            correct   += int(is_correct)
            breakdown["pure_llm"]["total"]   += 1
            breakdown["pure_llm"]["correct"] += int(is_correct)
            _log_entry(log, {
                "task": task, "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "pure_llm",
            }, verbose)
            continue

        # ------------------------------------------------------------------ #
        # Step 1 — Extract affordance (LLM, or keywords for pure_logic)
        # ------------------------------------------------------------------ #
        use_keywords = (ablation == "pure_logic")
        if task not in aff_cache:
            aff_cache[task] = extract_affordance_llm(task, use_keywords=use_keywords)
        aff_result   = aff_cache[task]
        required_aff = aff_result.get("affordance", "hold").lower().strip()

        if verbose:
            tqdm.write(f"\n[Task] {task}")
            tqdm.write(f"  Affordance: {required_aff} — {aff_result.get('reasoning', '')}")

        # ------------------------------------------------------------------ #
        # Step 2 — Symbolic pre-filter via Prolog
        # ------------------------------------------------------------------ #
        filtered, matched_aff = prolog_filter_candidates(required_aff, candidates, kb)

        if verbose:
            tqdm.write(f"  Prolog filter ('{matched_aff}'): {filtered or '∅'}")

        # ------------------------------------------------------------------ #
        # [ABLATION] pure_logic: random from filtered, or random from all
        # ------------------------------------------------------------------ #
        if ablation == "pure_logic":
            pool      = filtered if filtered else candidates
            predicted = pool[random.randint(0, len(pool) - 1)]
            is_correct = predicted.lower() == ground_truth
            correct   += int(is_correct)
            breakdown["pure_logic"]["total"]   += 1
            breakdown["pure_logic"]["correct"] += int(is_correct)
            _log_entry(log, {
                "task": task, "required_affordance": required_aff,
                "affordance_reasoning": aff_result.get("reasoning", ""),
                "prolog_filtered": filtered, "matched_affordance": matched_aff,
                "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "pure_logic",
            }, verbose)
            continue

        # ------------------------------------------------------------------ #
        # Step 3 — Branch on filter result
        # ------------------------------------------------------------------ #
        if len(filtered) == 1:
            # ── SYMBOLIC DIRECT ──────────────────────────────────────────── #
            predicted  = filtered[0]
            is_correct = predicted.lower() == ground_truth
            correct   += int(is_correct)
            breakdown["symbolic_direct"]["total"]   += 1
            breakdown["symbolic_direct"]["correct"] += int(is_correct)
            _log_entry(log, {
                "task": task, "required_affordance": required_aff,
                "affordance_reasoning": aff_result.get("reasoning", ""),
                "prolog_filtered": filtered, "matched_affordance": matched_aff,
                "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "symbolic_direct",
            }, verbose)

        elif len(filtered) > 1:
            # ── SYMBOLIC FILTERED LLM ─────────────────────────────────────── #
            # LLM picks from the symbolically-validated shortlist only
            context = (
                f"Hint: the task requires the ability to '{required_aff}'. "
                f"The following tools have been verified by a knowledge base as "
                f"having this capability: {', '.join(filtered)}. "
                f"Choose the most appropriate one."
            )
            predicted  = llm_select_tool(task, filtered, context=context)
            is_correct = predicted.lower() == ground_truth
            correct   += int(is_correct)
            breakdown["symbolic_filtered_llm"]["total"]   += 1
            breakdown["symbolic_filtered_llm"]["correct"] += int(is_correct)
            _log_entry(log, {
                "task": task, "required_affordance": required_aff,
                "affordance_reasoning": aff_result.get("reasoning", ""),
                "prolog_filtered": filtered, "matched_affordance": matched_aff,
                "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "symbolic_filtered_llm",
            }, verbose)

        else:
            # ── EXEMPLAR LLM (no KB coverage for these candidates) ────────── #
            syn_list = AFFORDANCE_SYNONYMS.get(required_aff, [])
            ex_aff, exemplars = get_exemplars_for_affordance(
                required_aff, kb, synonyms=syn_list
            )
            if exemplars:
                context = (
                    f"Hint: the task requires the ability to '{required_aff}'. "
                    f"From a household knowledge base, objects known to have this capability"
                    f"{' (or similar: ' + ex_aff + ')' if ex_aff != required_aff else ''}: "
                    f"{', '.join(exemplars)}. "
                    f"Select the candidate most functionally similar to those examples."
                )
            else:
                context = f"Hint: the task requires the ability to '{required_aff}'."

            predicted  = llm_select_tool(task, candidates, context=context)
            is_correct = predicted.lower() == ground_truth
            correct   += int(is_correct)
            breakdown["exemplar_llm"]["total"]   += 1
            breakdown["exemplar_llm"]["correct"] += int(is_correct)
            _log_entry(log, {
                "task": task, "required_affordance": required_aff,
                "affordance_reasoning": aff_result.get("reasoning", ""),
                "prolog_filtered": [], "matched_affordance": matched_aff,
                "kb_exemplars": exemplars, "exemplar_affordance": ex_aff,
                "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "exemplar_llm",
            }, verbose)

    # ---------------------------------------------------------------------- #
    # Summary
    # ---------------------------------------------------------------------- #
    accuracy = correct / total
    print("\n" + "=" * 40)
    print("FINAL BENCHMARK RESULTS — Tool Usage v2")
    print("=" * 40)
    print(f"Accuracy: {accuracy:.3f}  ({correct}/{total})")
    print("\nDecision breakdown:")
    for mode_name, counts in breakdown.items():
        if counts["total"] > 0:
            acc = counts["correct"] / counts["total"]
            print(f"  {mode_name:25s}: {counts['correct']:3d}/{counts['total']:3d}  ({acc:.3f})")
    print("=" * 40)

    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"Total questions : {total}\n")
    log.write(f"Correct         : {correct}\n")
    log.write(f"Accuracy        : {accuracy:.4f}\n\n")
    log.write("Decision breakdown:\n")
    for mode_name, counts in breakdown.items():
        if counts["total"] > 0:
            acc = counts["correct"] / counts["total"]
            log.write(f"  {mode_name}: {counts['correct']}/{counts['total']} ({acc:.4f})\n")
    log.write("=" * 60 + "\n")
    log.close()
    print(f"\nResults saved to {out_path}")


def _log_entry(log, entry: dict, verbose: bool) -> None:
    log.write(f"[Task] {entry['task']}\n")
    if "required_affordance" in entry:
        log.write(f"Required affordance : {entry['required_affordance']}\n")
        log.write(f"Reasoning           : {entry.get('affordance_reasoning', '')}\n")
    if "matched_affordance" in entry:
        log.write(f"Matched affordance  : {entry['matched_affordance']}\n")
    if "prolog_filtered" in entry:
        log.write(f"Prolog filtered     : {entry['prolog_filtered'] or '∅'}\n")
    if "kb_exemplars" in entry:
        log.write(f"KB exemplars        : {entry['kb_exemplars'] or '—'}\n")
    log.write(f"Candidates          : {entry['candidates']}\n")
    log.write(f"Predicted           : {entry['predicted']}\n")
    log.write(f"Ground Truth        : {entry['ground_truth']}\n")
    log.write(f"Correct             : {entry['correct']}  [mode: {entry.get('mode', '')}]\n")
    log.write("-" * 60 + "\n\n")
    if verbose:
        tqdm.write(
            f"  [{entry['task'][:40]}] pred={entry['predicted']} "
            f"gt={entry['ground_truth']} correct={entry['correct']} mode={entry.get('mode','')}"
        )


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Tool Usage Neuro-Symbolic Evaluation v2 (Symbolic Pre-filtering)"
    )
    parser.add_argument("--verbose",     action="store_true")
    parser.add_argument("--output_file", type=str, default="results_tool_usage_v2.txt")
    parser.add_argument("--ablation",    type=str,
                        choices=["none", "pure_llm", "pure_logic"], default="none")
    parser.add_argument("--model",       type=str, default="mistral-small-latest")
    parser.add_argument("--limit",       type=int, default=None)
    args = parser.parse_args()

    MODEL_ID = args.model

    evaluate(
        verbose=args.verbose,
        output_file=args.output_file,
        ablation=args.ablation,
        limit=args.limit,
    )
