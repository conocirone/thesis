#!/bin/bash
#SBATCH --job-name=meta_reasoning
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --gres=gpu:a40:2
#SBATCH --time=08:00:00
#SBATCH --output=logs/meta_reasoning_%j.out
#SBATCH --error=logs/meta_reasoning_%j.err

# =============================================================================
# run_meta_reasoning.sh — Module 2 Meta-Reasoning evaluation on SLURM GPU
# =============================================================================
# Usage:
#   sbatch slurm/run_meta_reasoning.sh                 # Run both binary + multi
#   sbatch slurm/run_meta_reasoning.sh --mode binary   # Binary only
#   sbatch slurm/run_meta_reasoning.sh --mode multi    # Multi-choice only
# =============================================================================

set -euo pipefail

REPO_DIR="$HOME/thesis"
VENV_DIR="$REPO_DIR/.venv_server"

echo "============================================================"
echo "  Neuro-Symbolic Evaluation: Meta-Reasoning (Module 2)"
echo "============================================================"
echo "Node:     $HOSTNAME"
echo "Date:     $(date)"
echo "GPU:      $(nvidia-smi --query-gpu=name --format=csv,noheader 2>/dev/null || echo 'N/A')"
echo "Repo:     $REPO_DIR"
echo ""

# Activate environment
source "$VENV_DIR/bin/activate"
echo "Python:   $(python3 --version)"
echo "PyTorch:  $(python3 -c 'import torch; print(torch.__version__)')"
echo "CUDA:     $(python3 -c 'import torch; print(torch.cuda.is_available())')"
echo ""

# Set HuggingFace cache directory (shared across jobs)
export HF_HOME="${HF_HOME:-$REPO_DIR/.hf_cache}"
mkdir -p "$HF_HOME"
echo "HF_HOME:  $HF_HOME"
echo ""

# Ensure log directory exists
mkdir -p "$REPO_DIR/slurm/logs"

# Run the module 2 evaluation, passing through any CLI args (--mode, etc.)
cd "$REPO_DIR/module_2/meta_reasoning"
python3 evaluate.py "$@"

echo ""
echo "Job finished at: $(date)"
