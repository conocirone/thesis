"""
run_pipeline.py - Full End-to-End Pipeline Orchestrator
=============================================================================
Deploys the entire neuro-symbolic logic pipeline spanning Phase 1 & 2 for the 'goesIn' task.

OFFLINE PHASE (Rule Discovery via ConceptNet & LLM-guided ASP):
  Step 1: ConceptNet extraction    (offline_phase/concept_net_extractor.py)
  Step 2: Semantic object filter   (offline_phase/filter_objects.py)
  Step 3: LLM SOMA annotation      (offline_phase/parsing.py)
  Step 4: ASP integrity constraints(offline_phase/apply_constraints.py)
  Step 5: ILASP example generation (offline_phase/generate_ilasp_examples.py)
  Step 6: Logical Rule Learning    (ILASP --version=4)

ONLINE PHASE (Validation via Symbolic Inference):
  Step 7: Real-world inference eval(online_phase/evaluate_tidy_up.py)

Usage:
    python run_pipeline.py              # Run all steps continuously
    python run_pipeline.py --from 5     # Resume from step 5
    python run_pipeline.py --only 7     # Run only evaluation
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
    {
        "number": 1,
        "name": "ConceptNet Extraction",
        "type": "python",
        "script": "offline_phase/concept_net_extractor.py",
        "description": "Extract domestic object subgraph from ConceptNet",
        "output_files": [JSONS_DIR / "conceptnet_domestic_subgraph.json"],
    },
    {
        "number": 2,
        "name": "Semantic Object Filtering",
        "type": "python",
        "script": "offline_phase/filter_objects.py",
        "description": "Filter objects using LLM to keep only domestic items",
        "output_files": [JSONS_DIR / "conceptnet_objects_kept.json", JSONS_DIR / "conceptnet_objects_rejected.json"],
    },
    {
        "number": 3,
        "name": "SOMA Annotation",
        "type": "python",
        "script": "offline_phase/parsing.py",
        "description": "Annotate objects with SOMA ontology labels via LLM",
        "output_files": [RULES_DIR / "background_knowledge.las"],
    },
    {
        "number": 4,
        "name": "ASP Integrity Constraints",
        "type": "python",
        "script": "offline_phase/apply_constraints.py",
        "description": "Validate and correct annotations using ASP constraints",
        "output_files": [RULES_DIR / "background_knowledge_validated.las"],
    },
    {
        "number": 5,
        "name": "Generate ILASP Examples",
        "type": "python",
        "script": "offline_phase/generate_ilasp_examples.py",
        # Using MVP configs here to keep the pipeline execution fast.
        # Remove --ml 1 --mvp for full runs.
        "args": ["--ml", "1", "--mvp"],
        "description": "Construct context-dependent inductive problem file",
        "output_files": [RULES_DIR / "ilasp_tidy_up.las"],
    },
    {
        "number": 6,
        "name": "LLM Rule Learning (Replacing ILASP)",
        "type": "python",
        "script": "offline_phase/llm_rule_induction.py",
        "description": "Use LLM generator and Clingo verifier to induce rules",
        "output_files": [RULES_DIR / "learned_rules_llm.txt"],
    },
    {
        "number": 7,
        "name": "Online Evaluation (Inference)",
        "type": "python",
        "script": "online_phase/evaluate_tidy_up.py",
        "args": ["--num-tests", "50"],
        "description": "Execute Clingo inference on unseen objects simulating real world",
        "output_files": [SCRIPT_DIR / "online_phase/evaluation_report.md"],
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

    # Verify output files exist
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
    # Parse arguments
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
    print("#  END-TO-END PIPELINE: Neuro-Symbolic Logic Learning (goesIn phase)")
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
