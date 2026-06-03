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
EVAL_DIR    = Path(__file__).parent                          # module_2/tool_usage/
MODULE2_DIR = EVAL_DIR.parent                               # module_2/
REPO_ROOT   = MODULE2_DIR.parent                            # thesis/
BENCHMARK_DIR = REPO_ROOT / "Robo-CSK-Benchmark" / "tool_usage"
KB_JSON     = REPO_ROOT / "module_1" / "jsons" / "tool_affordances_full.json"
PROLOG_FILE = EVAL_DIR / "reasoner.pl"
RESULTS_DIR = EVAL_DIR / "results"
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
# System prompt for affordance extraction
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

# Near-synonym expansions: when the LLM-extracted affordance finds no KB match,
# try these alternatives before falling back to the LLM entirely.
# Derived from error analysis of affordance-mismatch failures.
# Keep this conservative — only semantically equivalent pairs to avoid false positives.
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
}


def keyword_extract_affordance(task: str) -> dict:
    """Extracts an affordance requirement from a task description using keyword heuristics.

    Args:
        task: The task description string.

    Returns:
        A dictionary containing reasoning and the extracted affordance.
    """
    t = task.lower().strip()
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
        messages: A list of message dictionaries.
        temperature: Controls randomness in generation. Defaults to 0.0.
        json_format: If True, requests the model to output a JSON object.
          Defaults to False.

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


def extract_affordance_llm(task: str, ablation: str = "none") -> dict:
    """Extracts the physical affordance required by a task using an LLM.

    Args:
        task: The task description string.
        ablation: Ablation study configuration. If 'pure_logic', falls back
          to keyword extraction. Defaults to 'none'.

    Returns:
        A dictionary containing the reasoning and the extracted affordance.
    """
    if ablation == "pure_logic":
        return keyword_extract_affordance(task)

    prompt = AFFORDANCE_EXTRACTION_PROMPT.strip()
    if ablation == "no_cot":
        # Remove reasoning instruction and field
        prompt = prompt.replace(
            'First provide a 1-sentence "reasoning", then the "affordance".\n\n',
            "",
        )
        prompt = re.sub(r'\s*"reasoning":\s*"<[^>]*>",\s*', "", prompt)

    messages = [
        {"role": "system", "content": prompt},
        {"role": "user", "content": f"Task: {task}"},
    ]
    raw = llm_chat(messages, json_format=True)
    try:
        parsed = json.loads(raw)
        aff = str(parsed.get("affordance", "")).lower().strip()
        return {"reasoning": parsed.get("reasoning", ""), "affordance": aff}
    except Exception:
        # Fallback: extract first canonical word found in raw output
        for word in CANONICAL_AFFORDANCES:
            if word in raw.lower():
                return {"reasoning": "Parsed from output.", "affordance": word}
        return {"reasoning": "Parse failed.", "affordance": "hold"}


def llm_select_tool(task: str, candidates: list[str], context: str = "") -> str:
    """Uses the LLM to select the most suitable tool from candidates.

    Args:
        task: The task description.
        candidates: A list of candidate tool strings.
        context: Optional knowledge base context to ground the selection.

    Returns:
        The chosen tool string.
    """
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
    # Match output to one of the candidates (case-insensitive)
    raw_clean = raw.strip().lower()
    for c in candidates:
        if c.lower() == raw_clean:
            return c
    # Partial match fallback
    for c in candidates:
        if c.lower() in raw_clean or raw_clean in c.lower():
            return c
    return candidates[0]


def pure_llm_select(task: str, candidates: list[str]) -> str:
    """Pure LLM baseline that selects a tool without KB or affordance hints.

    Args:
        task: The task description.
        candidates: A list of candidate tool strings.

    Returns:
        The chosen tool string.
    """
    return llm_select_tool(task, candidates)


# ---------------------------------------------------------------------------
# KB loader
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


# ---------------------------------------------------------------------------
# KB reverse lookup — affordance → exemplar objects
# ---------------------------------------------------------------------------
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


# ---------------------------------------------------------------------------
# Prolog solver
# ---------------------------------------------------------------------------
def _prolog_atom(name: str) -> str:
    """Escape a tool name for use as a Prolog atom."""
    return "'" + name.replace("'", "\\'") + "'"


