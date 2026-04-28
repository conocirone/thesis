import sys
import os
import ast
import json
import re
import argparse
import subprocess
import time
import pandas as pd
from pathlib import Path
from tqdm import tqdm
from google import genai
from google.genai import types
from mistralai.client import Mistral

api_key = os.environ.get("MISTRAL_API_KEY")

if not api_key:
    print("Warning: MISTRAL_API_KEY not set. Neural components will fail.")
    client = None
else:
    client = Mistral(api_key=api_key)


SYSTEM_PROMPT = """
You are an expert robot motion planner.
Your job is to analyze a natural language household task and answer 6 specific Yes/No questions about its physical requirements.

First, provide a brief 1-sentence rationale in the "reasoning" key. Then, output the 6 booleans.

Focus strictly on the MINIMUM physical actions required. Think like a roboticist:
1. "needs_grasping": Does this task strictly require lifting an object completely into the air? Output FALSE if the task can theoretically be accomplished by simply pushing, sweeping, or sliding the object with a blunt arm (e.g., arranging ANY items like shoes, bottles, cups, adjusting a lamp). If the task includes the word "arrange", needs_grasping is FALSE.
2. "needs_precision": Does this task involve highly constrained, multi-axis 7-DoF rotations (like inserting a key, threading a needle, brushing teeth)? Output FALSE for general manipulation, arranging, pushing, or broad adjustments.
3. "needs_mobility": Does the robot strictly need a mobile base? Output FALSE unless the task absolutely cannot be done from a single position. Assume the robot is ALWAYS already positioned optimally within arm's reach of ALL relevant objects, even if the task mentions different locations ("from X to Y", "go to", "move to", "bring to").
4. "needs_bimanual": Does the task ABSOLUTELY require two arms working simultaneously where NO passive support is possible? Output FALSE for cutting, slicing, or chopping (the surface stabilizes the food — one arm with a knife suffices). Output FALSE for folding (can be done sequentially). Output FALSE for holding one object while interacting with another (the robot can act sequentially). Only output TRUE for tasks like tearing an object apart, wringing a towel, or bending a rigid rod — where two opposing forces must be applied simultaneously with no surface support.
5. "needs_contact": Does the robot need to physically touch anything at all?
6. "needs_rigid_grip": Is the object heavy, resistive, or requiring a firm rigid grip? Output FALSE if the task can be done by pushing (e.g., arranging a sofa).

Respond ONLY with a valid JSON dictionary matching exactly the keys above. Do NOT add any text outside the JSON.

EXAMPLES:
Task: arrange shoes
{
    "reasoning": "Arranging items on the floor can be done by pushing or sliding them with a blunt arm, meaning a gripper is not strictly required.",
    "needs_grasping": false,
    "needs_precision": false,
    "needs_mobility": false,
    "needs_bimanual": false,
    "needs_contact": true,
    "needs_rigid_grip": false
}

Task: adjust the desk lamp
{
    "reasoning": "Adjusting a lamp requires physical contact to nudge or push it into place, but does not strictly require grasping it with fingers or extreme 7-DoF precision.",
    "needs_grasping": false,
    "needs_precision": false,
    "needs_mobility": false,
    "needs_bimanual": false,
    "needs_contact": true,
    "needs_rigid_grip": false
}

Task: bring the bowl to the counter
{
    "reasoning": "Bringing an object only requires the arm to reach — the robot is already positioned optimally, so no mobile base is needed.",
    "needs_grasping": true,
    "needs_precision": false,
    "needs_mobility": false,
    "needs_bimanual": false,
    "needs_contact": true,
    "needs_rigid_grip": false
}

Task: slice a tomato on a cutting board
{
    "reasoning": "The cutting board and surface stabilize the tomato passively — the robot only needs one arm to hold the knife, not two arms simultaneously.",
    "needs_grasping": true,
    "needs_precision": false,
    "needs_mobility": false,
    "needs_bimanual": false,
    "needs_contact": true,
    "needs_rigid_grip": true
}

Task: get the pen from the table and go turn on the floor lamp
{
    "reasoning": "Despite 'go', the robot is assumed to be within arm's reach of all relevant objects, so no mobile base is needed.",
    "needs_grasping": true,
    "needs_precision": false,
    "needs_mobility": false,
    "needs_bimanual": false,
    "needs_contact": true,
    "needs_rigid_grip": false
}

Task: wrap the gloves in the yellow towel
{
    "reasoning": "Wrapping can be done sequentially with one arm — both hands are not required simultaneously on the same object.",
    "needs_grasping": true,
    "needs_precision": false,
    "needs_mobility": false,
    "needs_bimanual": false,
    "needs_contact": true,
    "needs_rigid_grip": false
}

"""

