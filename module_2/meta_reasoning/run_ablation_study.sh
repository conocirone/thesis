#!/bin/bash
#SBATCH --job-name=meta_reasoning_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=96:00:00
#SBATCH --output=logs/meta_reasoning_ablation_%j.out
#SBATCH --error=logs/meta_reasoning_ablation_%j.err

# =============================================================================
# run_ablation_study.sh — Module 2 Meta-Reasoning ablation on SLURM
# =============================================================================
# Evaluates the meta-reasoning pipeline on the Robo-CSK benchmark.
#
# Experimental matrix:
#   Modes:     binary, multi
#   Ablations: none (full pipeline), pure_llm, pure_logic
#   Models:    mistral-small, mistral-medium, mistral-large
#
# Usage (local):   bash run_ablation_study.sh
# Usage (cluster): sbatch run_ablation_study.sh
# =============================================================================

set -euo pipefail

# Detect repository root dynamically (works locally and on cluster)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Resolve virtual environment directory
if [ -d "$REPO_DIR/.thesis_env" ]; then
    VENV_DIR="$REPO_DIR/.thesis_env"
elif [ -d "$REPO_DIR/thesis_env" ]; then
    VENV_DIR="$REPO_DIR/thesis_env"
else
    REPO_DIR="$HOME/thesis"
    VENV_DIR="$REPO_DIR/thesis_env"
fi

echo "============================================================"
echo "  Neuro-Symbolic Ablation Study: Meta-Reasoning (Module 2)"
echo "============================================================"
echo "Node:     $HOSTNAME"
echo "Date:     $(date)"
echo "GPU:      $(nvidia-smi --query-gpu=name --format=csv,noheader 2>/dev/null || echo 'N/A')"
echo "Repo:     $REPO_DIR"
echo ""

source "$VENV_DIR/bin/activate"
echo "Python:   $(python3 --version)"
echo "PyTorch:  $(python3 -c 'import torch; print(torch.__version__)' 2>/dev/null || echo 'Not installed')"
echo "CUDA:     $(python3 -c 'import torch; print(torch.cuda.is_available())' 2>/dev/null || echo 'Not installed')"
echo ""

export HF_HOME="${HF_HOME:-$REPO_DIR/.hf_cache}"
export MISTRAL_API_KEY="${MISTRAL_API_KEY}"
mkdir -p "$HF_HOME"
echo "HF_HOME:  $HF_HOME"
echo ""

mkdir -p "$REPO_DIR/module_2/meta_reasoning/logs"
cd "$REPO_DIR/module_2/meta_reasoning"
mkdir -p results

ABLATIONS=("none" "pure_llm" "pure_logic")
MODELS=("mistral-large-latest" "mistral-medium-latest" "mistral-small-latest")

# ---------------------------------------------------------------------------
# Binary evaluation (9,576 questions)
# ---------------------------------------------------------------------------
echo "====================================================="
echo "Phase 1: Binary Classification (Robo-CSK)"
echo "====================================================="

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo " -> [Binary] ablation=$ablation | model=$model"
        python3 evaluate.py \
            --mode binary \
            --dataset robo-csk \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "results/results_binary_${ablation}_${model}.txt" \
            "$@"
    done
done

# ---------------------------------------------------------------------------
# Multi-choice evaluation (4,788 questions)
# ---------------------------------------------------------------------------
echo ""
echo "====================================================="
echo "Phase 2: Multi-Choice Robot Config Selection (Robo-CSK)"
echo "====================================================="

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo " -> [Multi] ablation=$ablation | model=$model"
        python3 evaluate.py \
            --mode multi \
            --dataset robo-csk \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "results/results_multi_${ablation}_${model}.txt" \
            "$@"
    done
done

echo ""
echo "============================================================"
echo "  Meta-Reasoning Ablation Study Complete"
echo "  Finished at: $(date)"
echo "============================================================"
