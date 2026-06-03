"""
annotate_behavior1k.py — Generate hardware annotations for BEHAVIOR-1K tasks
"""

import json
import os
import re
import sys
import time
import argparse
import random
from pathlib import Path

import pandas as pd
from tqdm import tqdm
from mistralai.client import Mistral
import ollama as ollama_lib

REPO_ROOT = Path(__file__).parent.parent.parent
TASKS_JSON = REPO_ROOT / "BEHAVIOR-1K" / "behavior1k_tasks.json"
OUT_DIR = REPO_ROOT / "BEHAVIOR-1K"
OUT_DIR.mkdir(parents=True, exist_ok=True)

MODEL_ID = "mistral-large-latest"

api_key = os.environ.get("MISTRAL_API_KEY")
if not api_key:
    client = None
else:
    client = Mistral(api_key=api_key)


def _is_ollama_model(model_id: str) -> bool:
    """Checks if a model ID corresponds to a local Ollama model.

    Args:
        model_id: The identifier string of the model.

    Returns:
        True if the model is local/Ollama (does not start with 'mistral'),
        False otherwise.
    """
    return not model_id.startswith("mistral")


# ============================================================================
# LOGICAL HEURISTIC RULESETS
# ============================================================================

MOBILITY_VERBS = {
    'vacuum', 'mop', 'sweep', 'rake', 'mow', 'shovel', 'hose', 'sprinkle',
    'go to', 'navigate', 'walk', 'run', 'traverse', 'wander', 'outdoor',
    'garden', 'lawn', 'yard', 'patio', 'deck'
}

BIMANUAL_VERBS = {
    'wring', 'tie', 'knot', 'fold', 'knead', 'wrap', 'tear', 'bimanual',
    'shoelace', 'pair socks'
}

PUSH_VERBS = {
    'press', 'switch', 'push', 'nudge', 'turn off', 'turn on', 'reset', 
    'plug', 'unplug', 'shut', 'close', 'open', 'button'
}

PRECISION_VERBS = {
    'tighten', 'screw', 'thread', 'unlock', 'lock', 'caulk', 'fasten', 
    'latch', 'install', 'mend', 'sharpen', 'adjust', 'dial', 'unclog', 'assemble'
}

BASIC_VERBS = {
    'wipe', 'dust', 'mop', 'water', 'sweep', 'feed', 'clear', 'rake', 
    'scrub', 'sanitize', 'polish', 'brush', 'sponge'
}

BLUNT_VERBS = {
    'push', 'nudge', 'wipe', 'mop', 'vacuum', 'sweep', 'dust', 'press', 
    'switch', 'turn on', 'turn off', 'adjust'
}

RIGID_VERBS = {
    'slice', 'chop', 'cut', 'saw', 'hammer', 'drill', 'iron', 'scrape', 
    'prune', 'clip', 'shears', 'screw', 'tighten', 'heavy', 'tighten',
    'knead', 'pound', 'wring'
}

MANIPULATION_VERBS = {
    'bring', 'get', 'pick', 'carry', 'place', 'put', 'take', 'retrieve', 
    'pack', 'unpack', 'bag', 'canning', 'bottle', 'organize', 'load', 'unload', 
    'move', 'give', 'hold', 'keep', 'arrange', 'sort', 'stack', 'store'
}