def map_gripper_config(gripper_str):
    if pd.isna(gripper_str) or 'No specified Gripper' in str(gripper_str):
        return 'none'
    elif '2 Fingers' in str(gripper_str):
        return 'two_finger'
    return 'none'

def parse_multi_choice_hardware_string(config_str: str) -> dict:
    config = {
        'mobile': False,
        'arms': 0,
        'dof': 6,
        'gripper_type': 'none',
        'rigid': False
    }
    
    arm_match = re.search(r'(\d+) arm', config_str)
    if arm_match: config['arms'] = int(arm_match.group(1))
        
    dof_match = re.search(r'(\d+) DoFs', config_str)
    if dof_match: config['dof'] = int(dof_match.group(1))
        
    if 'rigid' in config_str: config['rigid'] = True
    config['gripper_type'] = map_gripper_config(config_str)
        
    if 'can walk' in config_str and 'not walk' not in config_str:
        config['mobile'] = True
        
    return config

def parse_llm_json(llm_output: str) -> dict:
    match = re.search(r'\{.*\}', str(llm_output), re.DOTALL)
    if match:
        try:
            return json.loads(match.group(0))
        except Exception:
            pass
    return {
        "reasoning": "Parsing failed.",
        "needs_grasping": False,
        "needs_precision": False,
        "needs_mobility": False,
        "needs_bimanual": False,
        "needs_contact": False,
        "needs_rigid_grip": False
    }

def keyword_extract_task_properties(task_str: str) -> dict:
    t = task_str.lower()
    return {
        "reasoning": "Keyword logic mapper",
        "needs_grasping": any(w in t for w in ["bring", "pick up", "get", "grab", "wrap", "slice"]),
        "needs_precision": any(w in t for w in ["insert", "thread", "screw", "key"]),
        "needs_mobility": any(w in t for w in ["go to", "move to", "navigate"]), 
        "needs_bimanual": any(w in t for w in ["tear", "wring", "bend"]),
        "needs_contact": any(w in t for w in ["adjust", "push", "touch", "arrange", "slice", "cut", "bring", "wrap"]),
        "needs_rigid_grip": any(w in t for w in ["cut", "slice", "chop"])
    }

def pure_llm_binary_predict(task_str: str, robot_config: dict, verbose: bool = False) -> bool:
    system = """You are an expert robot motion planner. 
Given a task and a robot configuration, output a JSON {'can_execute': true} or {'can_execute': false}.
Do not output anything else."""
    msg = f"Task: {task_str}\nRobot Configuration: {robot_config}"
    for attempt in range(5):
        try:
            response = client.chat.complete(
                model=MODEL_ID, messages=[{"role": "system", "content": system}, {"role": "user", "content": msg}],
                response_format={"type": "json_object"}, temperature=0.0
            )
            return json.loads(response.choices[0].message.content).get("can_execute", False)
        except Exception as e:
            if "429" in str(e): time.sleep(10 * (attempt + 1))
            else: break
    return False

def pure_llm_multi_predict(task_str: str, configs: list, verbose: bool = False) -> str:
    system = """You are an expert robot motion planner.
Given a task and a list of alternative valid robot hardware configurations, you must select the MOST CAPABLE viable configuration.
Higher DoFs, more arms, and mobility typically imply higher capability.
Output a JSON: {'selected_config': '<exact string>'}"""
    msg = f"Task: {task_str}\nConfigurations:\n" + "\n".join(configs)
    for attempt in range(5):
        try:
            response = client.chat.complete(
                model=MODEL_ID, messages=[{"role": "system", "content": system}, {"role": "user", "content": msg}],
                response_format={"type": "json_object"}, temperature=0.0
            )
            raw = json.loads(response.choices[0].message.content).get("selected_config", "")
            for c in configs:
                if c.lower() == raw.lower(): return c
            
            # Fuzzy fallback
            for c in configs:
                if c.lower() in raw.lower() or raw.lower() in c.lower(): return c
            
            return configs[0] if configs else ""
        except Exception as e:
            if "429" in str(e): time.sleep(10 * (attempt + 1))
            else: break
    return configs[0] if configs else ""

