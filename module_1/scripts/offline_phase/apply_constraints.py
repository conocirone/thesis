"""
apply_constraints.py
====================
Runs Clingo with background_knowledge.las + integrity_constraints.lp,
parses the output, and writes a cleaned background_knowledge_validated.las
in the original Prolog format.

Usage:
    python apply_constraints.py
"""
import subprocess
import re
from pathlib import Path
from collections import defaultdict

SCRIPT_DIR = Path(__file__).parent
MODULE_DIR = SCRIPT_DIR.parent.parent
RULES_DIR = MODULE_DIR / "rules"
BK_FILE = RULES_DIR / "background_knowledge.las"
IC_FILE = RULES_DIR / "integrity_constraints.lp"
OUT_FILE = RULES_DIR / "background_knowledge_validated.las"

def run_clingo():
    """Run clingo and return the answer set as a string."""
    result = subprocess.run(
        ["clingo", str(BK_FILE), str(IC_FILE), "0", "--out-ifs=\n"],
        capture_output=True, text=True
    )
    # Clingo exit code 10 = SATISFIABLE (with at least one model)
    # exit code 30 = SATISFIABLE (all models enumerated)
    if result.returncode not in (10, 30):
        print("Clingo stderr:", result.stderr)
        raise RuntimeError(f"Clingo failed with exit code {result.returncode}")
    return result.stdout


def parse_clingo_output(output: str):
    """Parse clingo output into structured data."""
    objects = defaultdict(lambda: {"qualities": [], "roles": [], "tasks": []})
    removed = {"qualities": [], "roles": [], "tasks": []}

    for line in output.split("\n"):
        line = line.strip()

        # valid_quality(obj, val)
        m = re.match(r'valid_quality\((\w+),\s*(\w+)\)', line)
        if m:
            objects[m.group(1)]["qualities"].append(m.group(2))
            continue

        # valid_role(obj, val)
        m = re.match(r'valid_role\((\w+),\s*(\w+)\)', line)
        if m:
            objects[m.group(1)]["roles"].append(m.group(2))
            continue

        # valid_task(obj, val)
        m = re.match(r'valid_task\((\w+),\s*(\w+)\)', line)
        if m:
            objects[m.group(1)]["tasks"].append(m.group(2))
            continue

        # removed_quality/role/task
        m = re.match(r'removed_quality\((\w+),\s*(\w+)\)', line)
        if m:
            removed["qualities"].append((m.group(1), m.group(2)))
            continue
        m = re.match(r'removed_role\((\w+),\s*(\w+)\)', line)
        if m:
            removed["roles"].append((m.group(1), m.group(2)))
            continue
        m = re.match(r'removed_task\((\w+),\s*(\w+)\)', line)
        if m:
            removed["tasks"].append((m.group(1), m.group(2)))

    return objects, removed


def write_prolog(objects: dict, removed: dict):
    """Write validated facts in original Prolog format."""
    with open(OUT_FILE, "w", encoding="utf-8") as f:
        f.write("% ==========================================\n")
        f.write("% BACKGROUND KNOWLEDGE FORMALE (SOMA)\n")
        f.write("% Validated with ASP integrity constraints\n")
        f.write("% ==========================================\n\n")

        for obj_id in sorted(objects.keys()):
            data = objects[obj_id]
            all_vals = data["qualities"] + data["roles"] + data["tasks"]
            if not all_vals:
                continue

            # Convert obj_id back to readable name
            obj_name = obj_id.replace("_", " ")
            f.write(f"% --- {obj_name} ---\n")
            f.write(f"obj({obj_id}).\n")

            for q in sorted(data["qualities"]):
                f.write(f"hasPhysicalQuality({obj_id}, {q}).\n")
            for r in sorted(data["roles"]):
                f.write(f"hasRole({obj_id}, {r}).\n")
            for t in sorted(data["tasks"]):
                f.write(f"affordsTask({obj_id}, {t}).\n")
            f.write("\n")

    return len(objects)


def main():
    print("=" * 60)
    print("ASP Integrity Constraints -- Post-Processing")
    print("=" * 60)
    print(f"Input:       {BK_FILE}")
    print(f"Constraints: {IC_FILE}")
    print(f"Output:      {OUT_FILE}")
    print()

    print("[1/3] Running Clingo...")
    output = run_clingo()
    print(f"      [OK] Clingo completed successfully")

    print("[2/3] Parsing answer set...")
    objects, removed = parse_clingo_output(output)
    print(f"      [OK] {len(objects)} objects parsed")

    print("[3/3] Writing validated Prolog file...")
    count = write_prolog(objects, removed)
    print(f"      [OK] {count} objects written to {OUT_FILE}")

    # Summary of corrections
    total_removed = len(removed["qualities"]) + len(removed["roles"]) + len(removed["tasks"])
    print(f"\n{'─' * 60}")
    print(f"CORRECTIONS APPLIED: {total_removed} facts removed")
    print(f"  Qualities removed: {len(removed['qualities'])}")
    for obj, val in sorted(removed["qualities"]):
        print(f"    - {obj}: {val}")
    print(f"  Roles removed: {len(removed['roles'])}")
    for obj, val in sorted(removed["roles"]):
        print(f"    - {obj}: {val}")
    print(f"  Tasks removed: {len(removed['tasks'])}")
    for obj, val in sorted(removed["tasks"]):
        print(f"    - {obj}: {val}")


if __name__ == "__main__":
    main()
