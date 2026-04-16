import sys
import os
import json
import re
import argparse
import subprocess
import time
import pandas as pd
from pathlib import Path
from tqdm import tqdm
from mistralai.client import Mistral

api_key = os.environ.get("MISTRAL_API_KEY")
MODEL_ID = "mistral-large-latest"

if not api_key:
    print("Warning: MISTRAL_API_KEY not set. Neural components will fail.")
    client = None
else:
    client = Mistral(api_key=api_key)

SYSTEM_PROMPT = """
You are an expert chef and culinary analyst.
Your job is to analyze a given meal/recipe and extract semantic physical properties about it to help determine the proper cutlery and plate.

Extract the following boolean (true/false) properties for the meal:
1. "is_soup_or_broth": Is the meal predominantly liquid (e.g. soup, stew, broth)?
2. "is_handheld_food": Is it usually eaten by grabbing it with bare hands (e.g. burgers, wings, tacos, nachos, pizza, sandwiches)?
3. "needs_cutting": Does the dish contain large, solid chunks of meat/food that must be cut by the user while eating (e.g. steaks, whole chicken breasts, large pork chops)?
4. "is_asian_cuisine": Is this a traditional East/Southeast Asian dish where chopsticks are commonly appropriate (e.g. sushi, ramen, udon, pad thai, pho, bibimbap, Chinese stir-fry/dumplings)? If it's South Asian (e.g. Indian curry, dal, biryani) or Western with Asian flavors, set false.
5. "is_long_noodles": Does it feature long strands of pasta or noodles (e.g. spaghetti, linguine, ramen)?
6. "has_sauce_or_small_pieces": Is it composed of loose small pieces that are commonly scooped (rice, beans, peas, couscous) OR a thick curry-like dish served in a bowl? If it is simply "meat with a sauce on top" or "handheld food with toppings" (e.g. nachos), set false.
7. "is_dessert": Is this a dessert or sweet baked good (e.g. cake, pie, brownies, pudding)?
8. "is_skewer_food": Is this food typically served and eaten on a skewer or stick?
9. "is_tongs_food": Is this food strictly requiring tongs to eat? (Very rare, usually false).

First provide a 1-sentence "reasoning", then output the boolean constraints.

Respond ONLY with a valid JSON dictionary. Do NOT add any text outside the JSON.

EXAMPLES:
Meal: Beef Barbecue Casserole
{
    "reasoning": "This is a baked casserole served plated; even if it has some sauce, it is not a scoopable bowl-style meal.",
    "is_soup_or_broth": false,
    "is_handheld_food": false,
    "needs_cutting": false,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}

Meal: Hamburgers
{
    "reasoning": "Hamburgers are classic handheld foods eaten without utensils.",
    "is_soup_or_broth": false,
    "is_handheld_food": true,
    "needs_cutting": false,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}

Meal: Banh Mi (Vietnamese Sandwich)
{
    "reasoning": "This is a handheld sandwich; despite being Vietnamese, it is not a chopsticks-appropriate dish.",
    "is_soup_or_broth": false,
    "is_handheld_food": true,
    "needs_cutting": false,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}

Meal: Steak With Peppercorn Sauce
{
    "reasoning": "This is a plated Western meat dish that requires cutting; the sauce does not make it a scoopable bowl-style meal.",
    "is_soup_or_broth": false,
    "is_handheld_food": false,
    "needs_cutting": true,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}

Meal: Creamy Baked Mac and Cheese
{
    "reasoning": "This is a baked casserole-style plated dish with short pasta; it is not a long-noodle dish and is typically not treated as a scoopable bowl meal.",
    "is_soup_or_broth": false,
    "is_handheld_food": false,
    "needs_cutting": false,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}

Meal: Three Cheese Ravioli
{
    "reasoning": "Ravioli are not long strands; they are typically eaten as a plated pasta dish and do not imply a bowl-style scoopable meal.",
    "is_soup_or_broth": false,
    "is_handheld_food": false,
    "needs_cutting": false,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}

Meal: Meatballs With Orzo and Italian Vegetables
{
    "reasoning": "This is a plated entrée; despite sauce and small components, it is not typically served as a scoopable bowl meal.",
    "is_soup_or_broth": false,
    "is_handheld_food": false,
    "needs_cutting": false,
    "is_asian_cuisine": false,
    "is_long_noodles": false,
    "has_sauce_or_small_pieces": false,
    "is_dessert": false,
    "is_skewer_food": false,
    "is_tongs_food": false
}
"""