def extract_task_properties(task_str: str, verbose: bool = False, ablation: str = "none") -> dict:
    if ablation == "pure_logic": return keyword_extract_task_properties(task_str)
    
    sys_prompt = SYSTEM_PROMPT.strip()
    if ablation == "no_cot":
        sys_prompt = sys_prompt.replace('First, provide a brief 1-sentence rationale in the "reasoning" key. Then, output the 6 booleans.\n\n', '')
        sys_prompt = re.sub(r'\s*"reasoning":\s*"[^"]*",', '', sys_prompt)

    messages = [
        {"role": "system", "content": sys_prompt},
        {"role": "user", "content": f"Task: {task_str}"}
    ]
    
    max_retries = 5
    for attempt in range(max_retries):
        try:
            response = client.chat.complete(
                model=MODEL_ID,
                messages=messages,
                response_format={"type": "json_object"}
            )
            
            response_text = response.choices[0].message.content
            
            if verbose:
                tqdm.write(f"\nTask: {task_str}")
                tqdm.write(f"LLM Output: {response_text}")
                tqdm.write("-" * 40)

            return parse_llm_json(response_text)
            
        except Exception as e:
            error_msg = str(e)
            if "429" in error_msg:
                wait_time = 10 * (attempt + 1)
                tqdm.write(f"\n[!] Mistral API rate limit exceeded. Automatically pausing for {wait_time} seconds and will auto-retry...")
                time.sleep(wait_time)
            else:
                tqdm.write(f"\n[!] Mistral API error: {error_msg}")
                break
                
    return parse_llm_json("")

def run_prolog_solver(properties: dict, robot_config: dict, strict: bool = False) -> bool:
    goals = []
    
    for key, value in properties.items():
        if not key.startswith("needs_"): 
            continue # Skip reasoning, typos, or any unexpected keys
        v_str = str(value).lower()
        goals.append(f"assertz(task_{key}({v_str}))")
        
    goals.append(f"assertz(robot_mobile({str(robot_config['mobile']).lower()}))")
    goals.append(f"assertz(robot_arms({robot_config['arms']}))")
    goals.append(f"assertz(robot_dof({robot_config['dof']}))")
    goals.append(f"assertz(robot_gripper_type({robot_config['gripper_type']}))")
    goals.append(f"assertz(robot_rigid({str(robot_config['rigid']).lower()}))")
    
    # Use strict rules for multi-choice, relaxed for binary
    predicate = "can_execute_strict" if strict else "can_execute"
    goals.append(f"({predicate} -> write('true') ; write('false'))")
    goals.append("halt")
    
    goal_str = ", ".join(goals)
    cmd = ['swipl', '-f', 'reasoner.pl', '-g', goal_str]
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        output = result.stdout.strip()
        if "\n" in output:
            output = output.split("\n")[-1].strip()
        return output == 'true'
    except Exception as e:
        print(f"Prolog inference failed: {e}")
        return False