def run_prolog_solver(
    required_affordance: str,
    candidates: list[str],
    kb: dict,
) -> dict:
    """Asserts candidate tool facts into Prolog and runs the reasoner.

    Args:
        required_affordance: The required affordance key.
        candidates: A list of candidate tool strings.
        kb: The tool affordance knowledge base.

    Returns:
        A dictionary containing the Prolog decision: selected, confidence, etc.
    """
    goals = []

    # Assert required affordance
    aff_atom = _prolog_atom(required_affordance)
    goals.append(f"assertz(required_affordance({aff_atom}))")

    # Assert candidates and their affordances from KB
    for c in candidates:
        c_atom = _prolog_atom(c)
        goals.append(f"assertz(candidate({c_atom}))")
        entry = kb.get(c.lower(), {}) # problem -> what if the object is not in our knowledge base ? 
        for aff in entry.get("affordances", []):
            a_atom = _prolog_atom(aff)
            goals.append(f"assertz(has_affordance({c_atom}, {a_atom}))")
            # Mark CN-confirmed affordances
            sources = entry.get("sources", {}).get(aff, [])
            if any("cn" in s and "csv" not in s for s in sources):
                goals.append(f"assertz(cn_confirmed({c_atom}, {a_atom}))")

    goals.append("run")
    goal_str = ", ".join(goals)

    cmd = ["swipl", "-f", str(PROLOG_FILE), "-g", goal_str]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        output = result.stdout.strip()
        return _parse_prolog_output(output)
    except subprocess.TimeoutExpired:
        return {"selected": "none", "confidence": "timeout", "ambiguous_set": [], "cn_confirmed_set": []}
    except Exception as e:
        return {"selected": "none", "confidence": f"error:{e}", "ambiguous_set": [], "cn_confirmed_set": []}


def _parse_prolog_output(output: str) -> dict:
    """Parses raw text output from the Prolog executable into a dictionary.

    Args:
        output: Raw stdout string from swipl command.

    Returns:
        A dictionary containing parsed Prolog results.
    """
    result = {
        "selected": "none",
        "confidence": "unknown",
        "ambiguous_set": [],
        "cn_confirmed_set": [],
    }

    selected_m = re.search(r"SELECTED=(.+)", output)
    if selected_m:
        result["selected"] = selected_m.group(1).strip().strip("'")

    conf_m = re.search(r"CONFIDENCE=(.+)", output)
    if conf_m:
        result["confidence"] = conf_m.group(1).strip()

    amb_m = re.search(r"AMBIGUOUS_SET=\[(.*?)\]", output)
    if amb_m:
        raw = amb_m.group(1).strip()
        if raw:
            result["ambiguous_set"] = [x.strip().strip("'") for x in raw.split(",")]

    cn_m = re.search(r"CN_CONFIRMED_SET=\[(.*?)\]", output)
    if cn_m:
        raw = cn_m.group(1).strip()
        if raw:
            result["cn_confirmed_set"] = [x.strip().strip("'") for x in raw.split(",")]

    return result


