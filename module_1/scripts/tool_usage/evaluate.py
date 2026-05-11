"""
evaluate_tool_usage.py - Online Neuro-Symbolic Evaluation for Tool Usage Task
==============================================================================
Evaluates the neuro-symbolic pipeline on the Robo-CSK-Benchmark tool_usage task.

For each multi-choice question:
  1. Parse the task, required affordance, correct tool, and wrong tools.
  2. For each candidate tool: extract SOMA features via LLM (neural component).
  3. Run Clingo with the learned hasAffordance rules (symbolic inference).
  4. Pick the candidate whose deduced affordances include the required one.
  5. Before calling the LLM, run a heuristic pre-filter based on SOMA features.
  6. Compare with ground truth. Metrics: accuracy + symbolic recall.

Usage:
    python evaluate.py
    python evaluate.py --num-tests 50
    python evaluate.py --model mistral-large-latest
    python evaluate.py --ablation pure_llm
    python evaluate.py --ablation no_synonyms
==============================================================================
"""

import ast
import csv
import json
import os
import re
import subprocess
import sys
import random
from pathlib import Path
from tqdm import tqdm

SCRIPT_DIR = Path(__file__).parent      # scripts/tool_usage
SCRIPTS_ROOT = SCRIPT_DIR.parent        # scripts
MODULE_DIR = SCRIPTS_ROOT.parent        # module_1

sys.path.insert(0, str(SCRIPTS_ROOT))
from shared.config import get_model, get_provider

# Module-level model — can be overridden via --model CLI argument
EVAL_MODEL = get_model("evaluation")

BENCHMARK_DIR = MODULE_DIR.parent / "Robo-CSK-Benchmark" / "tool_usage"
CSV_FILE = BENCHMARK_DIR / "tool_usage_multichoice_questions.csv"
AFFORDANCE_TASK_MAP = BENCHMARK_DIR / "affordance_task_map.json"
AFFORDANCE_LIST_FILE = BENCHMARK_DIR / "affordances_after_mapping.json"

LEARNED_RULES = MODULE_DIR / "rules" / "tool_usage" / "learned_rules_tool_usage.txt"
TMP_DIR = SCRIPT_DIR / "tmp"
TMP_DIR.mkdir(exist_ok=True)

EVAL_REPORT_PATH = SCRIPT_DIR / "evaluation_report.md"

# ------------------------------------------------------------------------------
# PROVIDER-AWARE LLM CLIENT
# Supports Ollama (local) and Mistral API transparently.
# ------------------------------------------------------------------------------
try:
    from mistralai.client import Mistral as _MistralClient
    _MISTRAL_AVAILABLE = True
except ImportError:
    _MISTRAL_AVAILABLE = False
    _MistralClient = None  # type: ignore

try:
    import ollama as _ollama
    _OLLAMA_AVAILABLE = True
except ImportError:
    _OLLAMA_AVAILABLE = False

_mistral_client_instance = None


def _get_mistral_client():
    global _mistral_client_instance
    if not _MISTRAL_AVAILABLE:
        raise ImportError(
            "mistralai package not installed. Run: pip install mistralai"
        )
    if _mistral_client_instance is None:
        api_key = os.environ.get("MISTRAL_API_KEY")
        if not api_key:
            raise ValueError(
                "MISTRAL_API_KEY environment variable not set. "
                "Export it before running: export MISTRAL_API_KEY=<your_key>"
            )
        _mistral_client_instance = _MistralClient(api_key=api_key)
    return _mistral_client_instance


def llm_chat(messages: list, temperature: float = 0.0,
             json_format: bool = False, model: str = None) -> str:
    """Provider-aware LLM call.

    Automatically routes to Mistral API or Ollama based on the model name.
    Model names containing 'mistral' use the Mistral API; all others use Ollama.
    """
    m = model or EVAL_MODEL
    if get_provider(model=m) == "mistral":
        client = _get_mistral_client()
        kwargs = {
            "model": m,
            "messages": messages,
            "temperature": temperature,
        }
        if json_format:
            kwargs["response_format"] = {"type": "json_object"}
        response = client.chat.complete(**kwargs)
        return response.choices[0].message.content.strip()
    else:
        if not _OLLAMA_AVAILABLE:
            raise ImportError("ollama package not installed. Run: pip install ollama")
        call_kwargs = {
            "model": m,
            "messages": messages,
            "options": {"temperature": temperature},
        }
        if json_format:
            call_kwargs["format"] = "json"
        response = _ollama.chat(**call_kwargs)
        return response["message"]["content"].strip()


