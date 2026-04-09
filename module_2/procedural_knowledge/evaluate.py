import sys
import os
import json
import re
import random
import argparse
import subprocess
import time
from pathlib import Path
from tqdm import tqdm
from mistralai.client import Mistral

api_key = os.environ.get("MISTRAL_API_KEY")
MODEL_ID = "mistral-large-latest"

if not api_key:
    print("Error: Could not find your API key. Did you set the MISTRAL_API_KEY environment variable?")
    sys.exit(1)

client = Mistral(api_key=api_key)

# ---------------------------------------------------------------------------
# Prompts & Parsing Logic
# ---------------------------------------------------------------------------
SYSTEM_PROMPT = """
You are an expert chef and cooking procedure analyst.
Your job is to analyze two steps from a cooking recipe and extract semantic properties that reveal their temporal order.

Given the recipe title and two steps (step_a and step_b), extract the following properties for EACH step:

1. "cooking_phase": Which phase of cooking does this step belong to? Choose ONE from:
   - "preheating" — Turning on the oven, lining/greasing pans, boiling initial water before anything else
   - "prep" — Washing, peeling, chopping, dicing, mincing, measuring raw ingredients
   - "mixing" — Combining raw ingredients together (stirring, whisking, blending BEFORE cooking)
   - "marinating" — Soaking, brining, marinating, letting ingredients absorb flavors
   - "heating" — Heating oil in a pan, melting butter (getting the heat source ready during cooking)
   - "cooking" — Main cooking process: bake, fry, sauté, roast, grill, simmer, boil, steam
   - "assembly" — Layering, stuffing, rolling, arranging cooked components together
   - "resting" — Letting dough rise, letting meat rest, cooling slightly between steps
   - "cooling" — Active cooling: chill in fridge, refrigerate, freeze, let cool completely
   - "finishing" — Final seasoning, glazing, garnishing, drizzling, adding toppings
   - "serving" — Plating, serving, presenting, enjoying the dish

2. "requires_heat": Does this step involve applying heat or using a heat source? (true/false)

3. "is_final_step": Is this clearly one of the very last things done in the recipe (e.g., serving, plating, garnishing, enjoying)? (true/false)

4. "transforms_state": Does this step fundamentally change the physical state of the food (e.g., raw→cooked, liquid→solid, separate→combined, hot→cold)? (true/false)

5. "depends_on_other": Does this step logically require the OTHER step to have been completed first? Think about whether this step uses the OUTPUT or RESULT of the other step. (true/false)

6. "belongs_to_recipe": Based on the recipe title, does this step plausibly belong to this specific recipe? Consider the ingredients, cooking style, and cuisine implied by the recipe title. (true/false)
   - "Soak Basmati rice" belongs to "Beetroot Rice" → true
   - "Broil swordfish" does NOT belong to "Green Beans With Onion" → false
   - When in doubt, output true.

Respond ONLY with a valid JSON dictionary in this exact format:
{
    "reasoning": "<1-2 sentence explanation of the temporal relationship>",
    "step_a": {
        "cooking_phase": "<phase>",
        "requires_heat": <bool>,
        "is_final_step": <bool>,
        "transforms_state": <bool>,
        "depends_on_other": <bool>,
        "belongs_to_recipe": <bool>
    },
    "step_b": {
        "cooking_phase": "<phase>",
        "requires_heat": <bool>,
        "is_final_step": <bool>,
        "transforms_state": <bool>,
        "depends_on_other": <bool>,
        "belongs_to_recipe": <bool>
    }
}

Do NOT add any text outside the JSON.

EXAMPLES:

Recipe: World's Best Mac and Cheese
Step A: Cook pasta less than directions
Step B: Bake pasta with cheese topping
{
    "reasoning": "Pasta must be cooked first before it can be baked with cheese topping as the second cooking step.",
    "step_a": {
        "cooking_phase": "cooking",
        "requires_heat": true,
        "is_final_step": false,
        "transforms_state": true,
        "depends_on_other": false,
        "belongs_to_recipe": true
    },
    "step_b": {
        "cooking_phase": "cooking",
        "requires_heat": true,
        "is_final_step": false,
        "transforms_state": true,
        "depends_on_other": true,
        "belongs_to_recipe": true
    }
}

Recipe: Gazpacho
Step A: Puree tomatoes until smooth
Step B: Combine vegetables with puree
{
    "reasoning": "Tomatoes need to be pureed first before they can be combined with other vegetables.",
    "step_a": {
        "cooking_phase": "prep",
        "requires_heat": false,
        "is_final_step": false,
        "transforms_state": true,
        "depends_on_other": false,
        "belongs_to_recipe": true
    },
    "step_b": {
        "cooking_phase": "mixing",
        "requires_heat": false,
        "is_final_step": false,
        "transforms_state": false,
        "depends_on_other": true,
        "belongs_to_recipe": true
    }
}

Recipe: Cool 'n Easy Creamy Watermelon Pie
Step A: Dissolve Jello in water
Step B: Chill for several hours
{
    "reasoning": "Jello must be dissolved first, then the mixture needs to be chilled to set.",
    "step_a": {
        "cooking_phase": "mixing",
        "requires_heat": false,
        "is_final_step": false,
        "transforms_state": true,
        "depends_on_other": false,
        "belongs_to_recipe": true
    },
    "step_b": {
        "cooking_phase": "cooling",
        "requires_heat": false,
        "is_final_step": true,
        "transforms_state": true,
        "depends_on_other": true,
        "belongs_to_recipe": true
    }
}
"""


