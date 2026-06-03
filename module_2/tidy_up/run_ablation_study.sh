#!/bin/bash
#SBATCH --job-name=tidy_up_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=96:00:00
#SBATCH --output=logs/tidy_up_ablation_%j.out
#SBATCH --error=logs/tidy_up_ablation_%j.err

# =============================================================================
# run_ablation_study.sh — Module 2 Tidy Up ablation on SLURM
# =============================================================================

set -euo pipefail

REPO_DIR="$HOME/thesis"
VENV_DIR="$REPO_DIR/thesis_env"

echo "============================================================"
echo "  Neuro-Symbolic Ablation Study: Tidy Up (Module 2)"
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
export MISTRAL_API_KEY="${MISTRAL_API_KEY}"
mkdir -p "$HF_HOME"
echo "HF_HOME:  $HF_HOME"
echo ""

# Ensure log directory exists
mkdir -p "$REPO_DIR/module_2/tidy_up/logs"

# Navigate to the task directory
cd "$REPO_DIR/module_2/tidy_up"
mkdir -p results

# Configuration
DATASET="tidybot"       # "tidybot" or "robo-csk"
TASK="multichoice"      # TidyBot only runs multichoice as open-ended has vocabulary alignment issues

MODELS=("mistral-small-latest" "mistral-medium-latest" "mistral-large-latest")

echo "====================================================="
echo "Phase 1: Domain-Adapted Mappings (Standard)"
echo "====================================================="

# 1. Standard Full Pipeline (none)
for model in "${MODELS[@]}"; do
    echo " -> [Standard] Running Full Pipeline with model: $model..."
    python3 evaluate.py --ablation none --model "$model" --dataset "$DATASET" --task "$TASK" "$@"
done

# 2. Standard Pure LLM (pure_llm)
for model in "${MODELS[@]}"; do
    echo " -> [Standard] Running Pure LLM with model: $model..."
    python3 evaluate.py --ablation pure_llm --model "$model" --dataset "$DATASET" --task "$TASK" "$@"
done

# 3. Standard Pure Logic (pure_logic - model independent, using mistral-small-latest wrapper)
echo " -> [Standard] Running Pure Logic..."
python3 evaluate.py --ablation pure_logic --model "mistral-small-latest" --dataset "$DATASET" --task "$TASK" "$@"


echo "====================================================="
echo "Phase 2: Strict Zero-Shot Generalization (Ontology Only)"
echo "====================================================="

# 1. Strict Full Pipeline (none --strict)
for model in "${MODELS[@]}"; do
    echo " -> [Strict] Running Full Pipeline with model: $model..."
    python3 evaluate.py --ablation none --strict --model "$model" --dataset "$DATASET" --task "$TASK" "$@"
done

# 2. Strict Pure Logic (pure_logic --strict)
echo " -> [Strict] Running Pure Logic..."
python3 evaluate.py --ablation pure_logic --strict --model "mistral-small-latest" --dataset "$DATASET" --task "$TASK" "$@"

echo ""
echo "Job finished at: $(date)"