# ------------------------------------------------------------------------------
# AFFORDANCE SYNONYM GROUPS
# Semantically equivalent affordances are grouped so that predicting any member
# counts as a match for any other member in the group.
# ------------------------------------------------------------------------------
AFFORDANCE_SYNONYM_GROUPS = [
    {"cut", "chop", "dice", "slit", "carve", "cube", "separate"},
    {"clean", "wash", "wipe", "scrub"},
    {"fix", "repair", "install", "assemble"},
    {"heat", "be_heated", "melt", "warm"},
    {"bore", "drill"},
    {"grasp", "hold", "pick", "handle", "grip"},
    {"illuminate", "display", "light"},
    {"compress", "press", "tamp", "squeeze"},
    {"peel", "skin", "strip"},
    {"poke", "pierce", "puncture", "stab"},
    {"polish", "smoothen", "rub", "file"},
    {"break", "crack", "crumble", "crunch", "crush"},
    {"carry", "lift", "support", "transport"},
    {"contain", "store", "keep"},
    {"mark", "write", "engrave", "label"},
    {"spread", "pour", "dispense"},
    {"cover", "wrap", "protect"},
    {"stir", "mix", "blend", "whisk", "beat"},
    {"screw", "fasten", "tighten"},
    {"sweep", "brush", "dust"},
    {"dig", "scoop", "shovel"},
    {"tie", "bind", "knot"},
    {"cool", "chill", "freeze"},
    {"open", "unlock", "uncap"},
    {"hammer", "nail", "pound"},
    {"dry", "absorb"},
    {"decorate", "beautify", "adorn"},
    {"operate", "control", "activate"},
    {"plug", "connect", "attach"},
    {"eat", "consume", "ingest"},
    {"read", "scan"},
    {"measure", "weigh", "gauge"},
    {"entertain", "amuse", "play"},
    {"dispose", "discard", "throw"},
    {"change", "replace", "swap"},
    {"wrench", "loosen"},
]

# Build reverse lookup: affordance -> its synonym set
_SYNONYM_LOOKUP: dict[str, set[str]] = {}
for _group in AFFORDANCE_SYNONYM_GROUPS:
    for _aff in _group:
        _SYNONYM_LOOKUP[_aff] = _group


def expand_with_synonyms(affordance: str) -> set[str]:
    """Return the synonym set for an affordance, or {affordance} if standalone."""
    return _SYNONYM_LOOKUP.get(affordance, {affordance})


# ------------------------------------------------------------------------------
# AFFORDANCE → SOMA FEATURE HINTS
# Maps strong SOMA feature signals to affordances.
# Used by analyze_tools_pre_llm() to heuristically narrow down candidates
# before invoking the LLM.
# Only DISCRIMINATIVE features are listed (broad roles like toolRole are omitted
# to avoid selecting the wrong tool).
# ------------------------------------------------------------------------------
_AFFORDANCE_SOMA_HINTS: dict[str, list[str]] = {
    # Cutting / blade-based
    "cut":      ["sharp", "hasblade"],
    "chop":     ["sharp", "hasblade"],
    "dice":     ["sharp", "hasblade"],
    "slit":     ["sharp", "hasblade"],
    "carve":    ["sharp", "hasblade"],
    "cube":     ["sharp", "hasblade"],
    "separate": ["hasblade", "sharp"],
    "peel":     ["sharp", "hasblade"],
    "skin":     ["sharp", "hasblade"],
    "strip":    ["hasblade"],
    "crack":    ["sharp"],
    # Drilling / rotation
    "bore":     ["isrotary", "haspointedtip"],
    "drill":    ["isrotary", "haspointedtip"],
    # Piercing
    "poke":     ["haspointedtip"],
    "pierce":   ["haspointedtip"],
    "puncture": ["haspointedtip", "sharp"],
    # Cleaning
    "clean":    ["cleaningtoolrole"],
    "wash":     ["cleaningtoolrole"],
    "wipe":     ["cleaningtoolrole"],
    "scrub":    ["cleaningtoolrole"],
    # Polishing / abrasion
    "polish":   ["hasabrasivesurface"],
    "smoothen": ["hasabrasivesurface"],
    "file":     ["hasabrasivesurface"],
    # Containing / storing
    "contain":  ["hascontainer"],
    "store":    ["hascontainer", "storagecontainerrole"],
    "pour":     ["hascontainer"],
    "keep":     ["hascontainer"],
    # Heating
    "heat":       ["heated", "hasheatelelement"],
    "be_heated":  ["heated", "hasheatelelement"],
    "melt":       ["hasheatelelement", "heated"],
    "warm":       ["heated", "hasheatelelement"],
    # Illuminating / lighting
    "illuminate": ["lightingrole"],
    "light":      ["lightingrole"],
    "display":    ["lightingrole", "electronic"],
    # Flexible / wrap
    "wrap":     ["isflexible", "soft_deformable"],
    "cover":    ["isflexible", "soft_deformable"],
    "spread":   ["isflexible"],
    "tie":      ["isflexible"],
    "bind":     ["isflexible"],
    # Sweeping / brushing
    "sweep":    ["cleaningtoolrole"],
    "brush":    ["cleaningtoolrole"],
    "dust":     ["cleaningtoolrole"],
    # Hammering
    "hammer":   ["heavy", "rigid"],
    "pound":    ["heavy", "rigid"],
    "nail":     ["heavy", "rigid"],
    # Drying / absorbing
    "dry":      ["soft_deformable"],
    "absorb":   ["soft_deformable"],
}


def _soma_hints_for(affordance: str) -> set[str]:
    """Collect all SOMA feature hints for an affordance and its synonyms."""
    hints: set[str] = set()
    for syn in expand_with_synonyms(affordance):
        for h in _AFFORDANCE_SOMA_HINTS.get(syn, []):
            hints.add(h.lower().replace("_", ""))
    return hints