def heuristic_annotate_task(task: str) -> dict:
    """programmatic physical requirements parser grounded in action verbs.

    Args:
        task: Natural language description of the household task.

    Returns:
        A dictionary containing:
        - mobile (bool)
        - arms (int)
        - min_dof (int)
        - gripper (str)
        - rigid_grip (bool)
    """
    task_lower = task.lower()
    
    mobile = any(kw in task_lower for kw in MOBILITY_VERBS)
    
    # 1. Determine end-effector requirements
    gripper = "none" if any(kw in task_lower for kw in BLUNT_VERBS) else "two_finger"
    rigid_grip = any(kw in task_lower for kw in RIGID_VERBS)
    if gripper == "none":
        rigid_grip = False
        
    # 2. Determine manipulation requirement (0, 1, or 2 arms)
    has_manipulation = (
        any(kw in task_lower for kw in BIMANUAL_VERBS) or
        any(kw in task_lower for kw in PUSH_VERBS) or
        any(kw in task_lower for kw in PRECISION_VERBS) or
        any(kw in task_lower for kw in BASIC_VERBS) or
        any(kw in task_lower for kw in RIGID_VERBS) or
        any(kw in task_lower for kw in MANIPULATION_VERBS)
    )
    
    if any(kw in task_lower for kw in BIMANUAL_VERBS):
        arms = 2
    elif has_manipulation or gripper == "two_finger" or rigid_grip:
        arms = 1
    else:
        arms = 0
        
    # 3. Determine Degrees of Freedom
    if arms == 0:
        min_dof = 0
    elif any(kw in task_lower for kw in PUSH_VERBS):
        min_dof = 1
    elif any(kw in task_lower for kw in PRECISION_VERBS):
        min_dof = 7
    elif any(kw in task_lower for kw in BASIC_VERBS):
        min_dof = 4
    else:
        min_dof = 6
        
    return {
        "mobile": mobile,
        "arms": arms,
        "min_dof": min_dof,
        "gripper": gripper if arms > 0 else "none",
        "rigid_grip": rigid_grip if arms > 0 else False
    }


# ============================================================================
# COMPATIBILITY RESOLVER (PROLOG AXIOMS EQUIVALENT)
# ============================================================================

def check_compatibility(reqs: dict, platform: dict) -> bool:
    """Determines robot-to-task compatibility using universal capability rules.

    Args:
        reqs: Dictionary of task physical requirements.
        platform: Dictionary of robot hardware configuration to evaluate.

    Returns:
        True if the robot configuration meets all task requirements,
        False otherwise.
    """
    # 1. Mobility: a mobile robot can do stationary tasks, but not vice versa
    if reqs["mobile"] and not platform["Mobile?"]:
        return False
        
    # 2. Arms: robot must have at least as many arms as required
    if platform["Arms"] < reqs["arms"]:
        return False
        
    # 3. DoFs: robot must have at least the required degrees of freedom
    if platform["DoFs"] < reqs["min_dof"]:
        return False
        
    # 4. Gripper Config: if gripper is required, robot must have it
    if reqs["gripper"] == "two_finger" and platform["Gripper Config"] == "No specified Gripper":
        return False
        
    # 5. Rigid Grip: if rigid grip is required, robot must support rigid clamping
    if reqs["rigid_grip"] and not platform["Rigid Gripper?"]:
        return False
        
    # 6. Minimum capability guard (matches reasoner.pl check_min_capability)
    if not reqs["mobile"] and reqs["arms"] == 0 and not reqs["rigid_grip"] and reqs["gripper"] == "none" and reqs["min_dof"] == 0:
        if platform["Arms"] >= 1 and platform["DoFs"] < 3:
            return False
            
    return True


