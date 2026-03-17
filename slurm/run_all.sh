#!/bin/bash
# =============================================================================
# run_all.sh — Single entry point for the full neuro-symbolic pipeline on SLURM
# =============================================================================
#
# This script handles everything: environment setup, HuggingFace auth check,
# and SLURM job submission.
#
# Usage (run from the repo root or from any directory):
#
#   bash slurm/run_all.sh                   # Full pipeline (all 10 steps)
#   bash slurm/run_all.sh --from 5          # Resume from step 5
#   bash slurm/run_all.sh --only 7          # Run only step 7
#   bash slurm/run_all.sh --setup-only      # Only set up the environment, don't submit
#
# Pipeline steps:
#   1  ConceptNet extraction           (shared)
#   2  Semantic object filtering       (shared, uses LLM)
#   3  SOMA annotation                 (shared, uses LLM)
#   4  ASP integrity constraints       (shared)
#   5  ILASP example generation        (tidy_up)
#   6  LLM rule learning               (tidy_up, uses LLM)
#   7  Online evaluation               (tidy_up, uses LLM)
#   8  ILASP example generation        (tool_usage)
#   9  LLM rule learning               (tool_usage, uses LLM)
#  10  Online evaluation               (tool_usage, uses LLM)
#
# =============================================================================

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_DIR="$REPO_DIR/.venv_server"
SLURM_DIR="$REPO_DIR/slurm"

# Parse --setup-only flag (pass everything else through to the SBATCH job)
SETUP_ONLY=false
PIPELINE_ARGS=()
for arg in "$@"; do
    if [ "$arg" == "--setup-only" ]; then
        SETUP_ONLY=true
    else
        PIPELINE_ARGS+=("$arg")
    fi
done

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║   Neuro-Symbolic Pipeline — SLURM GPU Launcher          ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""
echo "  Repo:  $REPO_DIR"
echo ""

# ─────────────────────────────────────────────────────────────────────────────
# 1. Environment setup (idempotent — skips if already done)
# ─────────────────────────────────────────────────────────────────────────────
if [ ! -d "$VENV_DIR" ]; then
    echo "┌─ Environment Setup ─────────────────────────────────────┐"
    echo "│  No virtual environment found. Running setup...         │"
    echo "└─────────────────────────────────────────────────────────┘"
    echo ""
    bash "$SLURM_DIR/setup_env.sh"
    echo ""
else
    echo "  [ok] Virtual environment found at $VENV_DIR"
    source "$VENV_DIR/bin/activate"

    # Quick dependency check
    MISSING=""
    python3 -c "import torch" 2>/dev/null || MISSING="$MISSING torch"
    python3 -c "import transformers" 2>/dev/null || MISSING="$MISSING transformers"
    python3 -c "import clingo" 2>/dev/null || MISSING="$MISSING clingo"

    if [ -n "$MISSING" ]; then
        echo "  [warn] Missing packages:$MISSING"
        echo "  Re-running setup..."
        echo ""
        bash "$SLURM_DIR/setup_env.sh"
        echo ""
    else
        echo "  [ok] Core dependencies verified (torch, transformers, clingo)"
    fi
fi

# ─────────────────────────────────────────────────────────────────────────────
# 2. HuggingFace authentication check
# ─────────────────────────────────────────────────────────────────────────────
source "$VENV_DIR/bin/activate"

if python3 -c "from huggingface_hub import HfFolder; assert HfFolder.get_token()" 2>/dev/null; then
    echo "  [ok] HuggingFace token configured"
else
    echo ""
    echo "  ⚠  No HuggingFace token found."
    echo "     Meta-Llama models require authentication."
    echo ""
    echo "     1. Accept the license: https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct"
    echo "     2. Run: huggingface-cli login"
    echo "     3. Then re-run this script."
    echo ""
    read -rp "  Continue anyway? (y/N) " choice
    if [[ ! "$choice" =~ ^[Yy]$ ]]; then
        echo "  Aborted."
        exit 0
    fi
fi

# ─────────────────────────────────────────────────────────────────────────────
# 3. Submit SLURM job (or stop if --setup-only)
# ─────────────────────────────────────────────────────────────────────────────
if $SETUP_ONLY; then
    echo ""
    echo "  Setup complete. Use the following to submit a job:"
    echo ""
    echo "    sbatch slurm/run_pipeline.sh              # all steps"
    echo "    sbatch slurm/run_pipeline.sh --from 5     # resume from step 5"
    echo "    sbatch slurm/run_pipeline.sh --only 7     # single step"
    echo ""
    exit 0
fi

# Create log directory
mkdir -p "$SLURM_DIR/logs"

echo ""
echo "┌─ Submitting SLURM Job ──────────────────────────────────┐"
if [ ${#PIPELINE_ARGS[@]} -gt 0 ]; then
    echo "│  Pipeline args: ${PIPELINE_ARGS[*]}"
else
    echo "│  Running full pipeline (steps 1-10)                     │"
fi
echo "│  Logs: slurm/logs/pipeline_<jobid>.{out,err}            │"
echo "└─────────────────────────────────────────────────────────┘"
echo ""

cd "$REPO_DIR"

# Build the sbatch command — pipeline args (--from, --only) are forwarded
# to run_pipeline.sh which passes them through to run_pipeline.py
SBATCH_CMD=(sbatch slurm/run_pipeline.sh "${PIPELINE_ARGS[@]+"${PIPELINE_ARGS[@]}"}")
echo "  Command: ${SBATCH_CMD[*]}"
echo ""

JOB_OUTPUT=$("${SBATCH_CMD[@]}")
JOB_ID=$(echo "$JOB_OUTPUT" | grep -oE '[0-9]+')

echo "  $JOB_OUTPUT"
echo ""
echo "  Monitor with:"
echo "    squeue -j $JOB_ID                              # job status"
echo "    tail -f slurm/logs/pipeline_${JOB_ID}.out      # live output"
echo "    scancel $JOB_ID                                 # cancel job"
echo ""