def extract_step_properties(title, step_a, step_b, verbose=False):
    """Call Mistral to extract semantic properties for two recipe steps."""
    user_message = f"Recipe: {title}\nStep A: {step_a}\nStep B: {step_b}"

    for attempt in range(3):
        try:
            response = client.chat.complete(
                model=MODEL_ID,
                messages=[
                    {"role": "system", "content": SYSTEM_PROMPT.strip()},
                    {"role": "user", "content": user_message},
                ],
                temperature=0.0,
            )
            raw = response.choices[0].message.content.strip()

            if verbose:
                print(f"\n--- LLM Response for '{title}' ---")
                print(raw)

            # Clean markdown fences if present
            cleaned = raw
            if "```" in cleaned:
                cleaned = re.sub(r"```(?:json)?", "", cleaned).strip()

            props = json.loads(cleaned)

            # Validate structure
            valid_phases = {"preheating", "prep", "mixing", "marinating", "heating", "cooking",
                            "assembly", "resting", "cooling", "finishing", "serving"}
            for step_key in ["step_a", "step_b"]:
                if step_key not in props:
                    raise ValueError(f"Missing '{step_key}' in response")
                step = props[step_key]
                if step.get("cooking_phase") not in valid_phases:
                    # Try to normalize
                    phase = str(step.get("cooking_phase", "")).lower().strip()
                    if phase in valid_phases:
                        step["cooking_phase"] = phase
                    else:
                        step["cooking_phase"] = "cooking"  # safe fallback

            return props

        except (json.JSONDecodeError, ValueError, KeyError) as e:
            if verbose:
                print(f"  ⚠ Attempt {attempt+1} parsing error: {e}")
            time.sleep(1)
        except Exception as e:
            if verbose:
                print(f"  ⚠ Attempt {attempt+1} API error: {e}")
            time.sleep(2)

    # Fallback: return neutral properties
    return {
        "reasoning": "Parsing failed.",
        "step_a": {"cooking_phase": "prep", "requires_heat": False,
                   "is_final_step": False, "transforms_state": False,
                   "depends_on_other": False},
        "step_b": {"cooking_phase": "cooking", "requires_heat": True,
                   "is_final_step": False, "transforms_state": True,
                   "depends_on_other": True},
    }


# ---------------------------------------------------------------------------
# Prolog Interface
# ---------------------------------------------------------------------------
PROLOG_FILE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "reasoner.pl")