# ---------------------------------------------------------------------------
# Main evaluation loop
# ---------------------------------------------------------------------------
def evaluate(
    verbose: bool = False,
    output_file: str = "results_tool_usage.txt",
    ablation: str = "none",
    limit: int | None = None,
) -> None:
    """Runs the neuro-symbolic multi-choice evaluation for the tool usage task.

    Args:
        verbose: If True, prints detailed evaluation logs. Defaults to False.
        output_file: Path to write the evaluation logs. Defaults to
          "results_tool_usage.txt".
        ablation: Ablation study configuration ('none', 'pure_llm', 'pure_logic',
          or 'no_cot'). Defaults to 'none'.
        limit: If set, limits evaluation to a random sample of N questions.
          Defaults to None.
    """
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Tool Usage")
    print(f"Using model : {MODEL_ID}")
    print(f"Ablation    : {ablation}")
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
    csv_path = BENCHMARK_DIR / "tool_usage_multichoice_questions.csv"
    if not csv_path.exists():
        sys.exit(f"ERROR: Benchmark CSV not found at {csv_path}")
    df = pd.read_csv(csv_path)
    if limit is not None:
        df = df.sample(n=min(limit, len(df)), random_state=42).reset_index(drop=True)
        print(f"[--limit] Running on {len(df)} randomly sampled questions")

    kb = load_kb()

    total = len(df)
    correct = 0

    # Decision breakdown:
    #   neuro_symbolic — full pipeline (affordance extraction + KB exemplars + LLM)
    #   pure_llm       — ablation: LLM picks directly, no affordance step, no KB
    #   pure_logic     — ablation: Prolog direct lookup only, no LLM
    breakdown = {
        "neuro_symbolic": {"correct": 0, "total": 0},
        "pure_llm":       {"correct": 0, "total": 0},
        "pure_logic":     {"correct": 0, "total": 0},
    }

    log = open(output_file, "w", encoding="utf-8")
    log.write("=" * 60 + "\n")
    log.write(f"RESULT LOG — Tool Usage Evaluation\n")
    log.write(f"Model: {MODEL_ID}  |  Ablation: {ablation}\n")
    log.write("=" * 60 + "\n\n")

    aff_cache: dict[str, dict] = {}  # task → affordance extraction result

    for idx, row in tqdm(df.iterrows(), total=total, desc="Eval", mininterval=5.0):
        task         = str(row["Task"])
        ground_truth = str(row["Correct_Tool"]).lower()
        wrong_tools  = ast.literal_eval(str(row["Wrong_Tools"]))
        candidates   = [str(row["Correct_Tool"])] + [str(w) for w in wrong_tools]

        # ------------------------------------------------------------------ #
        # [ABLATION] pure_llm: LLM picks directly — no KB, no affordance step
        # ------------------------------------------------------------------ #
        if ablation == "pure_llm":
            predicted = pure_llm_select(task, candidates)
            is_correct = predicted.lower() == ground_truth
            if is_correct:
                correct += 1
            breakdown["pure_llm"]["total"] += 1
            breakdown["pure_llm"]["correct"] += int(is_correct)
            _write_log_entry(log, {
                "task": task, "candidates": candidates,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "pure_llm",
            }, verbose)
            continue

        # ------------------------------------------------------------------ #
        # Step 1 — NEURAL: extract required affordance from task description
        # ------------------------------------------------------------------ #
        if task not in aff_cache:
            aff_cache[task] = extract_affordance_llm(task, ablation=ablation)
        aff_result   = aff_cache[task]
        required_aff = aff_result.get("affordance", "hold").lower().strip()

        if verbose:
            tqdm.write(f"\n[Task] {task}")
            tqdm.write(f"  Affordance: {required_aff} — {aff_result.get('reasoning', '')}")

        # ------------------------------------------------------------------ #
        # [ABLATION] pure_logic: Prolog direct candidate lookup, no LLM picker
        # ------------------------------------------------------------------ #
        if ablation == "pure_logic":
            prolog_result = run_prolog_solver(required_aff, candidates, kb)
            sel = prolog_result["selected"]
            if sel in ("none", "ambiguous"):
                for syn_aff in AFFORDANCE_SYNONYMS.get(required_aff, []):
                    syn_res = run_prolog_solver(syn_aff, candidates, kb)
                    if syn_res["selected"] not in ("none", "ambiguous"):
                        sel = syn_res["selected"]
                        break
                    if syn_res["selected"] == "ambiguous":
                        sel = (syn_res["cn_confirmed_set"] or syn_res["ambiguous_set"] or candidates)[:1][0]
                        break
            if sel in ("none", "ambiguous"):
                sel = candidates[random.randint(0, len(candidates) - 1)]  # fallback: random candidate
            predicted  = sel
            is_correct = predicted.lower() == ground_truth
            if is_correct:
                correct += 1
            breakdown["pure_logic"]["total"] += 1
            breakdown["pure_logic"]["correct"] += int(is_correct)
            _write_log_entry(log, {
                "task": task, "required_affordance": required_aff,
                "affordance_reasoning": aff_result.get("reasoning", ""),
                "candidates": candidates, "prolog_result": prolog_result,
                "predicted": predicted, "ground_truth": row["Correct_Tool"],
                "correct": is_correct, "mode": "pure_logic",
            }, verbose)
            continue

        # ------------------------------------------------------------------ #
        # Step 2 — SYMBOLIC: KB reverse lookup
        #   Ask: "what objects are known to have this affordance?"
        #   Use those exemplars to ground the LLM's selection rather than
        #   doing a brittle direct lookup on each (possibly unknown) candidate.
        # ------------------------------------------------------------------ #
        syn_list = AFFORDANCE_SYNONYMS.get(required_aff, [])
        matched_aff, exemplars = get_exemplars_for_affordance(
            required_aff, kb, synonyms=syn_list
        )

        if verbose:
            tqdm.write(f"  KB exemplars for '{matched_aff}': {exemplars or '—'}")

        # ------------------------------------------------------------------ #
        # Step 3 — NEURAL: LLM selects, grounded by KB exemplars
        # ------------------------------------------------------------------ #
        if exemplars:
            kb_context = (
                f"Hint: the task requires the ability to '{required_aff}'. "
                f"From a household knowledge base, objects known to have this capability"
                f"{' (or similar: ' + matched_aff + ')' if matched_aff != required_aff else ''}: "
                f"{', '.join(exemplars)}. "
                f"Select the candidate most functionally similar to those examples."
            )
        else:
            kb_context = f"Hint: the task requires the ability to '{required_aff}'."

        predicted  = llm_select_tool(task, candidates, context=kb_context)
        is_correct = predicted.lower() == ground_truth
        if is_correct:
            correct += 1

        breakdown["neuro_symbolic"]["total"] += 1
        breakdown["neuro_symbolic"]["correct"] += int(is_correct)

        _write_log_entry(log, {
            "task": task,
            "required_affordance": required_aff,
            "affordance_reasoning": aff_result.get("reasoning", ""),
            "kb_exemplars": exemplars,
            "matched_affordance": matched_aff,
            "candidates": candidates,
            "predicted": predicted,
            "ground_truth": row["Correct_Tool"],
            "correct": is_correct,
            "mode": "neuro_symbolic",
        }, verbose)

    # ---------------------------------------------------------------------- #
    # Summary
    # ---------------------------------------------------------------------- #
    accuracy = correct / total

    print("\n" + "=" * 40)
    print("FINAL BENCHMARK RESULTS — Tool Usage")
    print("=" * 40)
    print(f"Accuracy: {accuracy:.3f}  ({correct}/{total})")
    print("\nDecision breakdown:")
    for mode_name, counts in breakdown.items():
        if counts["total"] > 0:
            acc = counts["correct"] / counts["total"]
            print(f"  {mode_name:20s}: {counts['correct']:3d}/{counts['total']:3d}  ({acc:.3f})")
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
    print(f"\nResults saved to {output_file}")


