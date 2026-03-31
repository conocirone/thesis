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
from groq import Groq

# ---------------------------------------------------------------------------
# LLM Initialization (Groq API)
# ---------------------------------------------------------------------------
MODEL_ID = "llama-3.3-70b-versatile"

try:
    client = Groq()
except Exception as e:
    print("Error: Could not find your API key. Did you set the GROQ_API_KEY environment variable?")
    sys.exit(1)

# System prompt for task property extraction
SYSTEM_PROMPT = """
You are an expert robot motion planner.
Your job is to analyze a natural language household task and answer 6 specific Yes/No questions about its physical requirements.

Focus strictly on the MINIMUM physical actions required:
1. "needs_grasping": Does this task require picking up, holding, or securing an object with fingers or clamps?
2. "needs_precision": Does this task involve high-precision alignment, small constrained spaces, inserting objects, or meticulous orientation?
3. "needs_mobility": Does the robot need to move its base to a completely different location? (false if done in place or rotating)
4. "needs_bimanual": Does the task explicitly require using TWO distinct hands SIMULTaneously? (e.g. cutting food, unscrewing jar)
5. "needs_contact": Does the robot need to physically touch anything at all? (false if just observing/turning on a remote)
6. "needs_rigid_grip": If grasping is needed, is the object heavy, resistive, or requiring a firm rigid grip (as opposed to soft cloth or delicate food)?

Respond ONLY with a valid JSON dictionary matching exactly the keys above and boolean values. Do NOT add any markdown, explanation or text.
"""

def map_gripper_config(gripper_str):
    """Map CSV gripper string to Prolog atom."""
    if pd.isna(gripper_str) or 'No specified Gripper' in str(gripper_str):
        return 'none'
    elif '2 Fingers' in str(gripper_str):
        return 'two_finger'
    return 'none'

def parse_multi_choice_hardware_string(config_str: str) -> dict:
    """
    Parse natural language multi-choice string into dict.
    Example: 'The robot has 1 arm(s) with 7 DoFs and rigid Robot Grippers with 2 Fingers and it can not walk.'
    """
    config = {
        'mobile': False,
        'arms': 0,
        'dof': 6,
        'gripper_type': 'none',
        'rigid': False
    }
    
    # 1. Arms
    arm_match = re.search(r'(\d+) arm', config_str)
    if arm_match:
        config['arms'] = int(arm_match.group(1))
        
    # 2. DoFs
    dof_match = re.search(r'(\d+) DoFs', config_str)
    if dof_match:
        config['dof'] = int(dof_match.group(1))
        
    # 3. Gripper Rigid
    if 'rigid' in config_str:
        config['rigid'] = True
        
    # 4. Gripper Type
    config['gripper_type'] = map_gripper_config(config_str)
        
    # 5. Mobile
    if 'can walk' in config_str and 'not walk' not in config_str:
        config['mobile'] = True
        
    return config

def parse_llm_json(llm_output: str) -> dict:
    """Extract JSON from LLM output."""
    match = re.search(r'\{.*\}', str(llm_output), re.DOTALL)
    if match:
        try:
            return json.loads(match.group(0))
        except Exception:
            pass
    return {
        "needs_grasping": False,
        "needs_precision": False,
        "needs_mobility": False,
        "needs_bimanual": False,
        "needs_contact": False,
        "needs_rigid_grip": False
    }

def extract_task_properties(task_str: str) -> dict:
    """Use Groq API to extract task properties with built-in rate limit handling."""
    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user", "content": f"Task: {task_str}"}
    ]
    
    max_retries = 5
    for attempt in range(max_retries):
        try:
            response = client.chat.completions.create(
                model=MODEL_ID,
                messages=messages,
                temperature=0.0,
                max_tokens=256,
                response_format={"type": "json_object"} # Forces JSON
            )
            response_text = response.choices[0].message.content
            return parse_llm_json(response_text)
            
        except Exception as e:
            error_msg = str(e)
            if "429" in error_msg or "rate_limit" in error_msg.lower():
                wait_time = 15 * (attempt + 1) # Progressive backoff: 15s, 30s, 45s...
                print(f"\n[!] Groq Rate limit hit. Pausing for {wait_time} seconds...")
                time.sleep(wait_time)
            else:
                print(f"\n[!] API error during extraction: {error_msg}")
                break
                
    # Fallback to default False values if it completely fails
    return parse_llm_json("")

def run_prolog_solver(properties: dict, robot_config: dict) -> bool:
    """Run the Prolog solver with extracted properties and robot configuration."""
    goals = []
    
    for key, value in properties.items():
        v_str = str(value).lower()
        goals.append(f"assertz(task_{key}({v_str}))")
        
    goals.append(f"assertz(robot_mobile({str(robot_config['mobile']).lower()}))")
    goals.append(f"assertz(robot_arms({robot_config['arms']}))")
    goals.append(f"assertz(robot_dof({robot_config['dof']}))")
    goals.append(f"assertz(robot_gripper_type({robot_config['gripper_type']}))")
    goals.append(f"assertz(robot_rigid({str(robot_config['rigid']).lower()}))")
    
    goals.append("(can_execute -> write('true') ; write('false'))")
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

