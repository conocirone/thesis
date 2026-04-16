#!/bin/bash
#SBATCH --job-name=procedural_knowledge_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=96:00:00
#SBATCH --output=logs/procedural_knowledge_ablation_%j.out
#SBATCH --error=logs/procedural_knowledge_ablation_%j.err

# =============================================================================
# run_ablation_study.sh — Module 2 Procedural Knowledge ablation on SLURM GPU
# =============================================================================

set -euo pipefail

REPO_DIR="$HOME/thesis"
VENV_DIR="$REPO_DIR/thesis_env"

echo "============================================================"
echo "  Neuro-Symbolic Ablation Study: Procedural Knowledge (Module 2)"
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
mkdir -p "$REPO_DIR/module_2/procedural_knowledge/logs"

# Navigate to the task directory
cd "$REPO_DIR/module_2/procedural_knowledge"
mkdir -p results

ABLATIONS=("none" "pure_llm" "pure_logic" "no_cot")

for ablation in "${ABLATIONS[@]}"; do
    echo " -> Running ablation: $ablation..."
    python3 evaluate.py --ablation "$ablation" --output_file "results/results.txt" "$@"
done

echo ""
echo "Job finished at: $(date)"