def analyze_tools_pre_llm(all_tools: list, tool_results: dict,
                           required_aff: str) -> str | None:
    """Pre-LLM heuristic: find the unique tool matching the required affordance
    using SOMA feature hints, before calling the LLM.

    Returns the tool name if exactly ONE tool matches, else None.

    This function is called in the fallback path (no Clingo symbolic match) to
    avoid an expensive LLM call when the SOMA features already point to a clear
    winner.
    """
    hints = _soma_hints_for(required_aff)
    if not hints:
        return None

    candidate_tools = []
    for tool in all_tools:
        info = tool_results.get(tool, {})
        soma = info.get("soma", {})

        # Flatten all SOMA feature values for this tool into a normalised set
        all_features: set[str] = set()
        for key in ("hasPhysicalQuality", "hasRole", "affordsTask"):
            vals = soma.get(key, [])
            if isinstance(vals, str):
                vals = [vals]
            for v in vals:
                # Normalise: lowercase, strip underscores/spaces for fuzzy matching
                all_features.add(v.lower().replace("_", "").replace(" ", ""))

        # Check if any hint overlaps with this tool's features
        for hint in hints:
            if any(hint in feat or feat in hint for feat in all_features):
                candidate_tools.append(tool)
                break

    if len(candidate_tools) == 1:
        return candidate_tools[0]
    return None


# ------------------------------------------------------------------------------
# NEURO PROMPT (SOMA Feature Extraction) — same ontology as tidy_up
# ------------------------------------------------------------------------------
SYSTEM_PROMPT = """You are a semantic annotator for a domestic robot knowledge base.
Given an object and its ConceptNet associations, assign SOMA ontology labels.
Use YOUR OWN KNOWLEDGE as primary truth. ConceptNet data are noisy — ignore them if wrong.

Return a JSON with EXACTLY three keys. Use ONLY values from these lists:

"hasPhysicalQuality" — pick from:
  RequiresCooling (dairy, fresh meat — needs fridge)
  RequiresFreezing (ice cream, frozen food — needs freezer)
  Perishable (any food, drink, medicine — expires)
  Heated (stove, oven, iron — object PRODUCES heat. NOT fridge, NOT air conditioning)
  Liquid (water, oil, shampoo — object IS a liquid at room temperature. NOT bottles, NOT faucets)
  Granular (salt, sugar, rice, flour — object IS powder/grains. NOT cookies, NOT fruit)
  Gas_Aerosol (spray, deodorant — gaseous)
  Heavy (furniture, appliances >5kg)
  Lightweight (pen, phone, spoon <1kg)
  Fragile (glass, ceramics, electronics — breaks easily)
  Rigid (metal, wood, plastic — does not bend)
  Soft_Deformable (fabric, pillow, sponge — bends/squishes)
  Sharp (knife, blade, needle — can cut. NOT fork, NOT spatula)
  Electronic (has battery or plug)
  Toxic_Hazardous (bleach, pesticide, paint — dangerous to ingest/touch)
  Flammable (paper, gas, alcohol — catches fire)
  Washable (clothing, towel — can be machine/hand washed)
  HasBlade (knife, saw, scissors, axe — has a sharp cutting edge)
  HasPointedTip (needle, awl, drill bit, nail — pointed end for piercing)
  IsRotary (drill, screwdriver, grinder — operates by rotation)
  HasAbrasiveSurface (sandpaper, file, grindstone — rough surface for grinding)
  HasContainer (bowl, bucket, bottle, cup — can hold contents)
  HasHeatElement (soldering iron, heat gun, welding torch — produces focused heat)
  IsFlexible (rope, wire, hose, tape — bends without breaking. NOT rigid tools)
  HasTeeth (saw, comb, rake, gear — tooth-like serrations)

"hasRole" — pick from:
  ConsumableRole (food, drink, medicine — gets consumed. NEVER containers or tools)
  UtensilRole (fork, knife, spatula, plate, cup — ONLY kitchen/table items for eating or food prep)
  CookwareRole (pot, pan, baking tray — for cooking ON heat)
  ToolRole (hammer, drill, screwdriver, brush, scissors — general-purpose tools and instruments)
  CleaningToolRole (broom, mop, sponge, detergent — for cleaning the house)
  ApplianceRole (fridge, washing machine, TV — powered household device)
  StorageContainerRole (box, jar, shelf, closet — holds other things)
  FurnitureRole (chair, table, sofa, bed — large, inhabits a room)
  BeddingRole (blanket, pillow, sheet — for sleeping)
  LightingRole (lamp, bulb, candle — produces light)
  ClothingRole (shirt, pants, shoes, hat — worn on the body)
  EntertainmentRole (toy, teddy bear, board game, stuffed animal, puzzle — for play/fun)
  MusicalInstrumentRole (guitar, piano, drum)
  DecorationRole (painting, vase, statue, ornament — aesthetic)
  DocumentRole (book, notebook, letter, newspaper — readable)
  WasteRole (trash, garbage, refuse — to be disposed)
  SafetyEquipmentRole (fire extinguisher, bandaid, first aid kit, smoke detector)

"affordsTask" — pick from:
  FoodPreparationTask (knife, pan, blender — DIRECTLY cuts/cooks/mixes food. NOT hammer, NOT cleaning tools)
  EatingDrinkingTask (food, drink, plate, fork — consumed or used AT the table during a meal)
  MaintenanceTask (hammer, drill, paint, ladder — fix/build/repair things)
  CleaningTask (broom, mop, detergent — clean the house. NOT personal hygiene)
  WasteDisposalTask (trash can, garbage bag — dispose of waste)
  HygieneTask (toothbrush, soap, shampoo, bandaid — personal body care)
  DressingTask (shirt, pants, shoes — getting dressed)
  StorageTask (shelf, box, closet — storing objects)
  SleepingTask (bed, blanket, pillow — sleeping)
  WorkStudyTask (desk, pen, computer — work or study activities)
  LeisureTask (TV, toy, book, game — fun and relaxation)
  GardeningTask (shovel, hose, fertilizer — garden work)

COMMON MISTAKES TO AVOID:
- Fridge/freezer/air conditioner → NOT Heated! They COOL things. Use RequiresCooling or just Electronic+Heavy.
- Chocolate/butter/fruit → NOT Liquid! They are solid at room temperature.
- Cookies/fruit → NOT Granular! They are solid pieces.
- Teddy bear/stuffed animal → EntertainmentRole, NOT FurnitureRole.
- Bandaid/plaster → SafetyEquipmentRole + HygieneTask, NOT Liquid or ConsumableRole.
- Hammer/vice → MaintenanceTask, NOT FoodPreparationTask.
- Umbrella/hairbrush → ToolRole, NOT UtensilRole.
- Egg shells → WasteRole, NOT ConsumableRole.
- Saw → HasBlade AND HasTeeth. Knife → HasBlade but NOT HasTeeth.
- Drill → IsRotary AND HasPointedTip. Screwdriver → IsRotary but NOT HasPointedTip.
- Bowl/cup → HasContainer. Knife → NOT HasContainer.
- Rope/hose → IsFlexible. Hammer → NOT IsFlexible.

EXAMPLES:
knife:         {{"hasPhysicalQuality":["Sharp","Rigid"],               "hasRole":["UtensilRole"],            "affordsTask":["FoodPreparationTask"]}}
shampoo:       {{"hasPhysicalQuality":["Liquid"],                      "hasRole":["CleaningToolRole"],       "affordsTask":["HygieneTask"]}}
fridge:        {{"hasPhysicalQuality":["Electronic","Heavy"],          "hasRole":["ApplianceRole"],          "affordsTask":["StorageTask"]}}
teddy bear:    {{"hasPhysicalQuality":["Soft_Deformable","Lightweight"],"hasRole":["EntertainmentRole"],     "affordsTask":["LeisureTask"]}}
bandaid:       {{"hasPhysicalQuality":["Lightweight"],                 "hasRole":["SafetyEquipmentRole"],    "affordsTask":["HygieneTask"]}}
chocolate:     {{"hasPhysicalQuality":["Perishable"],                  "hasRole":["ConsumableRole"],         "affordsTask":["EatingDrinkingTask"]}}
hammer:        {{"hasPhysicalQuality":["Heavy","Rigid"],               "hasRole":["ToolRole"],               "affordsTask":["MaintenanceTask"]}}
saw:           {{"hasPhysicalQuality":["Heavy","Rigid","HasBlade","HasTeeth"],"hasRole":["ToolRole"],             "affordsTask":["MaintenanceTask"]}}
drill:         {{"hasPhysicalQuality":["Heavy","Rigid","IsRotary","HasPointedTip"],"hasRole":["ToolRole"],       "affordsTask":["MaintenanceTask"]}}
blanket:       {{"hasPhysicalQuality":["Soft_Deformable","Washable"],  "hasRole":["BeddingRole"],            "affordsTask":["SleepingTask"]}}

Return ONLY the JSON. No explanation, no markdown, no extra text.
"""


