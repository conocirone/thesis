"""
llm_rule_induction.py
=====================
Given the valid background knowledge and a set of positive/negative examples (from ConceptNet),
use an LLM (neural) to propose an ASP rule for goesIn(X, Location), 
and use Clingo (symbolic) to rapidly verify if it covers the examples.
"""
import subprocess
import re
import os
import ollama
from ollama import Client
from pathlib import Path
from collections import defaultdict

SCRIPT_DIR = Path(__file__).parent
MODULE_DIR = SCRIPT_DIR.parent.parent
RULES_DIR = MODULE_DIR / "rules"
BK_FILE = RULES_DIR / "background_knowledge_validated.las"
INPUT_EXAMPLES_FILE = RULES_DIR / "ilasp_tidy_up.las"
OUTPUT_RULES_FILE = RULES_DIR / "learned_rules_llm.txt"

# Make model and host configurable for Slurm/Cluster environments
MODEL = os.environ.get("OLLAMA_MODEL", "llama3.1:latest")
OLLAMA_HOST = os.environ.get("OLLAMA_HOST", "http://localhost:11434")
MAX_RETRIES = 5

# Initialize the Ollama client
client = Client(host=OLLAMA_HOST)

def parse_ilasp_file(filename):
    """Parses the ILASP format to extract sets of context facts and pos/neg examples."""
    examples_by_loc = defaultdict(lambda: {"pos": set(), "neg": set(), "ctx": {}})
    current_loc = None
    
    with open(filename, "r") as f:
        content = f.read()

    # Match #pos(name, {pos_atoms}, {neg_atoms}, {context})
    pattern = re.compile(r'#pos\((e\d+)@\d+,\s*\{(.*?)\},\s*\{(.*?)\},\s*\{(.*?)\}\)\.', re.DOTALL)
    
    for match in pattern.finditer(content):
        ex_id = match.group(1)
        pos_atoms_str = match.group(2).strip()
        neg_atoms_str = match.group(3).strip()
        ctx_str = match.group(4).strip()
        
        # Determine the target atom (either goesIn(obj, loc) in pos or neg)
        target_atom = pos_atoms_str if pos_atoms_str else neg_atoms_str
        atom_match = re.search(r'goesIn\((.*?),\s*(.*?)\)', target_atom)
        if not atom_match:
            continue
            
        obj_id = atom_match.group(1)
        loc = atom_match.group(2)
        
        # Clean context
        ctx_facts = [line.strip() for line in ctx_str.split('\n') if line.strip()]
        examples_by_loc[loc]["ctx"][obj_id] = ctx_facts

        if pos_atoms_str:
            examples_by_loc[loc]["pos"].add(obj_id)
        if neg_atoms_str:
            examples_by_loc[loc]["neg"].add(obj_id)
            
    return examples_by_loc

def create_clingo_validation_program(loc, rule, pos_objs, neg_objs, ctx_dict):
    """
    Creates a temporary ASP program to test the candidate rule.
    Adds constraints to ensure all positive objects are derived,
    and no negative objects are derived.
    """
    prog = [
        f"% Testing rule for location: {loc}",
        rule,
        ""
    ]
    
    # Add context facts for all relevant objects
    for obj in list(pos_objs) + list(neg_objs):
        prog.extend(ctx_dict.get(obj, []))
        
    prog.append("")
        
    # Add verification constraints
    for obj in pos_objs:
        prog.append(f"failed_pos({obj}) :- not goesIn({obj}, {loc}).")
        
    for obj in neg_objs:
        prog.append(f"failed_neg({obj}) :- goesIn({obj}, {loc}).")

    return "\n".join(prog)

def run_clingo_verification(loc, rule, pos_objs, neg_objs, ctx_dict):
    """Runs Clingo on the test program and parses failures."""
    clingo_prog = create_clingo_validation_program(loc, rule, pos_objs, neg_objs, ctx_dict)
    
    # Write to temp file for debugging
    tmp_file = Path(f"/tmp/verify_{loc}.lp")
    with open(tmp_file, "w") as f:
        f.write(clingo_prog)
        
    result = subprocess.run(
        ["clingo", str(tmp_file), "0", "--out-ifs=\n"],
        capture_output=True, text=True
    )

    failures = {"pos": [], "neg": []}
    
    # Parse the answer set for failed_pos or failed_neg atoms
    for line in result.stdout.split("\n"):
        m_pos = re.match(r'failed_pos\((\w+)\)', line)
        if m_pos:
            failures["pos"].append(m_pos.group(1))
            
        m_neg = re.match(r'failed_neg\((\w+)\)', line)
        if m_neg:
            failures["neg"].append(m_neg.group(1))
            
    # Also handle syntax errors where Clingo fails entirely
    if "ERROR" in result.stderr:
        return False, {"syntax_error": result.stderr}

    is_valid = len(failures["pos"]) == 0 and len(failures["neg"]) == 0
    return is_valid, failures