def generate_incapable_robot(task_str: str, reqs: dict, capable_profile: dict) -> dict:
    """Synthesizes an incapable robot config by mutating a capable one.

    Ensures that the mutated robot fails at least one critical task requirement.

    Args:
        task_str: Natural language description of the task.
        reqs: Dictionary of parsed task requirements.
        capable_profile: Robot hardware configuration dictionary that is capable.

    Returns:
        A mutated robot hardware configuration dictionary that is incapable.
    """
    mutated = capable_profile.copy()
    possible_mutations = []
    
    if reqs["mobile"] and mutated["Mobile?"]:
        possible_mutations.append("mobile")
        
    if reqs["arms"] > 0 and mutated["Arms"] >= reqs["arms"]:
        possible_mutations.append("arms")
        
    if reqs["min_dof"] > 0 and mutated["DoFs"] >= reqs["min_dof"]:
        possible_mutations.append("dof")
        
    if reqs["gripper"] == "two_finger" and mutated["Gripper Config"] != "No specified Gripper":
        possible_mutations.append("gripper")
        
    if reqs["rigid_grip"] and mutated["Rigid Gripper?"]:
        possible_mutations.append("rigid")
        
    if not possible_mutations:
        possible_mutations = ["arms", "dof", "gripper"]
        
    mutation_choice = random.choice(possible_mutations)
    base_name = capable_profile.get("Robot Model", "Custom_Super_Robot")
    mutated_name = f"{base_name}_Mutated"
    
    if mutation_choice == "mobile":
        mutated["Mobile?"] = False
        mutated_name = f"{base_name}_Stationary"
    elif mutation_choice == "arms":
        new_arms = max(0, reqs["arms"] - 1)
        mutated["Arms"] = new_arms
        if new_arms == 0:
            mutated["DoFs"] = 0
            mutated["Gripper Config"] = "No specified Gripper"
            mutated["Rigid Gripper?"] = False
            mutated_name = f"{base_name}_No_Arms"
        else:
            mutated_name = f"{base_name}_{new_arms}Arm"
    elif mutation_choice == "dof":
        if reqs["min_dof"] == 7:
            mutated["DoFs"] = random.choice([0, 1, 2, 4, 6])
        elif reqs["min_dof"] == 6:
            mutated["DoFs"] = random.choice([0, 1, 2, 4])
        elif reqs["min_dof"] == 4:
            mutated["DoFs"] = random.choice([0, 1, 2])
        else:
            mutated["DoFs"] = 0
        mutated_name = f"{base_name}_Low_DoF"
    elif mutation_choice == "gripper":
        mutated["Gripper Config"] = "No specified Gripper"
        mutated["Rigid Gripper?"] = False
        mutated_name = f"{base_name}_No_Gripper"
    elif mutation_choice == "rigid":
        mutated["Rigid Gripper?"] = False
        mutated_name = f"{base_name}_No_Rigid_Grip"
        
    if check_compatibility(reqs, mutated):
        mutated["Arms"] = 0
        mutated["DoFs"] = 0
        mutated["Gripper Config"] = "No specified Gripper"
        mutated["Rigid Gripper?"] = False
        mutated_name = f"{base_name}_Stripped"
        
    mutated["Robot Model"] = mutated_name
    mutated["Can execute?"] = False
    return mutated


# ============================================================================
# OPTIONAL LLM ANNOTATION
# ============================================================================

ANNOTATION_PROMPT = """You are an expert roboticist. Given a household manipulation task, 
determine the MINIMUM robot hardware requirements to execute it.

Answer with a JSON dictionary containing:
1. "mobile": Does this task require a mobile base? (true/false)
2. "arms": Minimum number of arms required. (1 or 2)
3. "min_dof": Minimum degrees of freedom per arm. (1, 4, 6, or 7)
4. "gripper": Does this task require a gripper? ("two_finger" or "none")
5. "rigid_grip": Does this task require a firm rigid grip? (true/false)

Respond ONLY with valid JSON. No explanation."""


def annotate_task_llm(task: str, max_retries: int = 5) -> dict:
    """Uses LLM to annotate minimum hardware requirements for a task.

    Args:
        task: Natural language description of the task.
        max_retries: Maximum number of request retries.

    Returns:
        A dictionary containing the parsed minimum requirements,
        falling back to heuristic extraction on error.
    """
    messages = [
        {"role": "system", "content": ANNOTATION_PROMPT.strip()},
        {"role": "user", "content": f"Task: {task}"},
    ]

    for attempt in range(max_retries):
        try:
            if _is_ollama_model(MODEL_ID):
                response = ollama_lib.chat(
                    model=MODEL_ID,
                    messages=messages,
                    format="json",
                    options={"temperature": 0},
                )
                raw = response.message.content.strip()
            else:
                if client is None:
                    return heuristic_annotate_task(task)
                response = client.chat.complete(
                    model=MODEL_ID,
                    messages=messages,
                    response_format={"type": "json_object"},
                    temperature=0.0,
                )
                raw = response.choices[0].message.content.strip()

            match = re.search(r'\{.*\}', raw, re.DOTALL)
            if match:
                result = json.loads(match.group(0))
                return {
                    "mobile": bool(result.get("mobile", False)),
                    "arms": int(result.get("arms", 1)),
                    "min_dof": int(result.get("min_dof", 6)),
                    "gripper": str(result.get("gripper", "two_finger")),
                    "rigid_grip": bool(result.get("rigid_grip", False)),
                }
        except Exception as e:
            if "429" in str(e):
                time.sleep(10 * (attempt + 1))
            else:
                time.sleep(1)

    return heuristic_annotate_task(task)