def keyword_extract_meal_properties(meal_str: str) -> dict:
    meal = meal_str.lower()
    return {
        "reasoning": "Keyword matching.",
        "is_soup_or_broth": any(k in meal for k in ["soup", "broth", "stew"]),
        "is_handheld_food": any(k in meal for k in ["burger", "sandwich", "taco", "pizza", "wrap", "wings"]),
        "needs_cutting": any(k in meal for k in ["steak", "chop", "breast", "roast", "pork"]),
        "is_asian_cuisine": any(k in meal for k in ["sushi", "ramen", "udon", "pho", "pad thai", "dumpling", "stir-fry"]),
        "is_long_noodles": any(k in meal for k in ["spaghetti", "linguine", "ramen", "noodle"]),
        "has_sauce_or_small_pieces": any(k in meal for k in ["rice", "beans", "peas", "curry", "chili"]),
        "is_dessert": any(k in meal for k in ["cake", "pie", "brownie", "pudding", "ice cream"]),
        "is_skewer_food": any(k in meal for k in ["skewer", "kebab", "stick"]),
        "is_tongs_food": any(k in meal for k in ["salad"])
    }

def pure_llm_predict_table_setting(meal_str: str, verbose: bool = False) -> tuple:
    system = """You are an expert chef. Evaluate the given meal and directly predict the required Cutlery and Plate.
Options for Cutlery: Hands, Tongs, Knife, Fork, Skewer, Chopsticks, Spoon.
Options for Plate: Dinner Plate, Dessert Plate, Bowl, Coupe Plate.

Important: Output a JSON dictionary with strictly these keys:
{
    "cutlery": ["List", "of", "cutlery"],
    "plate": "Single plate string"
}
Output nothing else."""
    
    messages = [
        {"role": "system", "content": system},
        {"role": "user", "content": f"Meal: {meal_str}"}
    ]
    for attempt in range(5):
        try:
            response = client.chat.complete(
                model=MODEL_ID, messages=messages, response_format={"type": "json_object"}, temperature=0.0
            )
            raw = response.choices[0].message.content.strip()
            res = json.loads(raw)
            cutlery = set(c.title() for c in res.get("cutlery", []))
            plate = str(res.get("plate", "")).title()
            return cutlery, plate
        except Exception as e:
            if "429" in str(e):
                time.sleep(10 * (attempt + 1))
            else:
                time.sleep(2)
    return set(), "Dinner Plate"

def extract_meal_properties(meal_str: str, verbose: bool = False, ablation: str = "none") -> dict:
    if ablation == "pure_logic":
        return keyword_extract_meal_properties(meal_str)

    sys_prompt = SYSTEM_PROMPT.strip()
    if ablation == "no_cot":
        sys_prompt = sys_prompt.replace('First provide a 1-sentence "reasoning", then output the boolean constraints.\n\n', '')
        sys_prompt = re.sub(r'\s*"reasoning":\s*"[^"]*",', '', sys_prompt)

    messages = [
        {"role": "system", "content": sys_prompt},
        {"role": "user", "content": f"Meal: {meal_str}"}
    ]
    
    for attempt in range(5):
        try:
            response = client.chat.complete(
                model=MODEL_ID,
                messages=messages,
                response_format={"type": "json_object"},
                temperature=0.0
            )
            raw = response.choices[0].message.content.strip()
            if verbose:
                tqdm.write(f"\nMeal: {meal_str}")
                tqdm.write(f"LLM Output: {raw}")
                tqdm.write("-" * 40)
                
            return json.loads(raw)
        except Exception as e:
            if "429" in str(e):
                time.sleep(10 * (attempt + 1))
            else:
                time.sleep(2)
                
    return {
        "reasoning": "Failed to parse",
        "is_soup_or_broth": False,
        "is_handheld_food": False,
        "needs_cutting": False,
        "is_asian_cuisine": False,
        "is_long_noodles": False,
        "has_sauce_or_small_pieces": False,
        "is_dessert": False,
        "is_skewer_food": False,
        "is_tongs_food": False
    }

def run_prolog_solver(props: dict) -> tuple:
    goals = []
    
    for key in ["is_soup_or_broth", "is_handheld_food", "needs_cutting", 
                "is_asian_cuisine", "is_long_noodles", "has_sauce_or_small_pieces", 
                "is_dessert", "is_skewer_food", "is_tongs_food"]:
        val = str(props.get(key, False)).lower()
        goals.append(f"assertz({key}({val}))")
        
    goals.append("evaluate_meal")
    
    goal_str = ", ".join(goals)
    # Get the directory of evaluate.py so it can find reasoner.pl in the same dir
    current_dir = os.path.dirname(os.path.abspath(__file__))
    prolog_file = os.path.join(current_dir, 'reasoner.pl')
    
    cmd = ['swipl', '-f', prolog_file, '-g', goal_str]
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        output = result.stdout.strip()
        
        # Parse CUTLERY=[...] and PLATE=...
        cutlery_match = re.search(r'CUTLERY=\[(.*?)\]', output)
        plate_match = re.search(r'PLATE=([^\n]+)', output)
        
        cutlery_list = []
        if cutlery_match:
            c_str = cutlery_match.group(1).strip()
            if c_str:
                cutlery_list = [c.strip() for c in c_str.split(',')]
                
        plate = None
        if plate_match:
            plate = plate_match.group(1).strip()
            
        return set(cutlery_list), plate
    except Exception as e:
        print(f"Prolog inference failed: {e}")
        return set(), "Dinner Plate"