def run_prolog_temporal(props):
    """
    Assert facts for step_a and step_b into Prolog, query comes_before.
    Returns True if step_a comes before step_b according to the Prolog rules.
    """
    step_a = props.get("step_a", {})
    step_b = props.get("step_b", {})

    goals = []

    # Assert step_a properties
    goals.append(f"assertz(step_a_phase({step_a.get('cooking_phase', 'cooking')}))")
    goals.append(f"assertz(step_a_requires_heat({str(step_a.get('requires_heat', False)).lower()}))")
    goals.append(f"assertz(step_a_is_final({str(step_a.get('is_final_step', False)).lower()}))")
    goals.append(f"assertz(step_a_transforms_state({str(step_a.get('transforms_state', False)).lower()}))")
    goals.append(f"assertz(step_a_depends_on_b({str(step_a.get('depends_on_other', False)).lower()}))")

    # Assert step_b properties
    goals.append(f"assertz(step_b_phase({step_b.get('cooking_phase', 'cooking')}))")
    goals.append(f"assertz(step_b_requires_heat({str(step_b.get('requires_heat', False)).lower()}))")
    goals.append(f"assertz(step_b_is_final({str(step_b.get('is_final_step', False)).lower()}))")
    goals.append(f"assertz(step_b_transforms_state({str(step_b.get('transforms_state', False)).lower()}))")
    goals.append(f"assertz(step_b_depends_on_a({str(step_b.get('depends_on_other', False)).lower()}))")

    # Query
    goals.append("(comes_before -> write(true) ; write(false))")
    goals.append("halt")

    cmd = ["swipl", "-f", PROLOG_FILE, "-g", ", ".join(goals)]

    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        output = result.stdout.strip()
        return output == "true"
    except subprocess.TimeoutExpired:
        print(f"  ⚠ Prolog timeout")
        return False
    except Exception as e:
        print(f"  ⚠ Prolog error: {e}")
        return False


def run_prolog_temporal_swapped(props):
    """
    Query whether step_b comes before step_a (swap the roles).
    We create swapped properties where step_a gets step_b's values and vice versa.
    """
    swapped = {
        "reasoning": props.get("reasoning", ""),
        "step_a": {
            "cooking_phase": props["step_b"]["cooking_phase"],
            "requires_heat": props["step_b"]["requires_heat"],
            "is_final_step": props["step_b"]["is_final_step"],
            "transforms_state": props["step_b"]["transforms_state"],
            "depends_on_other": props["step_a"].get("depends_on_other", False),
        },
        "step_b": {
            "cooking_phase": props["step_a"]["cooking_phase"],
            "requires_heat": props["step_a"]["requires_heat"],
            "is_final_step": props["step_a"]["is_final_step"],
            "transforms_state": props["step_a"]["transforms_state"],
            "depends_on_other": props["step_b"].get("depends_on_other", False),
        },
    }
    return run_prolog_temporal(swapped)