# ============================================================================
# MAIN GENERATION PROCESS
# ============================================================================

def main() -> None:
    """Main execution block to load tasks, annotate them, and output datasets."""
    parser = argparse.ArgumentParser(description="Annotate BEHAVIOR-1K tasks using real robot platforms")
    parser.add_argument("--engine", type=str, choices=["heuristic", "llm"], default="heuristic",
                        help="Annotation engine (default: heuristic)")
    parser.add_argument("--limit", type=int, default=None, help="Limit to first N tasks")
    parser.add_argument("--validate", action="store_true", help="Spot-check 20 random annotations")
    parser.add_argument("--model", type=str, default="mistral-large-latest",
                        help="Model to use for LLM annotation (e.g. mistral-large-latest, llama3.1:latest)")
    args = parser.parse_args()
    
    global MODEL_ID
    MODEL_ID = args.model
    
    if not TASKS_JSON.exists():
        print(f"ERROR: Task list not found at {TASKS_JSON}")
        print("Run: python download_behavior1k.py")
        sys.exit(1)
    
    with open(TASKS_JSON, encoding="utf-8") as f:
        tasks = json.load(f)
    
    if args.limit:
        tasks = tasks[:args.limit]
    
    print("=" * 60)
    print(f"BEHAVIOR-1K Hardware Annotation ({len(tasks)} tasks)")
    print(f"Engine: {args.engine.upper()} | Model: {MODEL_ID if args.engine == 'llm' else 'N/A'}")
    print("=" * 60)
    
    random.seed(42)
    rows = []
    
    for task_item in tqdm(tasks, desc="Evaluating Robot Platforms"):
        task_str = task_item["task"]
        category = task_item.get("category", "unknown")
        
        if args.engine == "llm":
            reqs = annotate_task_llm(task_str)
        else:
            reqs = heuristic_annotate_task(task_str)
            
        pos_row = {
            "Task": task_str,
            "Robot Model": "Minimum_Viable_Robot",
            "Mobile?": reqs["mobile"],
            "Arms": reqs["arms"],
            "DoFs": reqs["min_dof"],
            "Gripper Config": "Robot Grippers with 2 Fingers" if reqs["gripper"] == "two_finger" else "No specified Gripper",
            "Rigid Gripper?": reqs["rigid_grip"],
            "Can execute?": True,
            "Category": category
        }
            
        neg_row = generate_incapable_robot(task_str, reqs, pos_row)
            
        rows.append(pos_row)
        rows.append(neg_row)
        
    df = pd.DataFrame(rows)
    col_order = ["Task", "Robot Model", "Mobile?", "Arms", "DoFs", "Gripper Config", "Rigid Gripper?", "Can execute?", "Category"]
    df = df[[c for c in col_order if c in df.columns]]
    
    if args.engine == "llm":
        model_slug = MODEL_ID.replace(":", "_").replace("-", "_")
        out_path = OUT_DIR / f"behavior1k_annotated_{model_slug}.csv"
    else:
        out_path = OUT_DIR / "behavior1k_annotated_heuristic.csv"
    df.to_csv(out_path, index=False)
    print(f"\nSaved {len(df)} samples ({len(df)//2} tasks × 2) to: {out_path}")
    
    print(f"\nLabel distribution:")
    print(f"  Can execute = True:  {sum(df['Can execute?'] == True)}")
    print(f"  Can execute = False: {sum(df['Can execute?'] == False)}")
    
    if args.validate:
        print(f"\n{'=' * 60}")
        print("VALIDATION SPOT-CHECK (20 random samples)")
        print("=" * 60)
        sample = df.sample(n=min(20, len(df)), random_state=42)
        for _, row in sample.iterrows():
            print(f"\n  Task: {row['Task']}")
            print(f"  Robot Model: {row['Robot Model']}")
            print(f"  Config: Mobile={row['Mobile?']}, Arms={row['Arms']}, DoF={row['DoFs']}, "
                  f"Gripper={row['Gripper Config']}, Rigid={row['Rigid Gripper?']}")
            print(f"  Can execute: {row['Can execute?']}")
            print(f"  Category: {row['Category']}")


if __name__ == "__main__":
    main()