def evaluate(verbose=False, output_file="results_table_setting.txt", ablation="none"):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Table Setting")
    print(f"Using model: {MODEL_ID}")
    print(f"Ablation Mode: {ablation}")
    print("=" * 60)
    
    if ablation != "none":
        name, ext = os.path.splitext(output_file)
        output_file = f"{name}_ablation_{ablation}{ext}"
    
    current_dir = os.path.dirname(os.path.abspath(__file__))
    csv_path = os.path.join(current_dir, "../../Robo-CSK-Benchmark/table_setting/combined_prolific_data.csv")
    if not os.path.exists(csv_path):
        print(f"ERROR: Cannot find benchmark data at {csv_path}")
        return
        
    df = pd.read_csv(csv_path)
    
    cutlery_options = ['hands', 'tongs', 'knife', 'fork', 'skewer', 'chopsticks', 'spoon']
    plate_options = ['dinner plate', 'dessert plate', 'bowl', 'coupe plate']
    
    # Capitalize for mapping to Prolog output
    def format_name(name):
        return name.title()
    
    # Open error log
    log_path = os.path.join(current_dir, output_file)
    log = open(log_path, "w")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG - Table Setting Evaluation\n")
    log.write("=" * 60 + "\n")
    
    plate_correct = 0
    jaccard_scores = []
    
    llm_cache = {}
    
    for idx, row in tqdm(df.iterrows(), total=len(df), desc="Eval", mininterval=10.0):
        meal = row['name']
        
        # Ground Truth Calculate
        gt_cutlery = set()
        for c in cutlery_options:
            if row[c] >= 10:
                gt_cutlery.add(format_name(c))
                
        # Ground truth plate is the argmax
        plate_votes = {p: row[p] for p in plate_options}
        gt_plate = format_name(max(plate_votes, key=plate_votes.get))
        
        if ablation == "pure_llm":
            pred_cutlery, pred_plate = pure_llm_predict_table_setting(meal, verbose=verbose)
            props = {"reasoning": "Pure LLM ablation active."}
        else:
            if meal not in llm_cache:
                llm_cache[meal] = extract_meal_properties(meal, verbose=verbose, ablation=ablation)
            props = llm_cache[meal]
            pred_cutlery, pred_plate = run_prolog_solver(props)
        
        # Plate Score
        is_plate_correct = (pred_plate == gt_plate)
        if is_plate_correct:
            plate_correct += 1
            
        # Jaccard Score
        intersection = len(gt_cutlery.intersection(pred_cutlery))
        union = len(gt_cutlery.union(pred_cutlery))
        jaccard = intersection / union if union > 0 else 1.0 # If both empty, it's perfect
        jaccard_scores.append(jaccard)
        
        # Logging
        log.write(f"[Meal] {meal}\n")
        log.write(f"LLM Properties:\n")
        for k, v in props.items():
            log.write(f"  - {k}: {v}\n")
        log.write(f"\nGround Truth Cutlery: {gt_cutlery}\n")
        log.write(f"Predicted Cutlery:    {pred_cutlery} -> Jaccard: {jaccard:.3f}\n")
        log.write(f"Ground Truth Plate:   {gt_plate}\n")
        log.write(f"Predicted Plate:      {pred_plate} -> Correct: {is_plate_correct}\n")
        log.write("-" * 60 + "\n\n")
        
    avg_jaccard = sum(jaccard_scores) / len(jaccard_scores)
    plate_acc = plate_correct / len(df)
    
    print("\n" + "=" * 40)
    print("FINAL BENCHMARK RESULTS")
    print("=" * 40)
    print(f"Plate Accuracy: {plate_acc:.3f}")
    print(f"Cutlery Jaccard Similarity: {avg_jaccard:.3f}")
    print("=" * 40)
    
    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"Total Meals: {len(df)}\n")
    log.write(f"Plate Accuracy: {plate_acc:.3f}\n")
    log.write(f"Cutlery Jaccard Similarity: {avg_jaccard:.3f}\n")
    log.write("=" * 60 + "\n")
    log.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Run Table Setting Evaluation')
    parser.add_argument('--verbose', action='store_true', help='Print the LLM output for every task')
    parser.add_argument('--output_file', type=str, default="results_table_setting.txt", help='Output file for results')
    parser.add_argument('--ablation', type=str, choices=['none', 'pure_llm', 'pure_logic', 'no_cot'], default='none', help='Ablation mode')
    args = parser.parse_args()
    
    evaluate(verbose=args.verbose, output_file=args.output_file, ablation=args.ablation)
