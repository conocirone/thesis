"""
llm_rule_induction_tool_usage.py
================================
LLM + Clingo Rule Induction for hasAffordance(Object, Affordance) learning.

Mirrors the goesIn rule induction pipeline (llm_rule_induction.py) but targets
the tool_usage task: learning rules that map SOMA features to object affordances.

Pipeline:
    LLM -> propose candidate rules
    Clingo -> evaluate coverage
    Search -> accept best rule
    Update uncovered positives
    Repeat until all positives covered
"""

import subprocess
import re
import os
import sys
import time
from pathlib import Path
from collections import defaultdict

# =============================================================================
# CLINGO
# =============================================================================

try:
    import clingo
except ImportError:
    print("[ERROR] Install Clingo: pip install clingo")
    sys.exit(1)

# =============================================================================
# CONFIG
# =============================================================================

SCRIPT_DIR = Path(__file__).parent
MODULE_DIR = SCRIPT_DIR.parent.parent

sys.path.insert(0, str(SCRIPT_DIR.parent))
from shared.config import get_model, get_provider

#MODEL_NAME = os.environ.get("HF_MODEL_NAME", get_model("rule_induction"))
MODEL_NAME = "mistral-medium-latest"
PROVIDER = get_provider("rule_induction")
print(PROVIDER)

MAX_TOKENS = int(os.environ.get("MLX_MAX_TOKENS", "2048"))
TEMPERATURE = float(os.environ.get("MLX_TEMPERATURE", "0.7"))
TOP_P = float(os.environ.get("MLX_TOP_P", "0.85"))

NUM_RULE_CANDIDATES = int(os.environ.get("NUM_RULE_CANDIDATES", "3"))
MIN_POS_COVERAGE = int(os.environ.get("MIN_POS_COVERAGE", "1"))
MIN_BODY_LITERALS = int(os.environ.get("MIN_BODY_LITERALS", "2"))

RULES_DIR = MODULE_DIR / "rules"

INPUT_EXAMPLES_FILE = RULES_DIR / "tool_usage" / "ilasp_tool_usage.las"
OUTPUT_RULES_FILE = RULES_DIR / "tool_usage" / "learned_rules_tool_usage.txt"


# =============================================================================
# MLX
# =============================================================================

_mlx_available = False
try:
    import mlx.core as mx
    from mlx_lm import load, generate
    from mlx_lm.sample_utils import make_sampler
    _mlx_available = True
except ImportError:
    if PROVIDER in ("mlx", "ollama"):
        print("[ERROR] Install MLX: pip install mlx mlx-lm")
        sys.exit(1)


_mistral_available = False
_mistral_client = None

try:
    from mistralai.client import Mistral
    _mistral_available = True
except ImportError:
    if PROVIDER == 'mistral':
        print("Error install mistral library")
        sys.exit(1)

def _get_mistral_client():
    global _mistral_client
    if _mistral_client is None:
        api_key = os.environ.get("MISTRAL_API_KEY", "")
        if not api_key:
            raise RuntimeError("MISTRAL_API_KEY not set")
        _mistral_client = Mistral(api_key=api_key)
    return _mistral_client


_model = None
_tokenizer = None



# =============================================================================
# MODEL LOADING
# =============================================================================

def load_model():
    global _model, _tokenizer
    if PROVIDER == "mistral":
        print(f"Using Mistral API with model: {MODEL_NAME}")
        return None, None
    if _model is not None:
        return _model, _tokenizer
    print(f"Loading model {MODEL_NAME}...")
    start = time.time()
    _model, _tokenizer = load(MODEL_NAME)
    print(f"Loaded in {time.time()-start:.1f}s")
    return _model, _tokenizer


# =============================================================================
# DATA PARSER
# =============================================================================