def query_soma(object_name: str) -> dict:
    """Query the configured LLM to extract SOMA features for an unseen object."""
    text = llm_chat(
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": f"Object: {object_name}"},
        ],
        temperature=0.0,
        json_format=True,
    )
    match = re.search(r"\{.*\}", text, re.DOTALL)
    if match:
        text = match.group(0)
    try:
        return json.loads(text)
    except Exception:
        print(f"JSON Parsing Error on {object_name}: {text}")
        return {"hasRole": [], "affordsTask": [], "hasPhysicalQuality": []}


# Keep the old name as an alias so any external callers still work
query_ollama_soma = query_soma


# ------------------------------------------------------------------------------
# SYMBOLIC INFERENCE (Clingo)
# ------------------------------------------------------------------------------

def extract_learned_rules(rules_path: Path, dest_lp_path: Path):
    """Extract learned rules from LLM output, stripping comments."""
    if not rules_path.exists():
        raise FileNotFoundError(f"Learned rules not found at {rules_path}")

    rules = []
    with open(rules_path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line and not line.startswith("%"):
                rules.append(line)

    with open(dest_lp_path, "w", encoding="utf-8") as f:
        f.write("% Learned hasAffordance rules extracted from LLM induction\n")
        f.write("\n".join(rules))
        f.write("\n\n#show hasAffordance/2.\n")


def format_soma_facts(obj_id: str, soma_data: dict) -> str:
    """Format SOMA JSON data into Prolog facts."""
    facts = [f"obj({obj_id})."]

    for key, predicate in [("hasPhysicalQuality", "hasPhysicalQuality"),
                           ("hasRole", "hasRole"),
                           ("affordsTask", "affordsTask")]:
        vals = soma_data.get(key, [])
        if isinstance(vals, str):
            vals = [vals]
        for v in vals:
            val_clean = v.strip()
            if val_clean:
                val_clean = val_clean[0].lower() + val_clean[1:]
                facts.append(f"{predicate}({obj_id}, {val_clean}).")

    return "\n".join(facts)


def run_clingo_inference(rules_path: Path, facts_str: str) -> list:
    """Run Clingo with the learned rules and return deduced affordances."""
    facts_file = TMP_DIR / "temp_facts.lp"
    with open(facts_file, "w") as f:
        f.write(facts_str)

    result = subprocess.run(
        ["clingo", str(rules_path), str(facts_file), "0", "--out-ifs=\n"],
        capture_output=True, text=True
    )

    deduced_affordances = []
    for line in result.stdout.split("\n"):
        line = line.strip()
        matches = re.finditer(r'hasAffordance\([^,]+,([^)]+)\)', line)
        for m in matches:
            deduced_affordances.append(m.group(1).strip())

    return list(set(deduced_affordances))


def clean_affordance_id(name: str) -> str:
    """Convert affordance name to Prolog-safe identifier."""
    return name.strip().lower().replace(" ", "_").replace("-", "_")


def load_canonical_affordances() -> list[str]:
    with open(AFFORDANCE_LIST_FILE, encoding="utf-8") as f:
        raw = json.load(f)
    return [clean_affordance_id(a) for a in raw]


def load_affordance_task_map() -> dict[str, list[str]]:
    """Load the affordance -> example tasks mapping for few-shot prompting."""
    if not AFFORDANCE_TASK_MAP.exists():
        return {}
    with open(AFFORDANCE_TASK_MAP, encoding="utf-8") as f:
        raw = json.load(f)
    return {clean_affordance_id(k): v for k, v in raw.items()}


def predict_required_affordance(task_text: str, canonical_affordances: list[str],
                                aff_task_map: dict[str, list[str]]) -> str:
    """Infer the affordance required by the task text.

    Uses a Zero-Shot Chain-of-Thought approach to prevent data leakage.
    """
    affordances_str = ", ".join(sorted(set(canonical_affordances)))

    system = (
        "You are a household robot reasoning about object affordances. "
        "Given a household task, you must pick the SINGLE most relevant affordance "
        "from the provided list. "
        "First, briefly reason about the physical action required. "
        "Then, output the final exact affordance string inside <affordance></affordance> tags."
    )
    user = (
        f"Valid affordances:\n{affordances_str}\n\n"
        f"Task: \"{task_text}\"\n"
        "Reasoning and final answer:"
    )
    text = llm_chat(
        messages=[{"role": "system", "content": system},
                  {"role": "user", "content": user}],
        temperature=0.0,
    )

    # Extract the affordance from the XML tags
    match = re.search(r'<affordance>\s*([^<]+?)\s*</affordance>', text, re.IGNORECASE)
    if match:
        pred_raw = match.group(1)
    else:
        pred_raw = text.split('\n')[-1]

    pred_raw = pred_raw.strip().strip("\"'`").lower()
    pred = clean_affordance_id(pred_raw)

    if pred in set(canonical_affordances):
        return pred
    for a in canonical_affordances:
        if a in pred or pred in a:
            return a

    # Last resort: scan full response text
    for a in canonical_affordances:
        if a in text.lower():
            return a

    return canonical_affordances[0] if canonical_affordances else pred


def llm_fallback_tool_selection(task_text: str, tools: list[str],
                                tool_results: dict = None) -> str:
    """Direct LLM selection when symbolic matching finds no unique tool.

    When tool_results is provided, includes each tool's SOMA features
    in the prompt to give the LLM richer context for selection.
    """
    if tool_results:
        tool_descriptions = []
        for t in tools:
            info = tool_results.get(t, {})
            soma = info.get("soma", {})
            roles = ", ".join(soma.get("hasRole", []) if isinstance(soma.get("hasRole", []), list) else [soma.get("hasRole", "")])
            tasks = ", ".join(soma.get("affordsTask", []) if isinstance(soma.get("affordsTask", []), list) else [soma.get("affordsTask", "")])
            quals = ", ".join(soma.get("hasPhysicalQuality", []) if isinstance(soma.get("hasPhysicalQuality", []), list) else [soma.get("hasPhysicalQuality", "")])
            deduced = ", ".join(info.get("deduced_affordances", []))
            desc = f"- {t}: roles=[{roles}], tasks=[{tasks}], qualities=[{quals}], affordances=[{deduced}]"
            tool_descriptions.append(desc)
        tools_block = "\n".join(tool_descriptions)
    else:
        tools_block = ", ".join(tools)

    system = (
        "You are a household robot. Given a task and a list of tools with "
        "their properties, pick the SINGLE best tool to accomplish the task. "
        "Output ONLY the tool name exactly as listed, nothing else."
    )
    user = (
        f"Task: {task_text}\n"
        f"Tools:\n{tools_block}\n"
        "Best tool:"
    )
    pred = llm_chat(
        messages=[{"role": "system", "content": system},
                  {"role": "user", "content": user}],
        temperature=0.0,
    )
    pred = pred.strip().strip("\"'`").lower()
    for t in tools:
        if t.lower() == pred:
            return t
    for t in tools:
        if t.lower() in pred or pred in t.lower():
            return t
    return sorted(tools)[0]


# ------------------------------------------------------------------------------
# MAIN PIPELINE
# ------------------------------------------------------------------------------

def run_evaluation(num_tests=None, ablation: str = "none"):
    """Run the tool usage evaluation.

    Parameters
    ----------
    num_tests : int | None
        Limit the number of test questions (None = all).
    ablation : str
        Ablation mode:
          "none"        — Full neuro-symbolic pipeline (default).
          "pure_llm"    — Skip Clingo inference; use LLM for all selections.
          "no_synonyms" — Skip synonym expansion in symbolic matching.
    """
    print("=" * 60)
    print(f"Neuro-Symbolic Evaluation: Tool Usage Task")
    print(f"  Model:    {EVAL_MODEL}")
    print(f"  Ablation: {ablation}")
    print("=" * 60)

    # --- 1. Prepare Rules ---
    rules_lp = TMP_DIR / "learned_rules_tool_usage.lp"
    if ablation != "pure_llm":
        print(f"Extracting rules from {LEARNED_RULES.name}...")
        extract_learned_rules(LEARNED_RULES, rules_lp)

    # --- 2. Read Benchmark ---
    print("Reading Robo-CSK Benchmark (tool_usage)...")
    test_cases = []
    with open(CSV_FILE, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            task_name = row["Task"].strip()
            gold_affordance = clean_affordance_id(row["Affordance"].strip())
            correct_tool = row["Correct_Tool"].strip()
            wrong_tools = ast.literal_eval(row["Wrong_Tools"])

            test_cases.append({
                "task": task_name,
                "gold_affordance": gold_affordance,
                "correct_tool": correct_tool,
                "wrong_tools": wrong_tools,
                "all_tools": [correct_tool] + wrong_tools,
            })

    random.seed(42)
    random.shuffle(test_cases)

    if num_tests and num_tests < len(test_cases):
        test_cases = test_cases[:num_tests]

    print(f"Selected {len(test_cases)} test questions.")

    correct_count = 0
    correct_in_matching_count = 0   # NEW: correct tool was in symbolic matching set
    pre_llm_hint_count = 0          # NEW: tool selected via SOMA hint (no LLM needed)
    results_log = []

    soma_cache = {}
    canonical_affordances = load_canonical_affordances()
    aff_task_map = load_affordance_task_map()

    for case in tqdm(test_cases, mininterval=10.0):
        task_name = case["task"]
        gold_aff = case["gold_affordance"]
        correct_tool = case["correct_tool"]
        all_tools = case["all_tools"]

        required_aff = predict_required_affordance(task_name, canonical_affordances, aff_task_map)

        tool_results = {}
        matching_tools = []
        selection_method = "symbolic"  # will be updated below

        # --- Per-tool SOMA extraction (always done for context richness) ---
        for tool_name in all_tools:
            obj_id = re.sub(r'[^a-zA-Z0-9]', '_', tool_name).lower()
            if obj_id[0].isdigit():
                obj_id = "o_" + obj_id

            # Neuro: LLM SOMA Extraction (cached)
            if tool_name not in soma_cache:
                soma_cache[tool_name] = query_soma(tool_name)
            soma_data = soma_cache[tool_name]

            if ablation == "pure_llm":
                # Skip symbolic inference entirely
                tool_results[tool_name] = {
                    "obj_id": obj_id,
                    "soma": soma_data,
                    "deduced_affordances": [],
                    "has_required": False,
                    "matched_via_synonym": False,
                    "matched_synonyms": set(),
                }
            else:
                # Symbolic: format facts and run Clingo
                facts_str = format_soma_facts(obj_id, soma_data)
                deduced = run_clingo_inference(rules_lp, facts_str)

                if ablation == "no_synonyms":
                    # Direct match only (no synonym expansion)
                    has_match = required_aff in set(deduced)
                    matched_synonyms: set[str] = {required_aff} if has_match else set()
                    matched_via_synonym = False
                else:
                    # Full pipeline: synonym-expanded matching
                    synonym_set = expand_with_synonyms(required_aff)
                    deduced_set = set(deduced)
                    has_match = bool(synonym_set & deduced_set)
                    matched_synonyms = synonym_set & deduced_set
                    matched_via_synonym = bool(matched_synonyms - {required_aff})

                tool_results[tool_name] = {
                    "obj_id": obj_id,
                    "soma": soma_data,
                    "deduced_affordances": deduced,
                    "has_required": has_match,
                    "matched_via_synonym": matched_via_synonym,
                    "matched_synonyms": matched_synonyms,
                }

        # --- Tool Selection ---
        if ablation == "pure_llm":
            # Pure LLM baseline: skip all symbolic logic
            predicted_tool = llm_fallback_tool_selection(task_name, all_tools, tool_results)
            matching_tools = []
            selection_method = "pure_llm"
        else:
            matching_tools = [t for t in all_tools if tool_results[t]["has_required"]]

            if len(matching_tools) == 1:
                predicted_tool = matching_tools[0]
                selection_method = "symbolic_single"
            elif len(matching_tools) > 1:
                predicted_tool = llm_fallback_tool_selection(task_name, matching_tools, tool_results)
                selection_method = "llm_tiebreak"
            else:
                # No symbolic match — try SOMA-hint pre-filter before calling LLM
                pre_llm_choice = analyze_tools_pre_llm(all_tools, tool_results, required_aff)
                if pre_llm_choice is not None:
                    predicted_tool = pre_llm_choice
                    selection_method = "soma_hint"
                    pre_llm_hint_count += 1
                else:
                    predicted_tool = llm_fallback_tool_selection(task_name, all_tools, tool_results)
                    selection_method = "llm_fallback"

        is_correct = predicted_tool.lower() == correct_tool.lower()
        if is_correct:
            correct_count += 1

        # NEW METRIC: was the correct tool in the symbolic matching set?
        correct_in_matching = correct_tool in matching_tools
        if correct_in_matching:
            correct_in_matching_count += 1

        results_log.append({
            "task": task_name,
            "required_affordance_pred": required_aff,
            "required_affordance_gold": gold_aff,
            "affordance_pred_correct": (required_aff == gold_aff),
            "correct_tool": correct_tool,
            "predicted_tool": predicted_tool,
            "is_correct": is_correct,
            "matching_tools": matching_tools,
            "correct_in_matching": correct_in_matching,
            "selection_method": selection_method,
            "tool_details": tool_results,
        })

    accuracy = correct_count / len(test_cases) * 100
    symbolic_recall = correct_in_matching_count / len(test_cases) * 100

    print(f"\nEvaluation Complete!")
    print(f"  Correct: {correct_count}/{len(test_cases)}")
    print(f"  Accuracy: {accuracy:.2f}%")

    # Per-affordance breakdown
    aff_correct = {}
    aff_total = {}
    for res in results_log:
        aff = res["required_affordance_gold"]
        aff_total[aff] = aff_total.get(aff, 0) + 1
        if res["is_correct"]:
            aff_correct[aff] = aff_correct.get(aff, 0) + 1

    print(f"\n{'─' * 60}")
    print(f"{'AFFORDANCE':<22} {'CORRECT':>7} {'TOTAL':>7} {'ACC':>8}")
    print(f"{'─' * 60}")
    for aff in sorted(aff_total.keys()):
        corr = aff_correct.get(aff, 0)
        tot = aff_total[aff]
        acc = corr / tot * 100
        print(f"{aff:<22} {corr:>7} {tot:>7} {acc:>7.1f}%")

    # Match diagnostics
    no_match = sum(1 for r in results_log if not r["matching_tools"] and r["selection_method"] != "pure_llm")
    multi_match = sum(1 for r in results_log if len(r["matching_tools"]) > 1)
    single_match = sum(1 for r in results_log if len(r["matching_tools"]) == 1)
    soma_hint_selected = sum(1 for r in results_log if r["selection_method"] == "soma_hint")
    llm_fallback_count = sum(1 for r in results_log if r["selection_method"] == "llm_fallback")
    llm_tiebreak_count = sum(1 for r in results_log if r["selection_method"] == "llm_tiebreak")

    aff_pred_acc = sum(1 for r in results_log if r["affordance_pred_correct"]) / len(results_log) * 100
    aff_pred_synonym_acc = sum(
        1 for r in results_log
        if r["affordance_pred_correct"] or
           r["required_affordance_gold"] in expand_with_synonyms(r["required_affordance_pred"])
    ) / len(results_log) * 100

    synonym_gained = 0
    for r in results_log:
        if r["matching_tools"]:
            for t in r["matching_tools"]:
                if r["tool_details"][t].get("matched_via_synonym", False):
                    synonym_gained += 1
                    break

    print(f"\n{'─' * 60}")
    print(f"Match diagnostics:")
    print(f"  Single match (ideal):        {single_match:>4} ({single_match/len(test_cases)*100:.1f}%)")
    print(f"  Multiple matches (LLM tie):  {multi_match:>4} ({multi_match/len(test_cases)*100:.1f}%)")
    if ablation != "pure_llm":
        print(f"  No symbolic match:           {no_match:>4} ({no_match/len(test_cases)*100:.1f}%)")
        print(f"    → SOMA-hint selected:      {soma_hint_selected:>4} ({soma_hint_selected/len(test_cases)*100:.1f}%)")
        print(f"    → LLM fallback:            {llm_fallback_count:>4} ({llm_fallback_count/len(test_cases)*100:.1f}%)")
    print(f"  Matches gained via synonyms: {synonym_gained:>4}")
    print(f"\nNew metric — Symbolic Recall (correct tool in matching set):")
    print(f"  {correct_in_matching_count}/{len(test_cases)} = {symbolic_recall:.1f}%")
    print(f"\nAffordance prediction accuracy (exact):      {aff_pred_acc:.1f}%")
    print(f"Affordance prediction accuracy (synonyms):   {aff_pred_synonym_acc:.1f}%")

    # --- Save Report ---
    if ablation == "none":
        report_path = EVAL_REPORT_PATH
    else:
        report_path = SCRIPT_DIR / f"evaluation_report_{ablation}.md"

    with open(report_path, "w", encoding="utf-8") as f:
        f.write("# Online Phase Evaluation Report — Tool Usage Task\n\n")
        f.write(f"Evaluation of the Neuro-Symbolic pipeline against the "
                f"Robo-CSK-Benchmark tool_usage task.\n\n")
        f.write(f"- **Model**: `{EVAL_MODEL}`\n")
        f.write(f"- **Ablation mode**: `{ablation}`\n")
        f.write(f"- **Total Questions Tested**: {len(test_cases)}\n")
        f.write(f"- **Accuracy**: {accuracy:.2f}%\n")
        f.write(f"- **Correct Predictions**: {correct_count}/{len(test_cases)}\n")
        f.write(f"- **Symbolic Recall** (correct tool in matching set): "
                f"{correct_in_matching_count}/{len(test_cases)} = {symbolic_recall:.1f}%\n")
        f.write(f"- **Affordance Prediction Accuracy (exact)**: {aff_pred_acc:.1f}%\n")
        f.write(f"- **Affordance Prediction Accuracy (with synonyms)**: {aff_pred_synonym_acc:.1f}%\n\n")

        f.write("### Match Diagnostics\n")
        f.write(f"| Metric | Count | % |\n|---|---|---|\n")
        f.write(f"| Single symbolic match | {single_match} | {single_match/len(test_cases)*100:.1f}% |\n")
        f.write(f"| Multiple symbolic matches (LLM tie-break) | {multi_match} | {multi_match/len(test_cases)*100:.1f}% |\n")
        if ablation != "pure_llm":
            f.write(f"| No symbolic match | {no_match} | {no_match/len(test_cases)*100:.1f}% |\n")
            f.write(f"| &nbsp;&nbsp;→ SOMA-hint pre-filter selected | {soma_hint_selected} | {soma_hint_selected/len(test_cases)*100:.1f}% |\n")
            f.write(f"| &nbsp;&nbsp;→ LLM fallback | {llm_fallback_count} | {llm_fallback_count/len(test_cases)*100:.1f}% |\n")
        f.write(f"| Matches gained via synonym expansion | {synonym_gained} | — |\n\n")

        f.write("### Per-Affordance Accuracy\n")
        f.write("| Affordance | Correct | Total | Accuracy |\n")
        f.write("|------------|---------|-------|----------|\n")
        for aff in sorted(aff_total.keys()):
            corr = aff_correct.get(aff, 0)
            tot = aff_total[aff]
            acc = corr / tot * 100
            f.write(f"| {aff} | {corr} | {tot} | {acc:.1f}% |\n")
        f.write("\n")

        f.write("## Test Cases Log\n\n")

        def get_list(d, k):
            v = d.get(k, [])
            return v if isinstance(v, list) else [v]

        for res in results_log:
            status = "CORRECT" if res["is_correct"] else "WRONG"
            f.write(f"### {res['task']} ({status})\n")
            f.write(f"- **Selection method**: {res['selection_method']}\n")
            f.write(f"- **Required Affordance (pred)**: {res['required_affordance_pred']}\n")
            f.write(f"- **Required Affordance (gold)**: {res['required_affordance_gold']}\n")
            f.write(f"- **Correct Tool**: {res['correct_tool']}\n")
            f.write(f"- **Predicted Tool**: {res['predicted_tool']}\n")
            f.write(f"- **Matching Tools (symbolic)**: {', '.join(res['matching_tools']) if res['matching_tools'] else 'None'}\n")
            f.write(f"- **Correct tool in symbolic match**: {'Yes' if res['correct_in_matching'] else 'No'}\n")

            correct_details = res["tool_details"].get(res["correct_tool"], {})
            if correct_details:
                soma = correct_details.get("soma", {})
                f.write(f"- **Correct Tool SOMA Features**:\n")
                f.write(f"  - Roles: {', '.join(get_list(soma, 'hasRole'))}\n")
                f.write(f"  - Tasks: {', '.join(get_list(soma, 'affordsTask'))}\n")
                f.write(f"  - Qualities: {', '.join(get_list(soma, 'hasPhysicalQuality'))}\n")
                f.write(f"  - Deduced Affordances: "
                        f"{', '.join(correct_details.get('deduced_affordances', [])) or 'None'}\n")
                matched_syns = correct_details.get('matched_synonyms', set())
                if matched_syns:
                    f.write(f"  - Matched via synonyms: {', '.join(sorted(matched_syns))}\n")
            f.write("\n")

    print(f"\nDetailed report saved to {report_path}")


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(
        description="Neuro-Symbolic Tool Usage Evaluation"
    )
    parser.add_argument(
        "--num-tests", type=int, default=None,
        help="Number of questions to evaluate (default: all)"
    )
    parser.add_argument(
        "--model", type=str, default=None,
        help="Override the evaluation model (e.g. mistral-large-latest, llama3.1)"
    )
    parser.add_argument(
        "--ablation", type=str, default="none",
        choices=["none", "pure_llm", "no_synonyms"],
        help=(
            "Ablation mode: "
            "'none' = full pipeline (default); "
            "'pure_llm' = skip Clingo, LLM selects all tools; "
            "'no_synonyms' = no synonym expansion in matching"
        )
    )
    args = parser.parse_args()

    if args.model:
        EVAL_MODEL = args.model

    run_evaluation(num_tests=args.num_tests, ablation=args.ablation)
