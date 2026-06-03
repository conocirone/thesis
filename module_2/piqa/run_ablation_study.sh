#!/bin/bash
#SBATCH --job-name=piqa_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=96:00:00
#SBATCH --output=logs/piqa_ablation_%j.out
#SBATCH --error=logs/piqa_ablation_%j.err

# =============================================================================
# run_ablation_study.sh — Module 2 PIQA ablation on SLURM
# =============================================================================

set -euo pipefail

REPO_DIR="$HOME/thesis"
VENV_DIR="$REPO_DIR/thesis_env"

echo "============================================================"
echo "  Neuro-Symbolic Ablation Study: PIQA (Module 2)"
echo "============================================================"
echo "Node:     $HOSTNAME"
echo "Date:     $(date)"
echo "GPU:      $(nvidia-smi --query-gpu=name --format=csv,noheader 2>/dev/null || echo 'N/A')"
echo "Repo:     $REPO_DIR"
echo ""

# Activate environment
source "$VENV_DIR/bin/activate"
echo "Python:   $(python3 --version)"
echo "PyTorch:  $(python3 -c 'import torch; print(torch.__version__)' 2>/dev/null || echo 'Not installed')"
echo "CUDA:     $(python3 -c 'import torch; print(torch.cuda.is_available())' 2>/dev/null || echo 'Not installed')"
echo ""

# Set HuggingFace cache directory (shared across jobs)
export HF_HOME="${HF_HOME:-$REPO_DIR/.hf_cache}"
mkdir -p "$HF_HOME"
echo "HF_HOME:  $HF_HOME"
echo ""

# Ensure log directory exists
mkdir -p "$REPO_DIR/module_2/piqa/logs"

# Navigate to the task directory
cd "$REPO_DIR/module_2/piqa"
mkdir -p results

ABLATION_TO_DO=("none" "pure_llm")
MODELS_TO_USE=("mistral-small-latest" "mistral-medium-latest" "mistral-large-latest")

# First run pure_logic once (model-independent)
echo " -> Running ablation: pure_logic..."
python3 evaluate.py --ablation "pure_logic" --output_file "results_piqa.txt" --model "mistral-small-latest" "$@"

# Then run LLM-based ablations across models
for ablation in "${ABLATION_TO_DO[@]}"; do
    for model in "${MODELS_TO_USE[@]}"; do
        echo " -> Running ablation: $ablation with model: $model..."
        python3 evaluate.py --ablation "$ablation" --output_file "results_piqa.txt" --model "$model" "$@"
    done
done

echo ""
echo "Job finished at: $(date)"
