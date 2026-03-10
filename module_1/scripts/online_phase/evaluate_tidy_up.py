import csv
import ast
import json
import re
import subprocess
import sys
from pathlib import Path
from tqdm import tqdm
import ollama

SCRIPT_DIR = Path(__file__).parent      # online_phase
SCRIPTS_ROOT = SCRIPT_DIR.parent      # scripts
MODULE_DIR = SCRIPTS_ROOT.parent      # module_1
DATA_DIR = MODULE_DIR.parent / "Robo-CSK-Benchmark" / "tidy_up" # thesis/Robo-CSK-Benchmark/tidy_up
CSV_FILE = DATA_DIR / "tidy_up_data.csv"
ILASP_OUT = MODULE_DIR / "rules" / "learned_rules_mvp.txt"
TMP_DIR = SCRIPT_DIR / "tmp"
TMP_DIR.mkdir(exist_ok=True)

PROMPTING_DIR = MODULE_DIR.parent / "Robo-CSK-Benchmark" / "tidy_up" / "prompting"
sys.path.append(str(PROMPTING_DIR))
import metric_calculator

EVAL_REPORT_PATH = SCRIPT_DIR / "evaluation_report.md"

LOCATION_MAP = {
    'kitchen': 'kitchen',
    'bathroom': 'bathroom', 'washroom': 'bathroom',
    'bedroom': 'bedroom', 'nursery': 'bedroom', "childs room": "bedroom", "child's bedroom": "bedroom", "cash's room": "bedroom", "teenager's bedroom": "bedroom",
    'living room': 'living_room', 'family room': 'living_room', 'sitting room': 'living_room', 'den': 'living_room', 'livingroom': 'living_room', 'living rooms': 'living_room', 'loungeroom': 'living_room', 'lounge': 'living_room', 'parlor': 'living_room', 'television room': 'living_room', 'playroom': 'living_room',
    'dining room': 'dining_room',
    'home office': 'home_office', 'study': 'home_office', 'library': 'library',
    'garage': 'garage', 'workshop': 'garage',
    'garden': 'garden', 'balcony': 'garden', 'porch': 'garden', 'terrace': 'garden', 'greenhouse': 'garden', 'backyard': 'garden',
    'laundry room': 'laundry_room', 'utility room': 'laundry_room', 'exercise room': 'laundry_room',
    'pantry': 'pantry', 'pantry room': 'pantry',
    'closet': 'closet', 'dressing room': 'closet', 'wardrobe': 'closet',
    'storage room': 'storage_room', 'attic': 'storage_room', 'basement': 'storage_room', 'cellar': 'storage_room', 'wine cellar': 'storage_room', 'loft': 'storage_room',
    'hallway': 'hallway', 'foyer': 'hallway', 'entryway': 'hallway', 'lobby': 'hallway', 'corridor': 'hallway', "waiting room": "hallway",
    
    'fridge': 'fridge', 'refrigerator': 'fridge', 'icebox': 'fridge', 'freezer': 'fridge',
    'drawer': 'drawer',
    'shelf': 'shelf', 'bookshelf': 'shelf',
    'table': 'table', 'desk': 'table', 'counter': 'table', "countertop": "table",
    'cabinet': 'cabinet', 'cupboard': 'cabinet', 'chest': 'cabinet', 'dresser': 'cabinet', 'bureau': 'cabinet',
    'bed': 'bed',
    'sink': 'sink', 'dishwasher': 'sink',
    'trash': 'trash', 'garbage': 'trash', 'dumpster': 'trash', "garbagecan": 'trash', "dustbin": "trash"
}

def map_location(loc_str):
    return LOCATION_MAP.get(loc_str.lower().strip())

# ------------------------------------------------------------------------------
# NEURO PROMPT (SOMA Feature Extraction)
# ------------------------------------------------------------------------------
SYSTEM_PROMPT = """You are a semantic annotator for a domestic robot knowledge base.
Given an object, assign SOMA ontology labels based on its physical properties and intended use.

You MUST return a valid JSON object with EXACTLY these three keys:
"hasPhysicalQuality", "hasRole", "affordsTask".

For each key, provide a list of values CHOSEN STRICTLY FROM THE ALLOWED LISTS BELOW. DO NOT INVENT NEW CLASSES.
If none apply, return an empty list `[]` for that key.

"hasPhysicalQuality" allowed ONLY: RequiresCooling, RequiresFreezing, Perishable, Heated, Liquid, Granular, Gas_Aerosol, Heavy, Lightweight, Fragile, Rigid, Soft_Deformable, Sharp, Electronic, Toxic_Hazardous, Flammable, Washable

"hasRole" allowed ONLY: ConsumableRole, UtensilRole, CookwareRole, ToolRole, CleaningToolRole, ApplianceRole, StorageContainerRole, FurnitureRole, BeddingRole, LightingRole, ClothingRole, EntertainmentRole, MusicalInstrumentRole, DecorationRole, DocumentRole, WasteRole, SafetyEquipmentRole

"affordsTask" allowed ONLY: FoodPreparationTask, EatingDrinkingTask, MaintenanceTask, CleaningTask, WasteDisposalTask, HygieneTask, DressingTask, StorageTask, SleepingTask, WorkStudyTask, LeisureTask, GardeningTask

CRITICAL: Return ONLY raw, valid JSON containing arrays. DO NOT invent new roles like ArtSuppliesRole. Only pick from the allowed list.
"""

