"""
run_pipeline.py - Full End-to-End Pipeline Orchestrator
=============================================================================
Deploys the entire neuro-symbolic logic pipeline spanning Phase 1 & 2
for both the 'goesIn' (tidy_up) and 'hasAffordance' (tool_usage) tasks.

SHARED OFFLINE PHASE (Steps 1-4):
  Step 1: ConceptNet extraction     (shared/concept_net_extractor.py)
  Step 2: Semantic object filter    (shared/filter_objects.py)
  Step 3: LLM SOMA annotation       (shared/parsing.py)
  Step 4: ASP integrity constraints (shared/apply_constraints.py)

TIDY UP — OFFLINE (Steps 5-6):
  Step 5: ILASP example generation  (tidy_up/generate_ilasp_examples.py)
  Step 6: Logical Rule Learning     (tidy_up/llm_rule_induction.py)

TIDY UP — ONLINE (Step 7):
  Step 7: Real-world inference eval (tidy_up/evaluate.py)

TOOL USAGE — OFFLINE (Steps 8-9):
  Step 8: ILASP example generation  (tool_usage/generate_ilasp_examples.py)
  Step 9: Logical Rule Learning     (tool_usage/llm_rule_induction.py)

TOOL USAGE — ONLINE (Step 10):
  Step 10: Tool usage inference eval(tool_usage/evaluate.py)

Usage:
    python run_pipeline.py              # Run all steps continuously
    python run_pipeline.py --from 5     # Resume from step 5
    python run_pipeline.py --only 7     # Run only tidy_up evaluation
    python run_pipeline.py --only 10    # Run only tool_usage evaluation
    python run_pipeline.py --from 8     # Run tool_usage steps only
=============================================================================
"""

import subprocess
import sys
import time
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent
MODULE_DIR = SCRIPT_DIR.parent
RULES_DIR = MODULE_DIR / "rules"
JSONS_DIR = MODULE_DIR / "jsons"

STEPS = [
    # ── SHARED (Steps 1-4) ──────────────────────────────────────────────
    {
        "number": 1,
        "name": "ConceptNet Extraction",
        "type": "python",
        "script": "shared/concept_net_extractor.py",
        "description": "Extract domestic object subgraph from ConceptNet",
        "output_files": [JSONS_DIR / "conceptnet_domestic_subgraph.json"],
    },
    {
        "number": 2,
        "name": "Semantic Object Filtering",
        "type": "python",
        "script": "shared/filter_objects.py",
        "description": "Filter objects using LLM to keep only domestic items",
        "output_files": [JSONS_DIR / "conceptnet_objects_kept.json",
                         JSONS_DIR / "conceptnet_objects_rejected.json"],
    },
    {
        "number": 3,
        "name": "SOMA Annotation",
        "type": "python",
        "script": "shared/parsing.py",
        "description": "Annotate objects with SOMA ontology labels via LLM",
        "output_files": [RULES_DIR / "shared" / "background_knowledge.las"],
    },
    {
        "number": 4,
        "name": "ASP Integrity Constraints",
        "type": "python",
        "script": "shared/apply_constraints.py",
        "description": "Validate and correct annotations using ASP constraints",
        "output_files": [RULES_DIR / "shared" / "background_knowledge_validated.las"],
    },

    # ── TIDY UP (Steps 5-7) ─────────────────────────────────────────────
    {
        "number": 5,
        "name": "Generate ILASP Examples — Tidy Up",
        "type": "python",
        "script": "tidy_up/generate_ilasp_examples.py",
        "args": ["--ml", "1", "--mvp"],
        "description": "Construct context-dependent inductive problem file (goesIn)",
        "output_files": [RULES_DIR / "tidy_up" / "ilasp_tidy_up.las"],
    },
    {
        "number": 6,
        "name": "LLM Rule Learning — Tidy Up",
        "type": "python",
        "script": "tidy_up/llm_rule_induction.py",
        "description": "Use LLM generator and Clingo verifier to induce goesIn rules",
        "output_files": [RULES_DIR / "tidy_up" / "learned_rules_llm_total.txt"],
    },
    {
        "number": 7,
        "name": "Online Evaluation — Tidy Up",
        "type": "python",
        "script": "tidy_up/evaluate.py",
        "args": ["--num-tests", "50"],
        "description": "Execute Clingo inference on unseen objects (tidy_up)",
        "output_files": [SCRIPT_DIR / "tidy_up" / "evaluation_report.md"],
    },

    # ── TOOL USAGE (Steps 8-10) ─────────────────────────────────────────
    {
        "number": 8,
        "name": "Generate ILASP Examples — Tool Usage",
        "type": "python",
        "script": "tool_usage/generate_ilasp_examples.py",
      #  "args": ["--ml", "1", "--mvp"],
        "args": ["--full"],
        "description": "Construct ILASP input for hasAffordance rule learning",
        "output_files": [RULES_DIR / "tool_usage" / "ilasp_tool_usage.las"],
    },
    {
        "number": 9,
        "name": "LLM Rule Learning — Tool Usage",
        "type": "python",
        "script": "tool_usage/llm_rule_induction.py",
        "description": "Use LLM generator and Clingo verifier to induce hasAffordance rules",
        "output_files": [RULES_DIR / "tool_usage" / "learned_rules_tool_usage.txt"],
    },
    {
        "number": 10,
        "name": "Online Evaluation — Tool Usage",
        "type": "python",
        "script": "tool_usage/evaluate.py",
       # "args": ["--num-tests", "50"],
        "description": "Execute Clingo inference for tool selection (tool_usage)",
        "output_files": [SCRIPT_DIR / "tool_usage" / "evaluation_report.md"],
    },
]