def parse_ilasp_file(filename):
    """Parse ILASP format examples for hasAffordance."""
    examples_by_aff = defaultdict(lambda: {"pos": set(), "neg": set(), "ctx": {}})

    with open(filename, "r") as f:
        content = f.read()

    pattern = re.compile(r'#pos\((e\d+)@\d+,\s*\{(.*?)\},\s*\{(.*?)\},\s*\{(.*?)\}\)\.', re.DOTALL)

    for match in pattern.finditer(content):
        pos_atoms_str = match.group(2).strip()
        neg_atoms_str = match.group(3).strip()
        ctx_str = match.group(4).strip()

        target = pos_atoms_str if pos_atoms_str else neg_atoms_str
        atom_match = re.search(r'hasAffordance\((.*?),\s*(.*?)\)', target)
        if not atom_match:
            continue

        obj_id, aff = atom_match.group(1), atom_match.group(2)

        raw_facts = ctx_str.replace('\n', ' ')
        ctx_facts = [f.strip() for f in raw_facts.split('.') if f.strip()]
        examples_by_aff[aff]["ctx"][obj_id] = ctx_facts

        if pos_atoms_str:
            examples_by_aff[aff]["pos"].add(obj_id)
        if neg_atoms_str:
            examples_by_aff[aff]["neg"].add(obj_id)

    return examples_by_aff


# =============================================================================
# VALID CONSTANT PARSER
# =============================================================================
def parse_valid_constants(filename):
    """Parse valid quality, role, and task constants from the ILASP file header."""
    valid_qualities = set()
    valid_roles = set()
    valid_tasks = set()

    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            m = re.match(r"#constant\(quality,\s*(\w+)\)\.", line)
            if m:
                valid_qualities.add(m.group(1))
            m = re.match(r"#constant\(role,\s*(\w+)\)\.", line)
            if m:
                valid_roles.add(m.group(1))
            m = re.match(r"#constant\(task,\s*(\w+)\)\.", line)
            if m:
                valid_tasks.add(m.group(1))

    return valid_qualities, valid_roles, valid_tasks


# =============================================================================
# SPARSE OBJECT DETECTION
# =============================================================================

def detect_sparse_objects(uncovered_pos, ctx):
    """Identify objects with no quality, role, or task facts."""
    sparse = set()
    for obj in uncovered_pos:
        facts = ctx.get(obj, [])
        has_feature = any(
            f.startswith("hasPhysicalQuality(") or
            f.startswith("hasRole(") or
            f.startswith("affordsTask(")
            for f in facts
        )
        if not has_feature:
            sparse.add(obj)
    return sparse


# =============================================================================
# FOCUS OBJECT SELECTOR
# =============================================================================

def pick_focus_object(uncovered_pos, ctx, skip_objs=None):
    """Pick the best object to focus on for this iteration."""
    skip_objs = skip_objs or set()
    active = uncovered_pos - skip_objs
    pool = active if active else uncovered_pos
    return max(pool, key=lambda o: (len(ctx.get(o, [])), o))


# =============================================================================
# CLINGO PROGRAM
# =============================================================================

def create_program(aff, rule, pos_objs, neg_objs, ctx):
    prog = [rule, ""]

    for obj in pos_objs | neg_objs:
        for fact in ctx[obj]:
            prog.append(fact + ".")

    prog.append("")

    for obj in pos_objs:
        prog.append(f"covered_pos({obj}) :- hasAffordance({obj}, {aff}).")

    for obj in neg_objs:
        prog.append(f"covered_neg({obj}) :- hasAffordance({obj}, {aff}).")

    return "\n".join(prog)


# =============================================================================
# RULE EVALUATION
# =============================================================================

def evaluate_rule(rule, aff, data, uncovered_pos):
    prog = create_program(aff, rule, data["pos"], data["neg"], data["ctx"])
    tmp = Path("/tmp/test_rule_tool_usage.lp")

    with open(tmp, "w") as f:
        f.write(prog)

    result = subprocess.run(
        [sys.executable, "-m", "clingo", str(tmp), "0", "--out-ifs=\n"],
        capture_output=True,
        text=True
    )

    covered_pos = []
    covered_neg = []

    for line in result.stdout.split("\n"):
        m = re.match(r"covered_pos\((.*?)\)", line)
        if m:
            covered_pos.append(m.group(1))
        m = re.match(r"covered_neg\((.*?)\)", line)
        if m:
            covered_neg.append(m.group(1))

    new_covered = [x for x in covered_pos if x in uncovered_pos]
    return new_covered, covered_neg


# =============================================================================
# PROPERTY ANALYSIS
# =============================================================================

