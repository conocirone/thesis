"""
llm_rule_induction_multirule.py
================================
LLM + Clingo Rule Induction with MULTI-RULE learning (ILP style).

Key improvements over the original version:

1. Learn a SET of rules instead of forcing a single rule.
2. Separate-and-conquer ILP strategy.
3. Each rule must cover SOME uncovered positives and ZERO negatives.
4. Coverage-based scoring instead of pos_miss+neg_wrong.
5. Hard duplicate filtering.
6. Multiple candidate rules per iteration.
7. Stronger exploration parameters.

Fixes applied (v2):
- Permanent rejected_set replaces sliding-window tried_rules for prompt context,
  preventing the LLM from regenerating previously forbidden rules.
- retries counter is no longer reset when feedback_rule is set, so max_retries
  actually fires correctly in refinement loops.
- Top-level semicolon (disjunction) in rule body is now rejected in is_valid_rule,
  fixing the zero-coverage issue for library/music_room style rules.
- Temperature is ramped up progressively when the loop is stuck.
- Stuck-loop detection is unified: tracks consecutive iterations with no accepted rule.

Fixes applied (v3):
- normalize_facts() strips object-specific names from ctx facts before comparison,
  so that hasRole(pail, storageContainerRole) and hasRole(jar, storageContainerRole)
  are correctly seen as identical. Without this, Jaccard similarity was always ~0
  because raw fact strings never matched across different objects, making the
  similarity-based acceptance logic completely ineffective (threshold of 0.6 was
  unreachable).
- compute_similarity() replaces the inline Jaccard block, using normalized facts.

Fixes applied (v4):
- parse_valid_constants() reads #constant(role,...) and #constant(task,...) directly
  from the ILASP file header. These are injected into every prompt and used to
  validate rules, preventing the LLM from hallucinating predicates like medicineRole
  that don't exist in the ontology and can never cover any object.
- is_valid_rule() now rejects rules containing unknown roles or tasks.
- detect_sparse_objects() identifies objects with no role/task facts at all (e.g.
  aspirin, which has only obj(aspirin).). These are inherently uncoverable by any
  discriminative rule. They are skipped early with a warning instead of burning
  all retries.
- pick_focus_object() selects a single object to focus on per iteration when the
  uncovered set is heterogeneous. This prevents the LLM from over-constraining by
  AND-ing all remaining objects' properties together (which always covers zero).
- format_prompt() now shows the focus object prominently and lists valid roles/tasks.

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
from shared.config import get_model
from shared.inference import generate as llm_generate

MODEL_NAME = get_model("rule_induction")

MAX_TOKENS = int(os.environ.get("LLM_MAX_TOKENS", "2048"))
TEMPERATURE = float(os.environ.get("LLM_TEMPERATURE", "0.7"))
TOP_P = float(os.environ.get("LLM_TOP_P", "0.85"))

NUM_RULE_CANDIDATES = int(os.environ.get("NUM_RULE_CANDIDATES", "3"))
MIN_POS_COVERAGE = int(os.environ.get("MIN_POS_COVERAGE", "1"))
RULES_DIR = MODULE_DIR / "rules"

INPUT_EXAMPLES_FILE = RULES_DIR / "tidy_up" / "ilasp_tidy_up.las"
OUTPUT_RULES_FILE = RULES_DIR / "tidy_up" / "learned_rules_llm_total.txt"


# =============================================================================
# DATA PARSER
# =============================================================================

def parse_ilasp_file(filename):
    """Parse ILASP format examples."""
    examples_by_loc = defaultdict(lambda: {"pos": set(), "neg": set(), "ctx": {}})

    with open(filename, "r") as f:
        content = f.read()

    pattern = re.compile(r'#pos\((e\d+)@\d+,\s*\{(.*?)\},\s*\{(.*?)\},\s*\{(.*?)\}\)\.', re.DOTALL)

    for match in pattern.finditer(content):
        pos_atoms_str = match.group(2).strip()
        neg_atoms_str = match.group(3).strip()
        ctx_str = match.group(4).strip()

        target = pos_atoms_str if pos_atoms_str else neg_atoms_str
        atom_match = re.search(r'goesIn\((.*?),\s*(.*?)\)', target)
        if not atom_match:
            continue

        obj_id, loc = atom_match.group(1), atom_match.group(2)

        # Split individual facts out of the context block. Facts are separated
        # by '.' in the ILASP file and may all appear on a single line, e.g.:
        #   obj(pail). hasRole(pail, storageContainerRole). affordsTask(pail, storageTask).
        # Splitting by '\n' produces one element for the whole line, which breaks
        # any downstream code that checks startswith("hasRole(") per element.
        # Instead, split on '.' and strip whitespace, discarding empty fragments.
        raw_facts = ctx_str.replace('\n', ' ')
        ctx_facts = [f.strip() for f in raw_facts.split('.') if f.strip()]
        examples_by_loc[loc]["ctx"][obj_id] = ctx_facts

        if pos_atoms_str:
            examples_by_loc[loc]["pos"].add(obj_id)
        if neg_atoms_str:
            examples_by_loc[loc]["neg"].add(obj_id)

    return examples_by_loc


# =============================================================================
# VALID CONSTANT PARSER
# =============================================================================

def parse_valid_constants(filename):
    """Parse valid role and task constants directly from the ILASP file header.

    The file declares these authoritatively as:
        #constant(role, applianceRole).
        #constant(task, cleaningTask).

    Parsing from the file (rather than hardcoding) ensures the valid set
    is always in sync with the actual ontology, and prevents the LLM from
    hallucinating predicates like 'medicineRole' that don't exist and can
    never cover any object.
    """
    valid_roles = set()
    valid_tasks = set()

    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            m = re.match(r"#constant\(role,\s*(\w+)\)\.", line)
            if m:
                valid_roles.add(m.group(1))
            m = re.match(r"#constant\(task,\s*(\w+)\)\.", line)
            if m:
                valid_tasks.add(m.group(1))

    return valid_roles, valid_tasks


# =============================================================================
# SPARSE OBJECT DETECTION
# =============================================================================

def detect_sparse_objects(uncovered_pos, ctx):
    """Identify objects that have no role or task facts at all.

    These objects (e.g. 'aspirin', which has only 'obj(aspirin).') are
    inherently uncoverable by any discriminative rule. Any rule that could
    match them would be overly generic (just obj(X)) and rightly rejected.
    Detecting them early avoids burning all retries on an impossible task.

    Returns a set of object names that should be skipped.
    """
    sparse = set()
    for obj in uncovered_pos:
        facts = ctx.get(obj, [])
        has_role_or_task = any(
            f.startswith("hasRole(") or f.startswith("affordsTask(")
            for f in facts
        )
        if not has_role_or_task:
            sparse.add(obj)
    return sparse


# =============================================================================
# FOCUS OBJECT SELECTOR
# =============================================================================

def pick_focus_object(uncovered_pos, ctx, skip_objs=None):
    """Pick the single best object to focus on for this iteration.

    When uncovered positives are heterogeneous (different roles/tasks),
    the LLM tends to over-constrain by AND-ing all their properties together,
    producing a rule that covers zero positives. Focusing on one object at a
    time forces the LLM to generate a rule that actually fires.

    skip_objs: set of objects that have already failed too many times and
               should be deprioritised. They are tried last, not skipped
               entirely, so they still get covered if a later rule happens
               to fire on them.

    Strategy: prefer objects with more facts (better described = easier to
    write a specific rule for), falling back to alphabetical order for ties.
    Objects in skip_objs are moved to the back of the queue.
    """
    skip_objs = skip_objs or set()
    active    = uncovered_pos - skip_objs
    pool      = active if active else uncovered_pos  # fallback: try skipped objs
    return max(pool, key=lambda o: (len(ctx.get(o, [])), o))


# =============================================================================
# CLINGO PROGRAM
# =============================================================================

def create_program(loc, rule, pos_objs, neg_objs, ctx):

    prog = [rule, ""]

    # ctx facts were split by '.' during parsing, so the trailing period was
    # stripped. Re-add it here — without it Clingo sees syntax errors and
    # derives nothing, causing every rule to cover zero positives.
    for obj in pos_objs | neg_objs:
        for fact in ctx[obj]:
            prog.append(fact + ".")

    prog.append("")

    for obj in pos_objs:
        prog.append(f"covered_pos({obj}) :- goesIn({obj}, {loc}).")

    for obj in neg_objs:
        prog.append(f"covered_neg({obj}) :- goesIn({obj}, {loc}).")

    return "\n".join(prog)


# =============================================================================
# RULE EVALUATION
# =============================================================================

def evaluate_rule(rule, loc, data, uncovered_pos):

    prog = create_program(loc, rule, data["pos"], data["neg"], data["ctx"])

    tmp = Path("/tmp/test_rule.lp")

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

    # only count uncovered positives
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

    # Properties common in positives but rare in negatives
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
    """Replace the concrete object name inside fact strings with a generic
    placeholder before comparison.

    Without this, hasRole(pail, storageContainerRole) and
    hasRole(jar, storageContainerRole) look completely different as raw strings,
    making Jaccard similarity always ~0 across different objects.

    After normalization both become hasRole(_, storageContainerRole) and
    the intersection fires correctly.
    """
    normalized = set()
    for fact in facts:
        # Handle the three positions a name can appear in ASP facts:
        #   predicate(obj_name)          -> predicate(_)
        #   predicate(obj_name, value)   -> predicate(_, value)
        #   predicate(value, obj_name)   -> predicate(value, _)
        norm = (fact
                .replace(f"({obj_name})", "(_)")
                .replace(f"({obj_name},", "(_,")
                .replace(f", {obj_name})", ", _)"))
        normalized.add(norm)
    return normalized


def compute_similarity(obj_a, facts_a, obj_b, facts_b):
    """Jaccard similarity on normalized (object-name-agnostic) property sets.

    Returns a float in [0, 1]. Two objects with identical roles and tasks but
    different names will score 1.0; completely unrelated objects will score 0.0.
    """
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

def format_prompt(loc, uncovered_pos, neg, ctx, rejected_set,
                  valid_roles, valid_tasks,
                  focus_obj=None, feedback_rule=None, falsely_covered_negs=None):

    # Focus object is the single object the LLM must cover this iteration.
    # Other uncovered positives are shown as context but not the primary goal.
    if focus_obj is None:
        focus_obj = pick_focus_object(uncovered_pos, ctx)

    focus_str  = f"+ {focus_obj} ({', '.join(ctx.get(focus_obj, []))})"
    other_pos  = uncovered_pos - {focus_obj}
    other_str  = "\n".join([f"+ {o} ({', '.join(ctx[o])})" for o in other_pos])

    neg_str = "\n".join([f"- {o} ({', '.join(ctx[o])})" for o in list(neg)[:10]])

    # Valid ontology values — injected so the LLM cannot hallucinate predicates
    roles_list = ", ".join(sorted(valid_roles))
    tasks_list = ", ".join(sorted(valid_tasks))

    # Extract discriminative properties
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
(they may just be mislabeled or assigned to different locations).
Do not output explanations, markdown, or meta-commentary.
Output EXACTLY ONE rule per response.

CRITICAL SYNTAX RULES:
- Do NOT use semicolons (;) at the top level of the rule body.
  Disjunction at the top level creates invalid ASP. Use commas only.
- Example of INVALID rule: goesIn(X, loc) :- obj(X), hasRole(X, roleA) ; hasRole(X, roleB).
- Example of VALID rule:   goesIn(X, loc) :- obj(X), hasRole(X, roleA), affordsTask(X, taskB).

VALID ONTOLOGY VALUES — you MUST only use these exact strings, nothing else:
Roles:  {roles_list}
Tasks:  {tasks_list}
Using any role or task NOT in these lists will cause the rule to cover nothing and be rejected.
"""

    falses_list = falsely_covered_negs or []

    if feedback_rule and falses_list:
        user = f"""
Location: {loc}

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
goesIn(X, {loc}) :- obj(X),
"""
    else:
        user = f"""
Location: {loc}

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
- Use ONLY roles and tasks from the valid ontology values listed above.
- Do NOT use semicolons (;) — commas only.
- Rule must start with:
goesIn(X, {loc}) :- obj(X),

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

def is_valid_rule(rule, uncovered_pos, ctx, valid_roles=None, valid_tasks=None):
    """Quick sanity checks before Clingo evaluation."""
    # Rule must have at least one body condition beyond obj(X)
    if not re.search(r":-\s*obj\(X\),\s+\S+", rule):
        return False

    # Avoid overly generic rules with too few conditions
    if rule.count(",") < 2:
        return False

    # Rule must end with period
    if not rule.rstrip().endswith("."):
        return False

    # Reject top-level semicolons in the rule body.
    body = rule.split(":-", 1)[1] if ":-" in rule else ""
    depth = 0
    for ch in body:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        elif ch == ";" and depth == 0:
            return False  # top-level disjunction — reject

    # Reject rules that reference hallucinated roles or tasks not in the ontology.
    # e.g. 'medicineRole' is invented by the LLM and can never match any object,
    # so any rule using it will always cover zero positives.
    if valid_roles is not None:
        claimed_roles = re.findall(r"hasRole\(X,\s*(\w+)\)", rule)
        for r in claimed_roles:
            if r not in valid_roles:
                print(f"  [validator] Unknown role '{r}' — not in ontology. Rejecting.")
                return False

    if valid_tasks is not None:
        claimed_tasks = re.findall(r"affordsTask\(X,\s*(\w+)\)", rule)
        for t in claimed_tasks:
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

    # remove markdown
    text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)

    rules = []

    # capture ASP rules across multiple lines
    pattern = r"goe?s?s?In\s*\([^)]*\)\s*:-.*?\."

    matches = re.findall(pattern, text, flags=re.DOTALL)

    for r in matches:

        r = re.sub(r"\s+", " ", r.strip())

        # normalize typo
        r = r.replace("goessIn", "goesIn")

        # ensure it uses variable X instead of specific object names
        m = re.match(r"goesIn\((.*?),\s*(.*?)\)\s*:-\s*(.*)", r)
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
    """Call the LLM. When boost_temperature=True, ramp up temperature to
    escape stuck loops and encourage more diverse rule proposals."""
    temp = min(TEMPERATURE * 2.0, 1.4) if boost_temperature else TEMPERATURE

    return llm_generate(
        prompt=prompt,
        role="rule_induction",
        max_tokens=MAX_TOKENS,
        temperature=temp,
        top_p=TOP_P,
    )


# =============================================================================
# MAIN LEARNING LOOP
# =============================================================================

def learn_rules_for_location(loc, data, valid_roles, valid_tasks):

    uncovered = set(data["pos"])

    # Detect and skip objects with no role/task facts — they are inherently
    # uncoverable by any discriminative rule (e.g. aspirin has only obj(aspirin).)
    sparse = detect_sparse_objects(uncovered, data["ctx"])
    if sparse:
        print(f"[WARNING] Skipping sparse objects with no properties (cannot be covered): {sparse}")
        uncovered -= sparse

    if not uncovered:
        print(f"No coverable positives for {loc} after removing sparse objects.")
        return []

    rules        = []
    rejected_set = set()
    iteration    = 1
    max_retries  = 5   # global retries before giving up on the whole location
    retries      = 0

    # Per-object failure tracking.
    # If the LLM fails MAX_FOCUS_FAILS times in a row on the same focus object,
    # it gets added to skipped_objs and the selector moves on to the next one.
    # Skipped objects are re-queued last — they may still get covered by a rule
    # generated for a different object with similar properties.
    MAX_FOCUS_FAILS  = 3
    focus_fail_count = defaultdict(int)
    skipped_objs     = set()

    feedback_rule       = None
    falsely_covered_negs = None
    last_focus_obj      = None

    while uncovered:

        print(f"\nIteration {iteration}")
        print(f"Uncovered positives ({len(uncovered)}):", uncovered)

        focus_obj = pick_focus_object(uncovered, data["ctx"], skipped_objs)
        print(f"Focus object: {focus_obj}")

        # Detect a change of focus — reset feedback when we switch objects so
        # the LLM doesn't get stale refinement context for a different object.
        if focus_obj != last_focus_obj:
            feedback_rule        = None
            falsely_covered_negs = None
        last_focus_obj = focus_obj

        prompt = format_prompt(
            loc, uncovered, data["neg"], data["ctx"], rejected_set,
            valid_roles, valid_tasks,
            focus_obj=focus_obj,
            feedback_rule=feedback_rule,
            falsely_covered_negs=falsely_covered_negs
        )
        raw = call_llm(prompt, boost_temperature=(focus_fail_count[focus_obj] > 1))

        candidates = extract_rules(raw)
        candidates = [r for r in candidates if r not in rejected_set]

        if not candidates:
            print("No new rules generated (LLM repeated a previously rejected rule or rule too complex)")
            focus_fail_count[focus_obj] += 1
            retries += 1

            if feedback_rule and focus_fail_count[focus_obj] >= MAX_FOCUS_FAILS:
                print(">>> STUCK REFINEMENT LOOP: Clearing feedback to force a new direction. <<<")
                feedback_rule        = None
                falsely_covered_negs = None

            # Bench this focus object if it has failed too many times.
            if focus_fail_count[focus_obj] >= MAX_FOCUS_FAILS:
                print(f">>> Focus object '{focus_obj}' failed {MAX_FOCUS_FAILS} times. "
                      f"Benching it — trying other uncovered objects. <<<")
                skipped_objs.add(focus_obj)

                # Only reset global retries if there are still un-benched objects
                # to try. If everything is benched, retries must keep counting so
                # max_retries can fire and break the loop.
                active_remaining = uncovered - skipped_objs
                if active_remaining:
                    retries = 0

            # Hard stop in the no-candidates path: if every uncovered object
            # has been benched we will never make progress — exit immediately.
            # This check must be here (not only at the bottom) because the
            # `continue` below skips the bottom termination check entirely.
            if skipped_objs >= uncovered:
                print(f"All remaining uncovered objects have been benched for {loc}. "
                      f"Giving up on: {uncovered}")
                break

            if retries >= max_retries:
                print(f"Max retries reached for {loc}. Keeping accepted rules and moving on.")
                break

            iteration += 1
            continue

        accepted_any = False

        for rule in candidates:
            if not uncovered:
                break

            if not is_valid_rule(rule, uncovered, data["ctx"], valid_roles, valid_tasks):
                print(f"Rule failed pre-validation: {rule}")
                rejected_set.add(rule)
                continue

            covered_pos, covered_neg = evaluate_rule(rule, loc, data, uncovered)

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
                SIMILARITY_THRESHOLD = 0.6

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

                if all_false_pos_compatible:
                    print(">>> ACCEPTING rule: All false positives are functionally identical to true positives.")
                    feedback_rule        = None
                    falsely_covered_negs = None
                else:
                    print(f"Rule rejected: These negatives are fundamentally different "
                          f"from positives: {incompatible_negs}")
                    feedback_rule        = rule
                    falsely_covered_negs = incompatible_negs
                    focus_fail_count[focus_obj] += 1
                    continue

            print("Accepted rule:")
            print(rule)
            feedback_rule        = None
            falsely_covered_negs = None

            rules.append(rule)
            accepted_any = True
            rejected_set.discard(rule)

            # Un-bench any skipped objects that this rule just covered.
            newly_covered = [obj for obj in covered_pos if obj in uncovered]
            for obj in newly_covered:
                uncovered.remove(obj)
                if obj in skipped_objs:
                    skipped_objs.discard(obj)
                    print(f"  (un-benched '{obj}' — covered by this rule)")

        if accepted_any:
            # Real progress: reset global retries and the focus object's fail count.
            retries = 0
            focus_fail_count[focus_obj] = 0
        else:
            retries += 1
            if not feedback_rule:
                print("No acceptable rule found in this iteration.")

            # Hard stop: every uncovered object has been benched and we still
            # can't make progress — nothing left to try.
            if skipped_objs >= uncovered:
                print(f"All remaining uncovered objects have been benched for {loc}. "
                      f"Giving up on: {uncovered}")
                break

            if retries >= max_retries:
                print(f"Max retries reached for {loc}. Keeping accepted rules and moving on.")
                break

        iteration += 1

    if not uncovered:
        print(f"\nSUCCESS: All coverable positives for {loc} have been covered!")
    elif sparse:
        print(f"\nPartial success: covered all discriminable positives. "
              f"Skipped sparse (no-property) objects: {sparse}")

    return rules



# =============================================================================
# MAIN
# =============================================================================

def main():

    print(f"[config] Rule induction model: {MODEL_NAME}")

    # Parse valid role/task constants directly from the ILASP file header.
    # Injected into every prompt and used to validate rules, preventing the LLM
    # from hallucinating predicates like medicineRole that don't exist in the ontology.
    valid_roles, valid_tasks = parse_valid_constants(INPUT_EXAMPLES_FILE)
    print(f"Loaded {len(valid_roles)} valid roles and {len(valid_tasks)} valid tasks from ontology.")

    examples = parse_ilasp_file(INPUT_EXAMPLES_FILE)
    all_rules = {}

    completed_locations = set()
    if OUTPUT_RULES_FILE.exists():
        with open(OUTPUT_RULES_FILE, "r") as f:
            content_out = f.read()
            matches = re.findall(r"% --- (.*?) ---", content_out)
            completed_locations.update(matches)
        print(f"Found {len(completed_locations)} already completed locations: {', '.join(completed_locations)}")
    else:
        with open(OUTPUT_RULES_FILE, "w") as f:
            f.write("% === PROGRESSIVE LLM RULE INDUCTION OUTPUT ===\n\n")

    for loc, data in examples.items():

        if not data["pos"]:
            continue

        if loc in completed_locations:
            print(f"\nSkipping {loc} - already present in output file.")
            continue

        print("\n===========================")
        print("Learning rules for", loc)
        print("===========================")

        rules = learn_rules_for_location(loc, data, valid_roles, valid_tasks)

        all_rules[loc] = rules

        with open(OUTPUT_RULES_FILE, "a") as f:
            f.write(f"% --- {loc} ---\n")
            for r in rules:
                f.write(r + "\n")
            f.write("\n")

        print(f"--> Saved rule set for {loc} to {OUTPUT_RULES_FILE}")

    print("\n=== FINAL RULE SET ===")
    print("All locations completed and saved to", OUTPUT_RULES_FILE)


if __name__ == "__main__":
    main()
