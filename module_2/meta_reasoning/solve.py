import sys
import os
import json
import re
import subprocess
import ollama
from pathlib import Path

# Ollama model configuration
OLLAMA_MODEL = "llama3.1"  # Change to your preferred Ollama model

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
    import pandas as pd
    if pd.isna(gripper_str) or 'No specified Gripper' in str(gripper_str):
        return 'none'
    elif '2 Fingers' in str(gripper_str):
        return 'two_finger'
    return 'none'

def parse_llm_json(llm_output: str) -> dict:
    """Parse JSON output from the LLM cleanly."""
    match = re.search(r'\{.*\}', llm_output, re.DOTALL)
    if match:
        try:
            return json.loads(match.group(0))
        except Exception:
            pass
    # Safe default fallback
    return {
        "needs_grasping": False,
        "needs_precision": False,
        "needs_mobility": False,
        "needs_bimanual": False,
        "needs_contact": False,
        "needs_rigid_grip": False
    }

def extract_task_properties(task_str: str) -> dict:
    """Use Ollama to extract task properties."""
    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user", "content": f"Task: {task_str}"}
    ]
    
    response = ollama.chat(
        model=OLLAMA_MODEL,
        messages=messages,
        format='json',
        stream=False,
    )
    
    response_text = response['message']['content']
    return parse_llm_json(response_text)

def run_prolog_solver(properties: dict, robot_config: dict) -> bool:
    """Run SWI-Prolog reasoner to verify if robot config meets task properties."""
    goals = []
    
    # 1. Assert Task Properties
    for key, value in properties.items():
        v_str = str(value).lower()
        goals.append(f"assertz(task_{key}({v_str}))")
        
    # 2. Assert Robot Config
    goals.append(f"assertz(robot_mobile({str(robot_config['mobile']).lower()}))")
    goals.append(f"assertz(robot_arms({robot_config['arms']}))")
    goals.append(f"assertz(robot_dof({robot_config['dof']}))")
    goals.append(f"assertz(robot_gripper_type({robot_config['gripper_type']}))")
    goals.append(f"assertz(robot_rigid({str(robot_config['rigid']).lower()}))")
    
    # 3. Final Verification Query
    goals.append("(can_execute -> write('true') ; write('false'))")
    goals.append("halt")
    
    goal_str = ", ".join(goals)
    cmd = ['swipl', '-f', 'reasoner.pl', '-g', goal_str]
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=10)
        output = result.stdout.strip()
        # Clean SWIPL runtime warnings
        if "\n" in output:
            output = output.split("\n")[-1].strip()
        return output == 'true'
    except Exception as e:
        print(f"Prolog inference failed: {e}")
        return False

# =====================================================================
# For testing the pipeline on a single row visually
# =====================================================================
if __name__ == "__main__":
    import pandas as pd
    df = pd.read_csv("../../Robo-CSK-Benchmark/meta_reasoning/meta_reasoning_data.csv")
    
    test_row = df.iloc[0]
    task = test_row['Task']
    
    robot_config = {
        'mobile': test_row['Mobile?'],
        'arms': test_row['Arms'],
        'dof': test_row['DoFs'],
        'gripper_type': map_gripper_config(test_row['Gripper Config']),
        'rigid': test_row['Rigid Gripper?']
    }
    
    print(f"=== Task: {task} ===")
    print(f"Using Ollama model: {OLLAMA_MODEL}")
    print("Extracting qualitative properties...")
    
    props = extract_task_properties(task)
    
    print("\n=== Resulting Semantic Properties ===")
    for k, v in props.items():
        print(f"  {k}: {v}")
        
    print(f"\n=== Ground Truth Hardware in CSV ===")
    print(test_row.to_dict())
        
    can_execute = run_prolog_solver(props, robot_config)
    print(f"\nCan the minimal robot execute this task? Prolog Engine output: {can_execute}")