def _write_log_entry(log, entry: dict, verbose: bool) -> None:
    """Writes an evaluation trial log entry to the results text file.

    Args:
        log: The opened file object for logging.
        entry: A dictionary containing details of the evaluation trial.
        verbose: If True, prints a summary of the trial to terminal.
    """
    log.write(f"[Task] {entry['task']}\n")
    if "required_affordance" in entry:
        log.write(f"Required affordance : {entry['required_affordance']}\n")
        log.write(f"Reasoning           : {entry.get('affordance_reasoning', '')}\n")
    if "kb_exemplars" in entry:
        matched = entry.get("matched_affordance", "")
        label = f" (via '{matched}')" if matched and matched != entry.get("required_affordance") else ""
        log.write(f"KB exemplars{label}    : {entry['kb_exemplars'] or '—'}\n")
    if "synonym_affordance" in entry:
        log.write(f"Synonym expanded to : {entry['synonym_affordance']}\n")
    log.write(f"Candidates          : {entry['candidates']}\n")
    if "prolog_result" in entry:
        pr = entry["prolog_result"]
        log.write(f"Prolog selected     : {pr['selected']}  [{pr['confidence']}]\n")
        if pr["ambiguous_set"]:
            log.write(f"  Ambiguous set     : {pr['ambiguous_set']}\n")
        if pr["cn_confirmed_set"]:
            log.write(f"  CN confirmed      : {pr['cn_confirmed_set']}\n")
    log.write(f"Predicted           : {entry['predicted']}\n")
    log.write(f"Ground Truth        : {entry['ground_truth']}\n")
    log.write(f"Correct             : {entry['correct']}  [mode: {entry.get('mode','')}]\n")
    log.write("-" * 60 + "\n\n")


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run Tool Usage Neuro-Symbolic Evaluation")
    parser.add_argument("--verbose", action="store_true",
                        help="Print LLM output for every question")
    parser.add_argument("--output_file", type=str, default="./results/results.txt",
                        help="Output file for results")
    parser.add_argument("--ablation", type=str,
                        choices=["none", "pure_llm", "pure_logic", "no_cot"],
                        default="none",
                        help="Ablation mode")
    parser.add_argument("--model", type=str,
                        default="mistral-small-latest",
                        help="Mistral model to use")
    parser.add_argument("--limit", type=int, default=None,
                        help="Randomly sample N questions instead of running the full dataset")
    args = parser.parse_args()

    MODEL_ID = args.model

    evaluate(
        verbose=args.verbose,
        output_file=args.output_file,
        ablation=args.ablation,
        limit=args.limit,
    )