def analyze_properties(uncovered_pos, neg_objs, ctx):
    """Extract properties that distinguish positives from negatives."""
    pos_props = defaultdict(int)
    neg_props = defaultdict(int)

    for obj in uncovered_pos:
        for fact in ctx.get(obj, []):
            pos_props[fact] += 1

    for obj in neg_objs:
        for fact in ctx.get(obj, []):
            neg_props[fact] += 1

    discriminative = {
        prop: pos_props[prop] - neg_props.get(prop, 0)
        for prop in pos_props
        if pos_props[prop] > neg_props.get(prop, 0)
    }

    return sorted(discriminative.items(), key=lambda x: x[1], reverse=True)


# =============================================================================
# SIMILARITY HELPERS
# =============================================================================

def normalize_facts(facts, obj_name):
    """Replace the concrete object name with a generic placeholder."""
    normalized = set()
    for fact in facts:
        norm = (fact
                .replace(f"({obj_name})", "(_)")
                .replace(f"({obj_name},", "(_,")
                .replace(f", {obj_name})", ", _)"))
        normalized.add(norm)
    return normalized


def compute_similarity(obj_a, facts_a, obj_b, facts_b):
    """Jaccard similarity on normalized property sets."""
    props_a = normalize_facts(facts_a, obj_a)
    props_b = normalize_facts(facts_b, obj_b)
    if not props_a or not props_b:
        return 0.0
    intersection = len(props_a & props_b)
    union = len(props_a | props_b)
    return intersection / union if union > 0 else 0.0


# =============================================================================
# PROMPT
# =============================================================================

def format_prompt(aff, uncovered_pos, neg, ctx, rejected_set,
                  valid_qualities, valid_roles, valid_tasks,
                  focus_obj=None, feedback_rule=None, falsely_covered_negs=None):

    if focus_obj is None:
        focus_obj = pick_focus_object(uncovered_pos, ctx)

    focus_str = f"+ {focus_obj} ({', '.join(ctx.get(focus_obj, []))})"
    other_pos = uncovered_pos - {focus_obj}
    other_str = "\n".join([f"+ {o} ({', '.join(ctx[o])})" for o in other_pos])

    neg_str = "\n".join([f"- {o} ({', '.join(ctx[o])})" for o in list(neg)[:10]])

    qualities_list = ", ".join(sorted(valid_qualities))
    roles_list = ", ".join(sorted(valid_roles))
    tasks_list = ", ".join(sorted(valid_tasks))

    discriminative = analyze_properties(uncovered_pos, neg, ctx)
    discriminative_str = ""
    if discriminative:
        discriminative_str = "\nKey properties that distinguish POSITIVES from NEGATIVES:\n"
        for prop, score in discriminative[:5]:
            discriminative_str += f"  - {prop}\n"

    system = f"""You are an expert in Answer Set Programming (ASP).
Generate ONLY well-formed ASP rules.
PRIORITY: Cover the FOCUS OBJECT. It is acceptable to also cover other positives.
It is acceptable if false positives have the SAME properties as true positives
(they may just be mislabeled or assigned to different affordances).
Do not output explanations, markdown, or meta-commentary.
Output EXACTLY ONE rule per response.

CRITICAL INSTRUCTION - SPECIFIC RULES:
- Generate rules with AT LEAST 2 meaningful conditions (beyond obj(X)).
- Combine conditions from DIFFERENT categories (e.g., one hasPhysicalQuality AND one hasRole,
  or one hasRole AND one affordsTask). Rules using only ONE category are too broad.
- Prefer conjunctions of a role + a quality, or a role + a task, to narrow down precisely.
- Do NOT generate rules with only hasRole(X, ToolRole) — that matches everything.

CRITICAL SYNTAX RULES:
- Do NOT use semicolons (;) at the top level of the rule body.
  Disjunction at the top level creates invalid ASP. Use commas only.
- Example of INVALID rule: hasAffordance(X, aff) :- obj(X), hasRole(X, roleA) ; hasRole(X, roleB).
- Example of VALID rule:   hasAffordance(X, aff) :- obj(X), hasRole(X, roleA), affordsTask(X, taskB).

VALID ONTOLOGY VALUES — you MUST only use these exact strings, nothing else:
Physical Qualities: {qualities_list}
Roles:  {roles_list}
Tasks:  {tasks_list}
Using any value NOT in these lists will cause the rule to cover nothing and be rejected.
"""

    falses_list = falsely_covered_negs or []

    if feedback_rule and falses_list:
        user = f"""
Affordance: {aff}

You previously generated this rule:
{feedback_rule}

This rule covered NEGATIVE examples that are fundamentally different from the true positives:
{', '.join(falses_list)}

Refine the rule to be more specific so it avoids those negatives.

FOCUS OBJECT (your primary target — you MUST cover this):
{focus_str}

Other uncovered positives (bonus if covered, but not the priority):
{other_str}

Negatives to avoid (different properties):
{neg_str}

{discriminative_str}

Generate EXACTLY ONE candidate rule starting with:
hasAffordance(X, {aff}) :- obj(X),
"""
    else:
        user = f"""
Affordance: {aff}

FOCUS OBJECT — generate a rule that covers THIS object:
{focus_str}

Other uncovered positives (bonus if also covered, but not required):
{other_str}

Negatives (avoid if they have completely different properties):
{neg_str}

{discriminative_str}

Constraints:
- Use a variable 'X' (do NOT use concrete object names).
- Single line ending with a period.
- Use ONLY qualities, roles, and tasks from the valid ontology values listed above.
- Do NOT use semicolons (;) — commas only.
- Rule must start with:
hasAffordance(X, {aff}) :- obj(X),

Generate EXACTLY ONE candidate rule.
"""

    if rejected_set:
        user += "\nFORBIDDEN — do NOT generate any of these rules under any circumstances:\n"
        for r in sorted(rejected_set):
            user += r + "\n"

    return f"SYSTEM: {system}\nUSER: {user}\nASSISTANT:"