# ---------------------------------------------------------------------------
# Binary Evaluation
# ---------------------------------------------------------------------------
def evaluate_binary(limit=None, verbose=False, output_file="results/results_binary.txt"):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Procedural Knowledge (Binary)")
    print(f"Using model: {MODEL_ID}")
    print("=" * 60)

    data_dir = "../../Robo-CSK-Benchmark/procedural_knowledge/data_generation/question_components_binary"
    if not os.path.exists(data_dir):
        print(f"ERROR: Cannot find data at {data_dir}")
        return

    # Load all recipes from all 4 files
    all_recipes = []
    for i in range(1, 5):
        json_path = os.path.join(data_dir, f"questions_recipe_{i}.json")
        with open(json_path, "r") as f:
            recipes = json.load(f)
            all_recipes.extend(recipes)

    print(f"Loaded {len(all_recipes)} recipes ({len(all_recipes) * 4} questions)")

    if limit:
        all_recipes = random.Random(42).sample(all_recipes, min(limit, len(all_recipes)))
        print(f"Sampling {len(all_recipes)} recipes ({len(all_recipes) * 4} questions)")

    os.makedirs(os.path.dirname(output_file) if os.path.dirname(output_file) else ".", exist_ok=True)
    log = open(output_file, "w")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG - Procedural Knowledge Binary Evaluation\n")
    log.write("=" * 60 + "\n")
    log.write(f"Model: {MODEL_ID}\n")
    log.write(f"Total recipes: {len(all_recipes)}\n")
    log.write(f"Total questions: {len(all_recipes) * 4}\n")
    log.write("=" * 60 + "\n\n")

    llm_cache = {}
    tp, tn, fp, fn = 0, 0, 0, 0
    q_num = 0

    for recipe in tqdm(all_recipes, desc="Binary Eval"):
        title = recipe["goal"]
        step_1 = recipe["step_1"].rstrip(". ").strip()
        step_2 = recipe["step_2"].rstrip(". ").strip()

        # Cache key: (title, step_1, step_2) — one LLM call per recipe
        cache_key = (title, step_1, step_2)
        if cache_key not in llm_cache:
            llm_cache[cache_key] = extract_step_properties(title, step_1, step_2, verbose=verbose)
        props = llm_cache[cache_key]

        # Prolog determines: does step_1 (=step_a) come before step_2 (=step_b)?
        a_before_b = run_prolog_temporal(props)

        # Generate 4 questions from this single LLM call + Prolog query:
        # Q1: "Did step_1 occur before step_2?" -> ground_truth=Yes, prediction based on a_before_b
        # Q2: "Did step_2 occur before step_1?" -> ground_truth=No, prediction based on NOT a_before_b
        # Q3: "Did step_2 occur after step_1?"  -> ground_truth=Yes, prediction based on a_before_b
        # Q4: "Did step_1 occur after step_2?"  -> ground_truth=No, prediction based on NOT a_before_b

        questions = [
            {
                "question": f"In the recipe '{title}', did '{step_1}' occur before '{step_2}'?",
                "temporal": "before",
                "correct": "Yes",
                "predicted_yes": a_before_b,
            },
            {
                "question": f"In the recipe '{title}', did '{step_2}' occur before '{step_1}'?",
                "temporal": "before",
                "correct": "No",
                "predicted_yes": not a_before_b,
            },
            {
                "question": f"In the recipe '{title}', did '{step_2}' occur after '{step_1}'?",
                "temporal": "after",
                "correct": "Yes",
                "predicted_yes": a_before_b,
            },
            {
                "question": f"In the recipe '{title}', did '{step_1}' occur after '{step_2}'?",
                "temporal": "after",
                "correct": "No",
                "predicted_yes": not a_before_b,
            },
        ]

        for q in questions:
            q_num += 1
            pred_answer = "Yes" if q["predicted_yes"] else "No"
            correct_answer = q["correct"]

            if pred_answer == "Yes" and correct_answer == "Yes":
                tp += 1
                result_tag = "TP"
            elif pred_answer == "No" and correct_answer == "No":
                tn += 1
                result_tag = "TN"
            elif pred_answer == "Yes" and correct_answer == "No":
                fp += 1
                result_tag = "FP"
            else:
                fn += 1
                result_tag = "FN"

            if result_tag in ("FP", "FN"):
                log.write(f"[Q{q_num}] [{result_tag}]\n")
                log.write(f"Question: {q['question']}\n")
                log.write(f"Predicted: {pred_answer} | Correct: {correct_answer}\n")
                log.write(f"LLM Properties:\n")
                log.write(f"  reasoning: {props.get('reasoning', 'N/A')}\n")
                for step_key in ["step_a", "step_b"]:
                    step_label = "Step 1 (step_a)" if step_key == "step_a" else "Step 2 (step_b)"
                    step_data = props.get(step_key, {})
                    log.write(f"  {step_label}:\n")
                    for k, v in step_data.items():
                        log.write(f"    - {k}: {v}\n")
                log.write(f"Prolog verdict (step_1 before step_2): {a_before_b}\n")
                log.write("-" * 40 + "\n\n")

    # Compute metrics
    total = tp + tn + fp + fn
    acc = (tp + tn) / total if total > 0 else 0
    prec = tp / (tp + fp) if (tp + fp) > 0 else 0
    rec = tp / (tp + fn) if (tp + fn) > 0 else 0
    f1 = 2 * prec * rec / (prec + rec) if (prec + rec) > 0 else 0
    ratio = (tp + fp) / (tn + fn) if (tn + fn) > 0 else float("inf")
    spec = tn / (tn + fp) if (tn + fp) > 0 else 0

    print("\n" + "=" * 40)
    print("FINAL BINARY BENCHMARK RESULTS")
    print("=" * 40)
    print(f"TP: {tp} | TN: {tn} | FP: {fp} | FN: {fn}")
    print(f"Accuracy:    {acc:.3f}")
    print(f"Precision:   {prec:.3f}")
    print(f"Recall:      {rec:.3f}")
    print(f"Spec.:       {spec:.3f}")
    print(f"Ratio:       {ratio:.3f}")
    print(f"F1 Score:    {f1:.3f}")
    print("=" * 40)

    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"TP: {tp} | TN: {tn} | FP: {fp} | FN: {fn}\n")
    log.write(f"Accuracy:    {acc:.3f}\n")
    log.write(f"Precision:   {prec:.3f}\n")
    log.write(f"Recall:      {rec:.3f}\n")
    log.write(f"Spec.:       {spec:.3f}\n")
    log.write(f"Ratio:       {ratio:.3f}\n")
    log.write(f"F1 Score:    {f1:.3f}\n")
    log.write("=" * 60 + "\n")
    log.close()
    print(f"\n✅ Results written to: {output_file}")