def query_ollama_soma(object_name: str) -> dict:
    """Query Llama to extract SOMA features for an unseen object."""
    response = ollama.chat(
        model='llama3.1',
        format='json',
        options={"temperature": 0.0}, # deterministic as possible
        messages=[
            {'role': 'system', 'content': SYSTEM_PROMPT},
            {'role': 'user', 'content': f"Object: {object_name}"}
        ]
    )
    
    text = response['message']['content']
    # Extract JSON if markdown is present
    match = re.search(r'\{.*\}', text, re.DOTALL)
    if match:
        text = match.group(0)
        
    try:
        data = json.loads(text)
        return data
    except Exception as e:
        print(f"JSON Parsing Error on {object_name}: {text}")
        return {"hasRole": [], "affordsTask": [], "hasPhysicalQuality": []}

# ------------------------------------------------------------------------------
# SYMBOLIC INFERENCE (Clingo)
# ------------------------------------------------------------------------------
def extract_ilasp_rules(ilasp_output_path: Path, dest_lp_path: Path):
    """Extract learned rules from ILASP output, stripping comments."""
    if not ilasp_output_path.exists():
        raise FileNotFoundError(f"Learned rules not found at {ilasp_output_path}")
    
    rules = []
    with open(ilasp_output_path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line and not line.startswith("%"):
                rules.append(line)
                
    with open(dest_lp_path, "w", encoding="utf-8") as f:
        f.write("% Learned goesIn rules extracted from ILASP\n")
        f.write("\n".join(rules))
        f.write("\n\n#show goesIn/2.\n")
        
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
            # camelCase to lowerCamelCase if needed, but ILASP consts are strict.
            # In our BK, they usually match the string exactly but lowercased first letter
            val_clean = v.strip()
            if val_clean:
                val_clean = val_clean[0].lower() + val_clean[1:]
                facts.append(f"{predicate}({obj_id}, {val_clean}).")
                
    return "\n".join(facts)

def run_clingo_inference(rules_path: Path, facts_str: str) -> list:
    """Run Clingo with the learned rules and the new object's facts."""
    facts_file = TMP_DIR / "temp_facts.lp"
    with open(facts_file, "w") as f:
        f.write(facts_str)
        
    result = subprocess.run(
        ["clingo", str(rules_path), str(facts_file), "0", "--out-ifs=\n"],
        capture_output=True, text=True
    )
    
    deduced_locations = []
    for line in result.stdout.split("\n"):
        line = line.strip()
        # Look for goesIn(obj_id, location)
        matches = re.finditer(r'goesIn\([^,]+,([^)]+)\)', line)
        for m in matches:
            deduced_locations.append(m.group(1))
            
    return list(set(deduced_locations))

# ------------------------------------------------------------------------------
# MAIN PIPELINE
# ------------------------------------------------------------------------------
def run_evaluation(num_tests=50):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Tidy-Up Task")
    print("=" * 60)
    
    # 1. Prepare Rules
    rules_lp = TMP_DIR / "learned_rules.lp"
    print(f"Extracting rules from {ILASP_OUT.name}...")
    extract_ilasp_rules(ILASP_OUT, rules_lp)
    
    # 2. Read Benchmark
    print("Reading Robo-CSK Benchmark...")
    test_cases = []
    with open(CSV_FILE, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            obj_name = row["Object"].strip()
            # Parse dict-like string "{1: ('room', score), 2: ...}"
            # Safest is to find all tuples
            loc_matches = re.findall(r"\('([^']+)',\s*[0-9.]+\)", row["Locations"])
            
            canonical_locs = [] # retain ranking order
            for l in loc_matches:
                can_l = map_location(l)
                if can_l and can_l not in canonical_locs:
                    canonical_locs.append(can_l)
                    
            if canonical_locs:
                test_cases.append({
                    "object": obj_name,
                    "target_locations": canonical_locs
                })
                
    import random
    random.seed(42)
    random.shuffle(test_cases)
    test_cases = test_cases[:num_tests]
    
    print(f"Selected {len(test_cases)} validation objects.")
    
    hits = 0
    results_log = []
    
    for case in tqdm(test_cases):
        obj_name = case["object"]
        obj_id = re.sub(r'[^a-zA-Z0-9]', '_', obj_name).lower()
        if obj_id[0].isdigit():
            obj_id = "o_" + obj_id
            
        # Step A: Neuro (Llama 3.1 SOMA Extraction)
        soma_data = query_ollama_soma(obj_name)
        
        # Step B: Symbolic format
        facts_str = format_soma_facts(obj_id, soma_data)
        
        # Step C: Logical Inference
        deduced = run_clingo_inference(rules_lp, facts_str)
        # Sort alphabetically for deterministic metric handling as it's an unranked set
        deduced.sort()
        
        ground_truth = case["target_locations"]
        
        # Calculate Metrics
        k_vals = [1, 3, 5]
        metrics = {"P": {}, "R": {}, "AP": {}}
        for k in k_vals:
            metrics["P"][k] = metric_calculator.calculate_precision_at_k(k, deduced, ground_truth)
            metrics["R"][k] = metric_calculator.calculate_recall_at_k(k, deduced, ground_truth)
            metrics["AP"][k] = metric_calculator.calculate_average_precision_at_k(k, deduced, ground_truth)
            
        rr = metric_calculator.calculate_reciprocal_rank(deduced, ground_truth)
        
        # Hit logic (if deduced intersects with truth)
        is_hit = bool(set(ground_truth).intersection(deduced))
        if is_hit:
            hits += 1
            
        results_log.append({
            "object": obj_name,
            "soma": soma_data,
            "deduced": deduced,
            "ground_truth": ground_truth,
            "hit": is_hit,
            "metrics": metrics,
            "rr": rr
        })
        
    accuracy = hits / len(test_cases) * 100
    mrr = sum(r["rr"] for r in results_log) / len(test_cases)
    
    avg_metrics = {"P": {}, "R": {}, "AP": {}}
    for k in [1, 3, 5]:
        avg_metrics["P"][k] = sum(r["metrics"]["P"][k] for r in results_log) / len(test_cases)
        avg_metrics["R"][k] = sum(r["metrics"]["R"][k] for r in results_log) / len(test_cases)
        avg_metrics["AP"][k] = sum(r["metrics"]["AP"][k] for r in results_log) / len(test_cases)
        
    print(f"\nEvaluation Complete! (Hits: {hits}/{len(test_cases)} -> {accuracy:.2f}%)")
    print(f"MRR: {mrr:.4f}")
    for k in [1, 3, 5]:
        print(f"k={k} | P@{k}: {avg_metrics['P'][k]:.4f} | R@{k}: {avg_metrics['R'][k]:.4f} | AP@{k}: {avg_metrics['AP'][k]:.4f}")
    print()
    
    # Save Report
    with open(EVAL_REPORT_PATH, "w", encoding="utf-8") as f:
        f.write("# Online Phase Evaluation Report\n\n")
        f.write("Evaluation of the Neuro-Symbolic pipeline against unseen objects from Robo-CSK-Benchmark.\n\n")
        f.write(f"- **Total Objects Tested**: {len(test_cases)}\n")
        f.write(f"- **Any-Hit Accuracy**: {accuracy:.2f}%\n")
        f.write(f"- **Mean Reciprocal Rank (MRR)**: {mrr:.4f}\n\n")
        
        f.write("### Metrics at K\n")
        f.write("| Metric | k=1 | k=3 | k=5 |\n")
        f.write("|--------|-----|-----|-----|\n")
        f.write(f"| Precision | {avg_metrics['P'][1]:.4f} | {avg_metrics['P'][3]:.4f} | {avg_metrics['P'][5]:.4f} |\n")
        f.write(f"| Recall | {avg_metrics['R'][1]:.4f} | {avg_metrics['R'][3]:.4f} | {avg_metrics['R'][5]:.4f} |\n")
        f.write(f"| Avg Precision (AP) | {avg_metrics['AP'][1]:.4f} | {avg_metrics['AP'][3]:.4f} | {avg_metrics['AP'][5]:.4f} |\n\n")
        
        f.write("## Test Cases Log\n")
        
        def get_list(d, k):
            v = d.get(k, [])
            return v if isinstance(v, list) else [v]
            
        for res in results_log:
            status = "✅ HIT" if res["hit"] else "❌ MISS"
            f.write(f"### {res['object']} ({status})\n")
            f.write(f"- **Ground Truth**: {', '.join(res['ground_truth'])}\n")
            if res['deduced']:
                f.write(f"- **Clingo Deduced**: {', '.join(res['deduced'])}\n")
            else:
                f.write(f"- **Clingo Deduced**: *None (No rule matched)*\n")
            f.write(f"- **LLM Extracted Features**:\n")
            f.write(f"  - Roles: {', '.join(get_list(res['soma'], 'hasRole'))}\n")
            f.write(f"  - Tasks: {', '.join(get_list(res['soma'], 'affordsTask'))}\n")
            f.write(f"  - Qualities: {', '.join(get_list(res['soma'], 'hasPhysicalQuality'))}\n\n")
            
    print(f"Detailed report saved to {EVAL_REPORT_PATH}")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--num-tests", type=int, default=10, help="Number of objects to evaluate")
    args = parser.parse_args()
    
    run_evaluation(num_tests=args.num_tests)
