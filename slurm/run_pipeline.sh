#!/bin/bash
#SBATCH --job-name=neuro_sym_pipeline
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=06:00:00
#SBATCH --output=slurm/logs/pipeline_%j.out
#SBATCH --error=slurm/logs/pipeline_%j.err

# =============================================================================
# run_pipeline.sh — Full neuro-symbolic pipeline on SLURM GPU
# =============================================================================
# Usage:
#   sbatch slurm/run_pipeline.sh                # Run all steps
#   sbatch slurm/run_pipeline.sh --from 5       # Resume from step 5
#   sbatch slurm/run_pipeline.sh --only 7       # Run only step 7
# =============================================================================

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_DIR="$REPO_DIR/.venv_server"

echo "========================================"
echo "  Neuro-Symbolic Pipeline (SLURM GPU)"
echo "========================================"
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

# Check clingo
if ! command -v clingo &> /dev/null; then
    echo "[ERROR] Clingo not found. Install with: pip install clingo"
    exit 1
fi

# Run the pipeline, passing through any CLI args (--from, --only, etc.)
cd "$REPO_DIR/module_1/scripts"
python3 run_pipeline.py "$@"

echo ""
echo "Job finished at: $(date)"