# ---------------------------------------------------------------------------
# Multi-Choice: LLM Direct Selection Prompt
# ---------------------------------------------------------------------------
MULTI_SYSTEM_PROMPT_BEFORE = """
You are an expert chef analyzing recipe steps.
Given a recipe title, a reference step, and a list of candidate steps, you must identify which candidate step occurs BEFORE the reference step in this specific recipe.

Think carefully:
1. Which candidate steps plausibly belong to this specific recipe (based on ingredients and cooking style)?
2. Among those, which one is the IMMEDIATE predecessor of the reference step?

Respond ONLY with a valid JSON dictionary:
{
    "reasoning": "<1-2 sentence explanation>",
    "selected_step": "<exact text of the chosen step>"
}
Do NOT add any text outside the JSON.
"""

MULTI_SYSTEM_PROMPT_AFTER = """
You are an expert chef analyzing recipe steps.
Given a recipe title, a reference step, and a list of candidate steps, you must identify which candidate step occurs AFTER the reference step in this specific recipe.

Think carefully:
1. Which candidate steps plausibly belong to this specific recipe (based on ingredients and cooking style)?
2. Among those, which one is the IMMEDIATE successor of the reference step?

Respond ONLY with a valid JSON dictionary:
{
    "reasoning": "<1-2 sentence explanation>",
    "selected_step": "<exact text of the chosen step>"
}
Do NOT add any text outside the JSON.
"""