def evaluate_binary(limit=None, verbose=False, output_file="results_binary.txt", ablation="none"):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Meta-Reasoning (Binary Error Analysis)")
    print(f"Using Mistral model: {MODEL_ID}")
    print(f"Ablation Mode: {ablation}")
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

    csv_path = "../../Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_with_negatives.csv"
    if not os.path.exists(csv_path):
        print(f"ERROR: Cannot find benchmark data at {csv_path}")
        return

    df = pd.read_csv(csv_path)
    if limit:
        df = df.sample(n=limit, random_state=42)

    llm_cache = {}
    tp, tn, fp, fn = 0, 0, 0, 0
    
    # Open error log file
    #error_log = open("errors_2.txt", "w")
    error_log = open(output_file, "w")
    error_log.write("=" * 60 + "\n")
    error_log.write("ERROR LOG - Meta-Reasoning Binary Evaluation\n")
    error_log.write("=" * 60 + "\n")
    error_log.write(f"Model: {MODEL_ID}\n")
    error_log.write(f"Total samples to evaluate: {len(df)}\n")
    error_log.write("=" * 60 + "\n\n")

    for idx, row in tqdm(df.iterrows(), total=len(df), desc="Binary Eval", mininterval=10.0):
        task = row['Task']
        
        if ablation == "pure_llm":
            props = {"reasoning": "Pure LLM ablation active."}
        else:
            if task not in llm_cache:
                llm_cache[task] = extract_task_properties(task, verbose=verbose, ablation=ablation)
            props = llm_cache[task]
        
        robot_config = {
            'mobile': row['Mobile?'],
            'arms': row['Arms'],
            'dof': row['DoFs'],
            'gripper_type': map_gripper_config(row['Gripper Config']),
            'rigid': row['Rigid Gripper?']
        }
        if ablation == "pure_llm":
            pred = pure_llm_binary_predict(task, robot_config, verbose=verbose)
        else:
            pred = run_prolog_solver(props, robot_config)
        actual = row['Can execute?']
        
        if pred and actual: 
            tp += 1
        elif not pred and not actual: 
            tn += 1
        elif pred and not actual: 
            fp += 1
            error_log.write(f"\n[FALSE POSITIVE #{fp}] Pipeline said TRUE, Dataset said FALSE\n")
            error_log.write(f"Task: {task}\n")
            error_log.write(f"LLM Task Properties:\n")
            for key, val in props.items():
                error_log.write(f"  - {key}: {val}\n")
            error_log.write(f"Robot Configuration Being Tested:\n")
            error_log.write(f"  - Mobile: {robot_config['mobile']}\n")
            error_log.write(f"  - Arms: {robot_config['arms']}\n")
            error_log.write(f"  - DoF: {robot_config['dof']}\n")
            error_log.write(f"  - Gripper Type: {robot_config['gripper_type']}\n")
            error_log.write(f"  - Rigid Grip: {robot_config['rigid']}\n")
            error_log.write(f"Ground Truth in Dataset: Can Execute = FALSE\n")
            error_log.write("-" * 40 + "\n")
        else: 
            fn += 1
            error_log.write(f"\n[FALSE NEGATIVE #{fn}] Pipeline said FALSE, Dataset said TRUE\n")
            error_log.write(f"Task: {task}\n")
            error_log.write(f"LLM Task Properties:\n")
            for key, val in props.items():
                error_log.write(f"  - {key}: {val}\n")
            error_log.write(f"Robot Configuration Being Tested:\n")
            error_log.write(f"  - Mobile: {robot_config['mobile']}\n")
            error_log.write(f"  - Arms: {robot_config['arms']}\n")
            error_log.write(f"  - DoF: {robot_config['dof']}\n")
            error_log.write(f"  - Gripper Type: {robot_config['gripper_type']}\n")
            error_log.write(f"  - Rigid Grip: {robot_config['rigid']}\n")
            error_log.write(f"Ground Truth in Dataset: Can Execute = TRUE\n")
            error_log.write("-" * 40 + "\n")

    total = tp + tn + fp + fn
    acc = (tp + tn) / total if total > 0 else 0
    prec = tp / (tp + fp) if (tp + fp) > 0 else 0
    rec = tp / (tp + fn) if (tp + fn) > 0 else 0
    f1 = 2 * prec * rec / (prec + rec) if (prec + rec) > 0 else 0
    ratio = (tp + fp) / (tn + fn) if (tn + fn) > 0 else float('inf')
    spec = tn / (tn + fp) if (tn + fp) > 0 else 0

    print("\n" + "=" * 40)
    print("FINAL BINARY BENCHMARK RESULTS")
    print("=" * 40)
    print(f"TP: {tp} | TN: {tn} | FP: {fp} | FN: {fn}")
    print(f"Accuracy:    {acc:.3f}")
    print(f"Spec.:       {spec:.3f}")
    print(f"Ratio:       {ratio:.3f}")
    print(f"F1 Score:    {f1:.3f}")
    print("=" * 40)
    
    # Write summary to error log file
    error_log.write("\n" + "=" * 60 + "\n")
    error_log.write("SUMMARY\n")
    error_log.write("=" * 60 + "\n")
    error_log.write(f"TP: {tp} | TN: {tn} | FP: {fp} | FN: {fn}\n")
    error_log.write(f"Accuracy:    {acc:.3f}\n")
    error_log.write(f"Spec.:       {spec:.3f}\n")
    error_log.write(f"Ratio:       {ratio:.3f}\n")
    error_log.write(f"Precision:   {prec:.3f}\n")
    error_log.write(f"Recall:      {rec:.3f}\n")
    error_log.write(f"F1 Score:    {f1:.3f}\n")
    error_log.write("=" * 60 + "\n")
    error_log.close()
    print(f"\n Error log written to: errors.txt")