def run_step(step: dict) -> bool:
    """Execute a single pipeline step. Returns True on success."""
    print(f"\n{'=' * 60}")
    print(f"  STEP {step['number']}/{len(STEPS)}: {step['name']}")
    print(f"  {step['description']}")
    
    start_time = time.time()

    if step["type"] == "python":
        script_path = SCRIPT_DIR / step["script"]
        if not script_path.exists():
            print(f"  [ERROR] Script not found: {script_path}")
            return False
            
        print(f"  Script: {step['script']}\n{'-' * 60}\n")
        
        args = [sys.executable, str(script_path)] + step.get("args", [])
        result = subprocess.run(args, cwd=str(SCRIPT_DIR))
        
    elif step["type"] == "shell":
        print(f"  Command: {' '.join(step['command'])}\n{'-' * 60}\n")
        
        stdout_path = step["stdout_file"]
        with open(stdout_path, "w") as out:
            result = subprocess.run(step["command"], cwd=str(SCRIPT_DIR), stdout=out)

    elapsed = time.time() - start_time

    if result.returncode != 0:
        print(f"\n  [FAILED] Step {step['number']} failed with exit code {result.returncode}")
        return False

    for out_file in step["output_files"]:
        full_path = out_file
        if full_path.exists():
            size_kb = full_path.stat().st_size / 1024
            print(f"  Output: {out_file} ({size_kb:.1f} KB)")
        else:
            print(f"  [WARN] Expected output not found: {out_file}")

    print(f"  Duration: {elapsed:.1f}s")
    return True


def main():
    start_from = 1
    only_step = None

    args = sys.argv[1:]
    if "--from" in args:
        idx = args.index("--from")
        start_from = int(args[idx + 1])
    elif "--only" in args:
        idx = args.index("--only")
        only_step = int(args[idx + 1])

    print("\n" + "#" * 70)
    print("#  END-TO-END PIPELINE: Neuro-Symbolic Logic Learning")
    print("#  Tasks: goesIn (tidy_up) + hasAffordance (tool_usage)")
    print("#" * 70)

    if only_step:
        steps_to_run = [s for s in STEPS if s["number"] == only_step]
        print(f"\n  Running only step {only_step}")
    else:
        steps_to_run = [s for s in STEPS if s["number"] >= start_from]
        if start_from > 1:
            print(f"\n  Resuming from step {start_from}")
        else:
            print(f"\n  Running all {len(steps_to_run)} steps")

    print(f"  Steps: {', '.join(s['name'] for s in steps_to_run)}")

    total_start = time.time()
    completed = 0

    for step in steps_to_run:
        success = run_step(step)
        if not success:
            print(f"\n  Pipeline stopped at step {step['number']}.")
            print(f"  To resume, run: python run_pipeline.py --from {step['number']}")
            sys.exit(1)
        completed += 1

    total_elapsed = time.time() - total_start

    print(f"\n{'#' * 60}")
    print(f"#  PIPELINE COMPLETE")
    print(f"#  Steps completed: {completed}/{len(steps_to_run)}")
    print(f"#  Total duration: {total_elapsed:.1f}s")
    print(f"#")
    print(f"#  Final target evaluation generated.")
    print(f"{'#' * 60}\n")


if __name__ == "__main__":
    main()