def llm_select_option(title, reference_step, options, temporal="before", verbose=False):
    """Ask the LLM to directly pick the best option from the list."""
    if temporal == "before":
        system = MULTI_SYSTEM_PROMPT_BEFORE
    else:
        system = MULTI_SYSTEM_PROMPT_AFTER

    options_text = "\n".join(f"- {opt}" for opt in options)
    user_msg = (
        f"Recipe: {title}\n"
        f"Reference step: {reference_step}\n"
        f"Question: Which step occurs {temporal.upper()} '{reference_step}'?\n\n"
        f"Options:\n{options_text}"
    )

    for attempt in range(3):
        try:
            response = client.chat.complete(
                model=MODEL_ID,
                messages=[
                    {"role": "system", "content": system.strip()},
                    {"role": "user", "content": user_msg},
                ],
                temperature=0.0,
            )
            raw = response.choices[0].message.content.strip()
            if verbose:
                print(f"\n--- Multi LLM pick for '{title}' ({temporal}) ---")
                print(raw)

            cleaned = raw
            if "```" in cleaned:
                cleaned = re.sub(r"```(?:json)?", "", cleaned).strip()

            result = json.loads(cleaned)
            selected = result.get("selected_step", "").strip()
            reasoning = result.get("reasoning", "")

            # Fuzzy match: find the option that best matches the selection
            selected_lower = selected.lower().rstrip(". ")
            best_match = None
            for opt in options:
                if opt.lower().rstrip(". ") == selected_lower:
                    best_match = opt
                    break
            if best_match is None:
                for opt in options:
                    if selected_lower in opt.lower() or opt.lower() in selected_lower:
                        best_match = opt
                        break

            return best_match, reasoning

        except Exception as e:
            if verbose:
                print(f"  ⚠ Attempt {attempt+1} error: {e}")
            time.sleep(1)

    return None, "LLM selection failed"