def format_prompt(loc, pos_objs, neg_objs, ctx_dict, previous_errors=None):
    """Generates the LLM prompt for a specific location."""
    
    pos_str = "\n".join([f"  + {obj} ({', '.join(ctx_dict[obj])})" for obj in pos_objs])
    neg_str = "\n".join([f"  - {obj} ({', '.join(ctx_dict[obj])})" for obj in list(neg_objs)[:20]])
    
    prompt = f"""You are an expert in Answer Set Programming (ASP) and domestic robotics.
I need you to write ASP rules to determine if an object goes in the '{loc}'.

Positive examples (objects that go in {loc}):
{pos_str}

Negative examples (objects that DO NOT go in {loc}):
{neg_str}

Your task is to write ASP rules using the `hasRole` or `affordsTask` properties.
Format: goesIn(X, {loc}) :- hasRole(X, exactRoleName), affordsTask(X, exactTaskName).

RULES:
1. ONLY USE EXACT property names found in the examples. DO NOT USE 'someRole', 'someTask', '_', or make up properties!
2. Use 'X' as the variable name.
3. You can write MULTIPLE separate rules if there are distinctly different objects. Put each rule on a new line!
4. Example for fridge: 
goesIn(X, fridge) :- hasRole(X, consumableRole).
goesIn(X, fridge) :- affordsTask(X, storageTask).
"""

    if previous_errors:
        if "syntax_error" in previous_errors:
             prompt += f"\n\nYOUR PREVIOUS RULE HAD A SYNTAX ERROR:\n{previous_errors['syntax_error']}\nPlease fix it (make sure you end with a period and use standard Prolog/ASP syntax)."
        else:
             failed_pos = previous_errors.get('pos', [])
             failed_neg = previous_errors.get('neg', [])
             prompt += "\n\nYOUR PREVIOUS SET OF RULES FAILED VERIFICATION!"
             if failed_pos:
                 prompt += f"\nIt FAILED to cover these POSITIVE examples: {', '.join(failed_pos)} (You need to add a rule to cover these)"
             if failed_neg:
                 prompt += f"\nIt INCORRECTLY covered these NEGATIVE examples: {', '.join(failed_neg)} (Your rule was too broad, make it more specific)"
             prompt += "\nRevise your rules to fix these errors."

    prompt += "\n\nCRITICAL: OUTPUT ONLY THE RAW ASP RULES. ONE PER LINE. NO MARKDOWN. NO EXPLANATIONS."
    return prompt

def extract_rule(text):
    """Clean the LLM output to extract all ASP rules as a multiline string."""
    lines = text.strip().split('\n')
    rules = []
    for line in lines:
        line = line.strip().replace('```asp', '').replace('```prolog', '').replace('```', '')
        if line.startswith('goesIn') and line.endswith('.'):
            rules.append(line)
        elif line.startswith('goesIn'):
             rules.append(line + '.')
    return "\n".join(rules) if rules else text.strip()

def main():
    print("=" * 60)
    print("LLM + Clingo Rule Induction")
    print("=" * 60)
    
    print("[1/3] Parsing ILASP examples...")
    examples_by_loc = parse_ilasp_file(INPUT_EXAMPLES_FILE)
    print(f"      Parsed examples for {len(examples_by_loc)} locations.")
    
    successful_rules = {}

    print("\n[2/3] Inducing rules via LLM & Verifying via Clingo...")
    for loc, data in examples_by_loc.items():
        if not data["pos"]:
            continue
            
        print(f"\n--- Location: {loc} ({len(data['pos'])} pos, {len(data['neg'])} neg) ---")
        
        messages = [{'role': 'system', 'content': 'You provide purely logical ASP rules based on user examples.'}]
        failures = None
        
        for attempt in range(1, MAX_RETRIES + 1):
            prompt = format_prompt(loc, data["pos"], data["neg"], data["ctx"], failures)
            messages.append({'role': 'user', 'content': prompt})
            
            print(f"  Attempt {attempt}/{MAX_RETRIES}...", end=" ", flush=True)
            
            response = client.chat(
                model=MODEL,
                messages=messages,
                options={"temperature": 0.2}
            )
            
            raw_rule = response['message']['content']
            rule = extract_rule(raw_rule)
            messages.append({'role': 'assistant', 'content': rule})
            
            print(f"Rule: {rule}")
            
            is_valid, failures = run_clingo_verification(loc, rule, data["pos"], data["neg"], data["ctx"])
            
            if is_valid:
                print("  [SUCCESS] Rule verified by Clingo!")
                successful_rules[loc] = rule
                break
            else:
                if "syntax_error" in failures:
                    print("  [FAILED] Syntax Error.")
                else:
                    n_pos_fail = len(failures['pos'])
                    n_neg_fail = len(failures['neg'])
                    print(f"  [FAILED] Uncovered pos: {n_pos_fail}, Invalid neg: {n_neg_fail}")
                
        if loc not in successful_rules:
            print(f"  [GAVE UP] Could not find valid rule for {loc}.")

    print("\n[3/3] Writing optimal rules...")
    with open(OUTPUT_RULES_FILE, "w") as f:
        f.write("% ==========================================\n")
        f.write("% LEARNED RULES FOR goesIn/2\n")
        f.write("% Inducted by LLM (Llama 3.1) and verified by ASP\n")
        f.write("% ==========================================\n\n")
        for loc, rule in successful_rules.items():
            f.write(f"% --- {loc} ---\n")
            f.write(f"{rule}\n\n")
            
    print(f"      Saved {len(successful_rules)} rules to {OUTPUT_RULES_FILE}")

if __name__ == "__main__":
    main()