# =============================================================================
# RULE VALIDATION
# =============================================================================

def is_valid_rule(rule, uncovered_pos, ctx,
                  valid_qualities=None, valid_roles=None, valid_tasks=None):
    """Quick sanity checks before Clingo evaluation."""
    if not re.search(r":-\s*obj\(X\),\s+\S+", rule):
        return False

    if rule.count(",") < 1:
        return False

    if not rule.rstrip().endswith("."):
        return False

    body = rule.split(":-", 1)[1] if ":-" in rule else ""
    body_literals = [l.strip() for l in re.split(r',\s*(?![^()]*\))', body.rstrip('.'))]
    meaningful = [l for l in body_literals if l and not l.startswith("obj(")]
    if len(meaningful) < MIN_BODY_LITERALS:
        print('[validator] Not enough body literals in the generated rule')
        return False
    
    if rule.count(",") < 1:
        return False

    body = rule.split(":-", 1)[1] if ":-" in rule else ""
    depth = 0
    for ch in body:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        elif ch == ";" and depth == 0:
            return False
    

    if valid_qualities is not None:
        claimed = re.findall(r"hasPhysicalQuality\(X,\s*(\w+)\)", rule)
        for q in claimed:
            if q not in valid_qualities:
                print(f"  [validator] Unknown quality '{q}' — not in ontology. Rejecting.")
                return False

    if valid_roles is not None:
        claimed = re.findall(r"hasRole\(X,\s*(\w+)\)", rule)
        for r in claimed:
            if r not in valid_roles:
                print(f"  [validator] Unknown role '{r}' — not in ontology. Rejecting.")
                return False

    if valid_tasks is not None:
        claimed = re.findall(r"affordsTask\(X,\s*(\w+)\)", rule)
        for t in claimed:
            if t not in valid_tasks:
                print(f"  [validator] Unknown task '{t}' — not in ontology. Rejecting.")
                return False

    return True


# =============================================================================
# RULE EXTRACTION
# =============================================================================

def extract_rules(text):
    print("\n=== RAW LLM OUTPUT ===")
    print(text)
    print("======================\n")

    text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)

    rules = []
    pattern = r"has?Affordance\s*\([^)]*\)\s*:-.*?\."
    matches = re.findall(pattern, text, flags=re.DOTALL)

    for r in matches:
        r = re.sub(r"\s+", " ", r.strip())
        r = r.replace("hasaffordance", "hasAffordance")

        m = re.match(r"hasAffordance\((.*?),\s*(.*?)\)\s*:-\s*(.*)", r)
        if m:
            obj_name = m.group(1)
            if obj_name != "X" and not obj_name.isupper():
                r = re.sub(rf"\b{obj_name}\b", "X", r)

        rules.append(r)

    print("Extracted rules:")
    for r in rules:
        print(r)

    return rules