def evaluate_multi(limit=None, verbose=False, output_file="results_multi.txt", ablation="none"):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Meta-Reasoning (Multi-Choice)")
    print(f"Using Mistral model: {MODEL_ID}")
    print(f"Ablation Mode: {ablation}")
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

    csv_path = "../../Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_multi_questions.csv"
    if not os.path.exists(csv_path):
        print(f"ERROR: Cannot find benchmark data at {csv_path}")
        return

    df = pd.read_csv(csv_path)
    df['Wrong_Configurations'] = df['Wrong_Configurations'].apply(ast.literal_eval)
    
    if limit:
        df = df.sample(n=limit, random_state=42)

    llm_cache = {}
    correct_preds = 0
    error_count = 0
    no_valid_count = 0

    # Open output log file
    log = open(output_file, "w")
    log.write("=" * 60 + "\n")
    log.write("RESULT LOG - Meta-Reasoning Multi-Choice Evaluation\n")
    log.write("=" * 60 + "\n")
    log.write(f"Model: {MODEL_ID}\n")
    log.write(f"Total questions to evaluate: {len(df)}\n")
    log.write("=" * 60 + "\n\n")

    def score(cfg_str, task_props):
        """Score a config for multi-choice selection.
        The correct answer in the dataset is always the MOST CAPABLE 
        minimum-viable robot. So among configs that pass Prolog, we 
        pick the one with the highest capability score."""
        c = parse_multi_choice_hardware_string(cfg_str)
        s = 0
        
        # Base capability score (higher = more capable)
        s += c['arms'] * 1000
        s += c['dof'] * 100
        s += 50 if c['gripper_type'] != 'none' else 0
        s += 30 if c['mobile'] else 0
        # Only reward rigid if the task actually needs it;
        # slightly penalize rigid when not needed (breaks ties in favor of soft)
        if task_props.get('needs_rigid_grip'):
            s += 10 if c['rigid'] else 0
        else:
            s -= 1 if c['rigid'] else 0
        
        return s

    for idx, row in tqdm(df.iterrows(), total=len(df), desc="Multi-Choice Eval", mininterval=10.0):
        task = row['Task']
        correct_conf_str = row['Correct_Configuration']
        wrong_confs = row['Wrong_Configurations']
        all_choices = wrong_confs + [correct_conf_str]
        
        if ablation == "pure_llm":
            props = {"reasoning": "Pure LLM ablation active"}
        else:
            if task not in llm_cache:
                llm_cache[task] = extract_task_properties(task, verbose=verbose, ablation=ablation)
            props = llm_cache[task]
        
        valid_choices = []
        config_results = [] 
        for choice_str in all_choices:
            robot_config = parse_multi_choice_hardware_string(choice_str)
            passed = run_prolog_solver(props, robot_config, strict=False)
            is_correct = (choice_str == correct_conf_str)
            config_results.append({
                'config': choice_str,
                'parsed': robot_config,
                'passed': passed,
                'is_correct': is_correct,
                'score': score(choice_str, props),
            })
            if passed:
                valid_choices.append(choice_str)
        
        best_choice = None
        is_correct_pred = False
        
        if ablation == "pure_llm":
            # Just directly pipe all choices to LLM and trust it
            best_choice = pure_llm_multi_predict(task, all_choices, verbose=verbose)
            if best_choice == correct_conf_str:
                correct_preds += 1
                is_correct_pred = True
            else:
                error_count += 1
                
        elif len(valid_choices) >= 1:
            # Pick the MOST capable valid config (highest score)
            valid_choices.sort(key=lambda cfg: score(cfg, props), reverse=True)
            best_choice = valid_choices[0]
            if best_choice == correct_conf_str:
                correct_preds += 1
                is_correct_pred = True
            else:
                error_count += 1
        else:
            no_valid_count += 1
            error_count += 1

        # Log every question (errors get a prominent label)
        if is_correct_pred:
            label = "CORRECT"
        elif best_choice is None:
            label = "WRONG (no config passed Prolog)"
        else:
            label = "WRONG (selected wrong config)"

        log.write(f"[Q{idx+1}] [{label}]\n")
        log.write(f"Task: {task}\n")
        log.write(f"LLM Task Properties:\n")
        for key, val in props.items():
            log.write(f"  - {key}: {val}\n")
        log.write(f"\nConfigurations:\n")
        for cr in config_results:
            tag = "CORRECT_ANS" if cr['is_correct'] else "WRONG_ANS"
            status = "PASS" if cr['passed'] else "FAIL"
            p = cr['parsed']
            log.write(f"  [{tag}] [{status}] (score={cr['score']}) "
                       f"arms={p['arms']}, dof={p['dof']}, "
                       f"gripper={p['gripper_type']}, "
                       f"mobile={p['mobile']}, rigid={p['rigid']}\n")
            log.write(f"    Raw: {cr['config']}\n")
        
        if best_choice:
            log.write(f"\nSelected: {best_choice}\n")
            log.write(f"Correct:  {correct_conf_str}\n")
        else:
            log.write(f"\nSelected: NONE (no config passed strict Prolog)\n")
            log.write(f"Correct:  {correct_conf_str}\n")
        log.write("-" * 60 + "\n\n")

    acc = correct_preds / len(df) if len(df) > 0 else 0

    # Write summary
    log.write("\n" + "=" * 60 + "\n")
    log.write("SUMMARY\n")
    log.write("=" * 60 + "\n")
    log.write(f"Total questions: {len(df)}\n")
    log.write(f"Correct: {correct_preds}\n")
    log.write(f"Wrong (picked wrong config): {error_count - no_valid_count}\n")
    log.write(f"Wrong (no config passed): {no_valid_count}\n")
    log.write(f"Accuracy: {acc:.3f}\n")
    log.write("=" * 60 + "\n")
    log.close()

    print("\n" + "=" * 40)
    print("FINAL MULTI-CHOICE BENCHMARK RESULTS")
    print("=" * 40)
    print(f"Accuracy: {acc:.3f}")
    print(f"  Correct: {correct_preds}/{len(df)}")
    print(f"  Wrong (picked wrong config): {error_count - no_valid_count}")
    print(f"  Wrong (no config passed): {no_valid_count}")
    print("=" * 40)
    print(f"\nResult log written to: {output_file}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Run Meta-Reasoning Evaluation via Mistral')
    parser.add_argument('--mode', type=str, choices=['binary', 'multi', 'all'], default='all', help='Evaluation mode')
    parser.add_argument('--limit', type=int, default=None, help='Limit number of samples (for faster testing)')
    parser.add_argument('--verbose', action='store_true', help='Print the LLM output for every task')
    parser.add_argument('--output_file', type=str, default="./results/results.txt", help='Output file for results')
    parser.add_argument('--ablation', type=str, choices=['none', 'pure_llm', 'pure_logic'], default='none', help='Ablation mode')
    parser.add_argument('--model', type=str, choices=['mistral-large-latest', 'mistral-medium-latest', 'mistral-small-latest'], default='mistral-large-latest', help='Model choice')
    args = parser.parse_args()
    
    MODEL_ID = args.model
    if args.mode in ['binary', 'all']:
        evaluate_binary(limit=args.limit, verbose=args.verbose, output_file=args.output_file.replace('.txt', '_binary.txt') if 'results.txt' in args.output_file else args.output_file, ablation=args.ablation)
    if args.mode in ['multi', 'all']:
        evaluate_multi(limit=args.limit, verbose=args.verbose, output_file=args.output_file.replace('.txt', '_multi.txt') if 'results.txt' in args.output_file else args.output_file, ablation=args.ablation)