# ---------------------------------------------------------------------------
# Multi-Choice Evaluation (Hybrid: LLM Direct Pick + Prolog Validation)
# ---------------------------------------------------------------------------
def evaluate_multi(limit=None, verbose=False, output_file="results/results_multi.txt"):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Procedural Knowledge (Multi-Choice)")
    print(f"Using model: {MODEL_ID}")
    print("=" * 60)

    data_dir = "../../Robo-CSK-Benchmark/procedural_knowledge/data_generation/question_components_multi"
    if not os.path.exists(data_dir):
        print(f"ERROR: Cannot find data at {data_dir}")
        return

    # Load all recipes
    all_recipes = []
    for i in range(1, 5):
        json_path = os.path.join(data_dir, f"questions_recipe_{i}.json")
        with open(json_path, "r") as f:
            recipes = json.load(f)
            for r in recipes:
                r["_file_idx"] = i
            all_recipes.extend(recipes)

    # We also need other recipes from same file for distractor generation
    recipes_by_file = {}
    for i in range(1, 5):
        json_path = os.path.join(data_dir, f"questions_recipe_{i}.json")
        with open(json_path, "r") as f:
            recipes_by_file[i] = json.load(f)

    print(f"Loaded {len(all_recipes)} recipes ({len(all_recipes) * 2} questions)")

    if limit:
        all_recipes = random.Random(42).sample(all_recipes, min(limit, len(all_recipes)))
        print(f"Sampling {len(all_recipes)} recipes ({len(all_recipes) * 2} questions)")

    os.makedirs(os.path.dirname(output_file) if os.path.dirname(output_file) else ".", exist_ok=True)
    log = open(output_file, "w")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG - Procedural Knowledge Multi-Choice Evaluation\n")
    log.write("=" * 60 + "\n")
    log.write(f"Model: {MODEL_ID}\n")
    log.write(f"Total recipes: {len(all_recipes)}\n")
    log.write(f"Total questions: {len(all_recipes) * 2}\n")
    log.write("=" * 60 + "\n\n")

    llm_cache = {}
    total_questions = 0
    correct_count = 0

    for recipe in tqdm(all_recipes, desc="Multi-Choice Eval"):
        title = recipe["goal"]
        step_1 = recipe["step_1"].rstrip(". ").strip()
        step_2 = recipe["step_2"].rstrip(". ").strip()
        step_3 = recipe["step_3"].rstrip(". ").strip()
        file_idx = recipe.get("_file_idx", 1)

        # ===== BEFORE question =====
        before_options = [step_1, step_3]
        other_recipes = [r for r in recipes_by_file.get(file_idx, []) if r["goal"] != title]
        used = set(before_options)
        random.shuffle(other_recipes)
        for other in other_recipes:
            if len(before_options) >= 5:
                break
            candidate = other["step_3"].rstrip(". ").strip()
            if candidate not in used:
                before_options.append(candidate)
                used.add(candidate)
        random.shuffle(before_options)

        # Stage 1: LLM directly picks the best option
        llm_pick, llm_reasoning = llm_select_option(
            title, step_2, before_options, temporal="before", verbose=verbose
        )

        # Stage 2: Prolog validates the LLM pick
        final_pick = llm_pick
        prolog_validated = False
        prolog_details = []

        if llm_pick:
            cache_key = (title, llm_pick, step_2)
            if cache_key not in llm_cache:
                llm_cache[cache_key] = extract_step_properties(title, llm_pick, step_2, verbose=verbose)
            pick_props = llm_cache[cache_key]
            prolog_validated = run_prolog_temporal(pick_props)

        # If Prolog rejects the LLM pick, fall back to Prolog-based scoring
        if not prolog_validated:
            best_fallback = None
            best_fallback_score = -1
            for opt in before_options:
                if opt == llm_pick:
                    continue
                cache_key = (title, opt, step_2)
                if cache_key not in llm_cache:
                    llm_cache[cache_key] = extract_step_properties(title, opt, step_2, verbose=verbose)
                opt_props = llm_cache[cache_key]
                comes_before = run_prolog_temporal(opt_props)
                if comes_before:
                    MAX_PHASES = 11
                    pa = opt_props.get("step_a", {}).get("cooking_phase", "cooking")
                    pb = opt_props.get("step_b", {}).get("cooking_phase", "cooking")
                    phase_map = {"preheating": 1, "prep": 2, "mixing": 3, "marinating": 4, "heating": 5,
                                 "cooking": 6, "assembly": 7, "resting": 8, "cooling": 9,
                                 "finishing": 10, "serving": 11}
                    phase_dist = phase_map.get(pb, 6) - phase_map.get(pa, 6)
                    if phase_dist <= 0:
                        phase_dist = 1
                    score = (MAX_PHASES - phase_dist) * 10
                    if opt_props.get("step_b", {}).get("depends_on_other", False):
                        score += 1
                    prolog_details.append((opt, score))
                    if score > best_fallback_score:
                        best_fallback_score = score
                        best_fallback = opt

            if best_fallback:
                final_pick = best_fallback

        total_questions += 1
        before_correct = final_pick == step_1
        if before_correct:
            correct_count += 1

        tag = "[CORRECT]" if before_correct else "[WRONG]"
        log.write(f"[Q{total_questions}] {tag}\n")
        log.write(f"Recipe: {title}\n")
        log.write(f"Reference step: {step_2}\n")
        log.write(f"Question: Which step occurs BEFORE '{step_2}'?\n")
        log.write(f"Correct answer: {step_1}\n")
        log.write(f"LLM pick: {llm_pick} (Prolog validated: {prolog_validated})\n")
        log.write(f"LLM reasoning: {llm_reasoning}\n")
        log.write(f"Final selection: {final_pick}\n")
        if prolog_details:
            log.write(f"Prolog fallback candidates:\n")
            for opt, sc in prolog_details:
                c_tag = "✓" if opt == step_1 else " "
                log.write(f"  [{c_tag}] {opt} → score={sc}\n")
        log.write("-" * 60 + "\n\n")

        # ===== AFTER question =====
        after_options = [step_1, step_3]
        used = set(after_options)
        random.shuffle(other_recipes)
        for other in other_recipes:
            if len(after_options) >= 5:
                break
            candidate = other["step_1"].rstrip(". ").strip()
            if candidate not in used:
                after_options.append(candidate)
                used.add(candidate)
        random.shuffle(after_options)

        # Stage 1: LLM directly picks
        llm_pick_after, llm_reasoning_after = llm_select_option(
            title, step_2, after_options, temporal="after", verbose=verbose
        )

        # Stage 2: Prolog validates
        final_pick_after = llm_pick_after
        prolog_validated_after = False
        prolog_details_after = []

        if llm_pick_after:
            cache_key = (title, step_2, llm_pick_after)
            if cache_key not in llm_cache:
                llm_cache[cache_key] = extract_step_properties(title, step_2, llm_pick_after, verbose=verbose)
            pick_props = llm_cache[cache_key]
            prolog_validated_after = run_prolog_temporal(pick_props)

        if not prolog_validated_after:
            best_fallback = None
            best_fallback_score = -1
            for opt in after_options:
                if opt == llm_pick_after:
                    continue
                cache_key = (title, step_2, opt)
                if cache_key not in llm_cache:
                    llm_cache[cache_key] = extract_step_properties(title, step_2, opt, verbose=verbose)
                opt_props = llm_cache[cache_key]
                step2_before_opt = run_prolog_temporal(opt_props)
                if step2_before_opt:
                    MAX_PHASES = 11
                    pa = opt_props.get("step_a", {}).get("cooking_phase", "cooking")
                    pb = opt_props.get("step_b", {}).get("cooking_phase", "cooking")
                    phase_map = {"preheating": 1, "prep": 2, "mixing": 3, "marinating": 4, "heating": 5,
                                 "cooking": 6, "assembly": 7, "resting": 8, "cooling": 9,
                                 "finishing": 10, "serving": 11}
                    phase_dist = phase_map.get(pb, 6) - phase_map.get(pa, 6)
                    if phase_dist <= 0:
                        phase_dist = 1
                    score = (MAX_PHASES - phase_dist) * 10
                    if opt_props.get("step_b", {}).get("depends_on_other", False):
                        score += 1
                    prolog_details_after.append((opt, score))
                    if score > best_fallback_score:
                        best_fallback_score = score
                        best_fallback = opt

            if best_fallback:
                final_pick_after = best_fallback

        total_questions += 1
        after_correct = final_pick_after == step_3
        if after_correct:
            correct_count += 1

        tag = "[CORRECT]" if after_correct else "[WRONG]"
        log.write(f"[Q{total_questions}] {tag}\n")
        log.write(f"Recipe: {title}\n")
        log.write(f"Reference step: {step_2}\n")
        log.write(f"Question: Which step occurs AFTER '{step_2}'?\n")
        log.write(f"Correct answer: {step_3}\n")
        log.write(f"LLM pick: {llm_pick_after} (Prolog validated: {prolog_validated_after})\n")
        log.write(f"LLM reasoning: {llm_reasoning_after}\n")
        log.write(f"Final selection: {final_pick_after}\n")
        if prolog_details_after:
            log.write(f"Prolog fallback candidates:\n")
            for opt, sc in prolog_details_after:
                c_tag = "✓" if opt == step_3 else " "
                log.write(f"  [{c_tag}] {opt} → score={sc}\n")
        log.write("-" * 60 + "\n\n")

    acc = correct_count / total_questions if total_questions > 0 else 0

    print("\n" + "=" * 40)
    print("FINAL MULTI-CHOICE BENCHMARK RESULTS")
    print("=" * 40)
    print(f"Accuracy: {acc:.3f}")
    print(f"  Correct: {correct_count}/{total_questions}")
    print("=" * 40)

    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"Total: {total_questions}\n")
    log.write(f"Correct: {correct_count}\n")
    log.write(f"Accuracy: {acc:.3f}\n")
    log.write("=" * 60 + "\n")
    log.close()
    print(f"\n✅ Results written to: {output_file}")


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Neuro-Symbolic Procedural Knowledge Evaluation")
    parser.add_argument("--mode", type=str, choices=["binary", "multi", "all"], default="all",
                        help="Evaluation mode")
    parser.add_argument("--limit", type=int, default=None,
                        help="Limit number of recipes (for faster testing)")
    parser.add_argument("--verbose", action="store_true",
                        help="Print LLM output for every task")
    parser.add_argument("--output_file", type=str, default=None,
                        help="Output file for results")
    args = parser.parse_args()

    if args.mode in ["binary", "all"]:
        out = args.output_file or "results/results_binary.txt"
        evaluate_binary(limit=args.limit, verbose=args.verbose, output_file=out)

    if args.mode in ["multi", "all"]:
        out = args.output_file or "results/results_multi.txt"
        evaluate_multi(limit=args.limit, verbose=args.verbose, output_file=out)