# =============================================================================
# LLM CALL
# =============================================================================

def call_llm(prompt, boost_temperature=False):
    temp = min(TEMPERATURE * 2.0, 1.4) if boost_temperature else TEMPERATURE

    if PROVIDER == "mistral":
        return _call_mistral(prompt, temp)
    else:
        return _call_mlx(prompt, temp)
    

def _call_mlx(prompt, temp):
    global _model, _tokenizer
    if _model is None:
        load_model()

    
    sampler = make_sampler(temp=temp, top_p=TOP_P)

    response = generate(
        model=_model,
        tokenizer=_tokenizer,
        prompt=prompt,
        max_tokens=MAX_TOKENS,
        sampler=sampler,
        verbose=False
    )

    return response.strip()

def _call_mistral(prompt, temperature, max_retries=10):
    client = _get_mistral_client()

    system_msg = ""
    user_msg = prompt
    if "SYSTEM:" in prompt and "USER:" in prompt:
        parts = prompt.split("USER:", 1)
        system_msg = parts[0].replace("SYSTEM", "").strip()
        user_msg = parts[1].replace("USER:", "").strip()
    
    messages = []
    if system_msg:
        messages.append({"role": "system", "content": system_msg})
    messages.append({"role": "user", "content": user_msg})

    for attempt in range(max_retries):
        try:
            response = client.chat.complete(
                model=MODEL_NAME,
                messages=messages,
                temperature=temperature,
                max_tokens=MAX_TOKENS
            )
            return response.choices[0].message.content.strip()
        except Exception as e:
            err = str(e).lower()
            if "rate" in err or "429" in err or "too many" in err:
                wait = 10 * (attempt + 1)
                print(f" Rate limited — waiting {wait}s (attempt {attempt+1}/{max_retries})...")
                time.sleep(wait)
            else:
                print(f"  [Mistral API error] {e}")
                if attempt < max_retries - 1:
                    time.sleep(5)
                else:
                    raise
# =============================================================================
# RULE PRUNING (MINIMALIZATION)
# =============================================================================

def prune_rule(rule: str, aff: str, data: dict, uncovered: set) -> tuple[str, list, list]:
    """
    Attempt to drop optional conditions from the rule body while maintaining
    coverage of the focus positives and avoiding negative coverage.
    This guarantees mathematically minimal rules and prevents LLM over-fitting.
    """
    if ":-" not in rule:
        return rule, [], []
        
    head, body_str = rule.split(":-", 1)
    body_str = body_str.strip()
    if body_str.endswith("."):
        body_str = body_str[:-1]
    import re
    
    # Split by comma ONLY when not inside parentheses
    literals = [l.strip() for l in re.split(r',\s*(?![^()]*\))', body_str)]
    
    essential = []
    optional = []
    for lit in literals:
        if lit.startswith("obj("):
            essential.append(lit)
        else:
            optional.append(lit)
    
    if len(optional) <= MIN_BODY_LITERALS:
        print(f"  [pruner] Already at minimum ({len(optional)} conditions). Skipping.")
        covered_pos, covered_neg = evaluate_rule(rule, aff, data, uncovered)
        return rule, covered_pos, covered_neg
    
    best_rule = rule
    best_covered_pos, best_covered_neg = evaluate_rule(rule, aff, data, uncovered)
    
    if not best_covered_pos or best_covered_neg:
        return best_rule, best_covered_pos, best_covered_neg
        
    current_optional = optional.copy()
    changed = True
    
    while changed and len(current_optional) > MIN_BODY_LITERALS:
        changed = False
        for lit in current_optional:
            test_optional = [l for l in current_optional if l != lit]
            if len(test_optional) < MIN_BODY_LITERALS:
                continue
            test_body = ", ".join(essential + test_optional)
            test_rule = f"{head.strip()} :- {test_body}."
            
            test_pos, test_neg = evaluate_rule(test_rule, aff, data, uncovered)
            
            if not test_neg and set(test_pos) == set(best_covered_pos):
                best_rule = test_rule
                best_covered_pos = test_pos
                best_covered_neg = test_neg
                current_optional = test_optional
                changed = True
                print(f"  [pruner] Successfully dropped condition: {lit}")
                break
                
    return best_rule, best_covered_pos, best_covered_neg


