"""
run_pipeline.py - Full Module 1 Pipeline Orchestrator
=============================================================================
Executes the entire background knowledge generation pipeline in sequence:

  Step 1: ConceptNet extraction    (concept_net_extractor.py)
  Step 2: Semantic object filtering (filter_objects.py)
  Step 3: LLM-based SOMA annotation (parsing.py)
  Step 4: ASP integrity constraints  (apply_constraints.py)

Usage:
    python run_pipeline.py              # Run all steps
    python run_pipeline.py --from 3     # Resume from step 3 (annotation)
    python run_pipeline.py --only 4     # Run only step 4 (validation)
=============================================================================
"""

import subprocess
import sys
import time
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent

STEPS = [
    {
        "number": 1,
        "name": "ConceptNet Extraction",
        "script": "concept_net_extractor.py",
        "description": "Extract domestic object subgraph from ConceptNet",
        "output_files": ["conceptnet_domestic_subgraph.json"],
    },
    {
        "number": 2,
        "name": "Semantic Object Filtering",
        "script": "filter_objects.py",
        "description": "Filter objects using LLM to keep only domestic items",
        "output_files": ["conceptnet_objects_kept.json", "conceptnet_objects_rejected.json"],
    },
    {
        "number": 3,
        "name": "SOMA Annotation",
        "script": "parsing.py",
        "description": "Annotate objects with SOMA ontology labels via LLM",
        "output_files": ["rules/background_knowledge.las"],
    },
    {
        "number": 4,
        "name": "ASP Integrity Constraints",
        "script": "apply_constraints.py",
        "description": "Validate and correct annotations using ASP constraints",
        "output_files": ["rules/background_knowledge_validated.las"],
    },
]


def run_step(step: dict) -> bool:
    """Execute a single pipeline step. Returns True on success."""
    script_path = SCRIPT_DIR / step["script"]

    if not script_path.exists():
        print(f"  [ERROR] Script not found: {script_path}")
        return False

    print(f"\n{'=' * 60}")
    print(f"  STEP {step['number']}/4: {step['name']}")
    print(f"  {step['description']}")
    print(f"  Script: {step['script']}")
    print(f"{'=' * 60}\n")

    start_time = time.time()

    result = subprocess.run(
        [sys.executable, str(script_path)],
        cwd=str(SCRIPT_DIR),
    )

    elapsed = time.time() - start_time

    if result.returncode != 0:
        print(f"\n  [FAILED] Step {step['number']} failed with exit code {result.returncode}")
        return False

    # Verify output files exist
    for out_file in step["output_files"]:
        full_path = SCRIPT_DIR / out_file
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

    print("\n" + "#" * 60)
    print("#  MODULE 1 -- Background Knowledge Generation Pipeline")
    print("#" * 60)

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
    print(f"#  Final output: rules/background_knowledge_validated.las")
    print(f"{'#' * 60}\n")


if __name__ == "__main__":
    main()