def evaluate_binary(limit=None):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Meta-Reasoning (Binary)")
    print(f"Using Groq model: {MODEL_ID}")
    print("=" * 60)

    csv_path = "../../Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_with_negatives.csv"
    if not os.path.exists(csv_path):
        print(f"ERROR: Cannot find benchmark data at {csv_path}")
        return

    df = pd.read_csv(csv_path)
    print(f"Loaded {len(df)} questions from {csv_path}")
    
    # Limit evaluation size for faster testing (default: None = all)
    if limit:
        df = df.head(limit)
        print(f"Limiting evaluation to first {limit} samples")

    llm_cache = {}
    tp, tn, fp, fn = 0, 0, 0, 0

    for idx, row in tqdm(df.iterrows(), total=len(df), desc="Binary Eval"):
        task = row['Task']
        
        if task not in llm_cache:
            llm_cache[task] = extract_task_properties(task)
        props = llm_cache[task]
        
        robot_config = {
            'mobile': row['Mobile?'],
            'arms': row['Arms'],
            'dof': row['DoFs'],
            'gripper_type': map_gripper_config(row['Gripper Config']),
            'rigid': row['Rigid Gripper?']
        }
        pred = run_prolog_solver(props, robot_config)
        actual = row['Can execute?']
        
        if pred and actual: tp += 1
        elif not pred and not actual: tn += 1
        elif pred and not actual: fp += 1
        else: fn += 1

    total = tp + tn + fp + fn
    acc = (tp + tn) / total if total > 0 else 0
    prec = tp / (tp + fp) if (tp + fp) > 0 else 0
    rec = tp / (tp + fn) if (tp + fn) > 0 else 0
    spec = tn / (tn + fp) if (tn + fp) > 0 else 0
    f1 = 2 * prec * rec / (prec + rec) if (prec + rec) > 0 else 0

    print("\n" + "=" * 40)
    print("FINAL BINARY BENCHMARK RESULTS")
    print("=" * 40)
    print(f"Total evaluated: {total}")
    print(f"TP: {tp} | TN: {tn} | FP: {fp} | FN: {fn}")
    print("-" * 40)
    print(f"Accuracy:    {acc:.3f}")
    print(f"Precision:   {prec:.3f}")
    print(f"Recall:      {rec:.3f}")
    print(f"Specificity: {spec:.3f}")
    print(f"F1 Score:    {f1:.3f}")
    print("=" * 40)


def evaluate_multi(limit=None):
    print("=" * 60)
    print("Neuro-Symbolic Evaluation: Meta-Reasoning (Multi-Choice)")
    print(f"Using Groq model: {MODEL_ID}")
    print("=" * 60)

    csv_path = "../../Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_multi_questions.csv"
    if not os.path.exists(csv_path):
        print(f"ERROR: Cannot find benchmark data at {csv_path}")
        return

    df = pd.read_csv(csv_path)
    df['Wrong_Configurations'] = df['Wrong_Configurations'].apply(ast.literal_eval)
    print(f"Loaded {len(df)} questions from {csv_path}")
    
    # Limit evaluation size for faster testing (default: None = all)
    if limit:
        df = df.head(limit)
        print(f"Limiting evaluation to first {limit} samples")

    llm_cache = {}
    correct_preds = 0

    for idx, row in tqdm(df.iterrows(), total=len(df), desc="Multi-Choice Eval"):
        task = row['Task']
        correct_conf_str = row['Correct_Configuration']
        wrong_confs = row['Wrong_Configurations']
        all_choices = wrong_confs + [correct_conf_str]
        
        if task not in llm_cache:
            llm_cache[task] = extract_task_properties(task)
        props = llm_cache[task]
        
        # Test all choices through Prolog
        valid_choices = []
        for choice_str in all_choices:
            robot_config = parse_multi_choice_hardware_string(choice_str)
            if run_prolog_solver(props, robot_config):
                valid_choices.append(choice_str)
                
        if len(valid_choices) >= 1:
            # Sort choices by "minimality" to break ties
            def score(cfg_str):
                c = parse_multi_choice_hardware_string(cfg_str)
                return c['arms'] * 10 + c['dof'] * 2 + (1 if c['gripper_type'] != 'none' else 0)
            
            valid_choices.sort(key=score)
            best_choice = valid_choices[0]
            
            if best_choice == correct_conf_str:
                correct_preds += 1

    acc = correct_preds / len(df) if len(df) > 0 else 0
    print("\n" + "=" * 40)
    print("FINAL MULTI-CHOICE BENCHMARK RESULTS")
    print("=" * 40)
    print(f"Total evaluated: {len(df)}")
    print(f"Correct: {correct_preds}")
    print(f"Accuracy: {acc:.3f}")
    print("=" * 40)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Run Meta-Reasoning Evaluation via Groq')
    parser.add_argument('--mode', type=str, choices=['binary', 'multi', 'all'], default='all', help='Evaluation mode')
    parser.add_argument('--limit', type=int, default=None, help='Limit number of samples (for faster testing)')
    args = parser.parse_args()
    
    if args.mode in ['binary', 'all']:
        evaluate_binary(limit=args.limit)
    if args.mode in ['multi', 'all']:
        evaluate_multi(limit=args.limit)