# =============================================================================
# MAIN LEARNING LOOP
# =============================================================================

def learn_rules_for_affordance(aff, data, valid_qualities, valid_roles, valid_tasks):

    uncovered = set(data["pos"])

    sparse = detect_sparse_objects(uncovered, data["ctx"])
    if sparse:
        print(f"[WARNING] Skipping sparse objects with no properties (cannot be covered): {sparse}")
        uncovered -= sparse

    if not uncovered:
        print(f"No coverable positives for {aff} after removing sparse objects.")
        return []

    rules = []
    rejected_set = set()
    iteration = 1
    max_retries = 10
    retries = 0

    MAX_FOCUS_FAILS = 3
    focus_fail_count = defaultdict(int)
    skipped_objs = set()

    feedback_rule = None
    falsely_covered_negs = None
    last_focus_obj = None

    while uncovered:
        print(f"\nIteration {iteration}")
        print(f"Uncovered positives ({len(uncovered)}):", uncovered)

        focus_obj = pick_focus_object(uncovered, data["ctx"], skipped_objs)
        print(f"Focus object: {focus_obj}")

        if focus_obj != last_focus_obj:
            feedback_rule = None
            falsely_covered_negs = None
        last_focus_obj = focus_obj

        prompt = format_prompt(
            aff, uncovered, data["neg"], data["ctx"], rejected_set,
            valid_qualities, valid_roles, valid_tasks,
            focus_obj=focus_obj,
            feedback_rule=feedback_rule,
            falsely_covered_negs=falsely_covered_negs
        )
        raw = call_llm(prompt, boost_temperature=(focus_fail_count[focus_obj] > 1))

        candidates = extract_rules(raw)
        candidates = [r for r in candidates if r not in rejected_set]

        if not candidates:
            print("No new rules generated")
            focus_fail_count[focus_obj] += 1
            retries += 1

            if feedback_rule and focus_fail_count[focus_obj] >= MAX_FOCUS_FAILS:
                print(">>> STUCK REFINEMENT LOOP: Clearing feedback. <<<")
                feedback_rule = None
                falsely_covered_negs = None

            if focus_fail_count[focus_obj] >= MAX_FOCUS_FAILS:
                print(f">>> Focus object '{focus_obj}' failed {MAX_FOCUS_FAILS} times. Benching it. <<<")
                skipped_objs.add(focus_obj)
                active_remaining = uncovered - skipped_objs
                if active_remaining:
                    retries = 0

            if skipped_objs >= uncovered:
                print(f"All remaining uncovered objects have been benched for {aff}. "
                      f"Giving up on: {uncovered}")
                break

            if retries >= max_retries:
                print(f"Max retries reached for {aff}. Keeping accepted rules and moving on.")
                break

            iteration += 1
            continue

        accepted_any = False

        for rule in candidates:
            if not uncovered:
                break

            if not is_valid_rule(rule, uncovered, data["ctx"],
                                valid_qualities, valid_roles, valid_tasks):
                print(f"Rule failed pre-validation: {rule}")
                rejected_set.add(rule)
                continue

            covered_pos, covered_neg = evaluate_rule(rule, aff, data, uncovered)

            print("Candidate rule:")
            print(rule)
            print("covers positives:", covered_pos)
            print("covers negatives:", covered_neg)

            rejected_set.add(rule)

            if not covered_pos:
                print("Rule covers ZERO positives. Discarding.")
                focus_fail_count[focus_obj] += 1
                continue

            if covered_neg:
                all_false_pos_compatible = True
                incompatible_negs = []
                SIMILARITY_THRESHOLD = 0.85

                for neg_obj in covered_neg:
                    neg_facts = data["ctx"].get(neg_obj, [])
                    if not neg_facts:
                        all_false_pos_compatible = False
                        incompatible_negs.append(neg_obj)
                        continue

                    best_overlap = max(
                        compute_similarity(
                            pos_obj, data["ctx"].get(pos_obj, []),
                            neg_obj, neg_facts
                        )
                        for pos_obj in covered_pos
                    )

                    if best_overlap >= SIMILARITY_THRESHOLD:
                        print(f"  False pos '{neg_obj}' is highly similar "
                              f"(score: {best_overlap:.2f}) to a true positive - ACCEPTING")
                    else:
                        all_false_pos_compatible = False
                        incompatible_negs.append(neg_obj)

                if not all_false_pos_compatible:
                    print(f"Rule rejected. Covers incompatible negatives: {incompatible_negs}")
                    feedback_rule = rule
                    falsely_covered_negs = incompatible_negs
                    focus_fail_count[focus_obj] += 1
                    continue
                else:
                    print("Rule covers negatives, but all are highly similar to covered positives. "
                          "Accepting rule anyway.")

            # --- ALGORITHMIC RULE PRUNING ---
            pruned_rule, pruned_pos, pruned_neg = prune_rule(rule, aff, data, uncovered)
            if pruned_rule != rule:
                print(f"  [pruner] Pruned rule from {len(rule.split(','))} to {len(pruned_rule.split(','))} conditions.")
                print(f"  [pruner] Optimized rule: {pruned_rule}")
                rule = pruned_rule
                covered_pos = pruned_pos
                covered_neg = pruned_neg
            # --------------------------------

            print("Accepted rule:")
            print(rule)
            feedback_rule = None
            falsely_covered_negs = None

            rules.append(rule)
            accepted_any = True
            rejected_set.discard(rule)

            newly_covered = [obj for obj in covered_pos if obj in uncovered]
            for obj in newly_covered:
                uncovered.remove(obj)
                if obj in skipped_objs:
                    skipped_objs.discard(obj)
                    print(f"  (un-benched '{obj}' — covered by this rule)")

        if accepted_any:
            retries = 0
            focus_fail_count[focus_obj] = 0
        else:
            retries += 1
            if not feedback_rule:
                print("No acceptable rule found in this iteration.")

            if skipped_objs >= uncovered:
                print(f"All remaining uncovered objects have been benched for {aff}. "
                      f"Giving up on: {uncovered}")
                break

            if retries >= max_retries:
                print(f"Max retries reached for {aff}. Keeping accepted rules and moving on.")
                break

        iteration += 1

    if not uncovered:
        print(f"\nSUCCESS: All coverable positives for {aff} have been covered!")
    elif sparse:
        print(f"\nPartial success: covered all discriminable positives. "
              f"Skipped sparse (no-property) objects: {sparse}")

    return rules


# =============================================================================
# MAIN
# =============================================================================

def main():
    load_model()

    valid_qualities, valid_roles, valid_tasks = parse_valid_constants(INPUT_EXAMPLES_FILE)
    print(f"Loaded {len(valid_qualities)} valid qualities, "
          f"{len(valid_roles)} valid roles, {len(valid_tasks)} valid tasks from ontology.")

    examples = parse_ilasp_file(INPUT_EXAMPLES_FILE)
    all_rules = {}

    completed_affordances = set()
    if OUTPUT_RULES_FILE.exists():
        with open(OUTPUT_RULES_FILE, "r") as f:
            content_out = f.read()
            matches = re.findall(r"% --- (.*?) ---", content_out)
            completed_affordances.update(matches)
        print(f"Found {len(completed_affordances)} already completed affordances: "
              f"{', '.join(completed_affordances)}")
    else:
        with open(OUTPUT_RULES_FILE, "w") as f:
            f.write("% === PROGRESSIVE LLM RULE INDUCTION OUTPUT (TOOL USAGE) ===\n\n")

    for aff, data in examples.items():
        if not data["pos"]:
            continue

        if aff in completed_affordances:
            print(f"\nSkipping {aff} - already present in output file.")
            continue

        print("\n===========================")
        print("Learning rules for", aff)
        print("===========================")

        rules = learn_rules_for_affordance(aff, data,
                                           valid_qualities, valid_roles, valid_tasks)
        all_rules[aff] = rules

        with open(OUTPUT_RULES_FILE, "a") as f:
            f.write(f"% --- {aff} ---\n")
            for r in rules:
                f.write(r + "\n")
            f.write("\n")

        print(f"--> Saved rule set for {aff} to {OUTPUT_RULES_FILE}")

    print("\n=== FINAL RULE SET ===")
    print("All affordances completed and saved to", OUTPUT_RULES_FILE)


if __name__ == "__main__":
    main()
