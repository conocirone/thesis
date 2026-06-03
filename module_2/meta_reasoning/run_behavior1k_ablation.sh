#!/bin/bash
#SBATCH --job-name=behavior1k_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=96:00:00
#SBATCH --output=logs/behavior1k_ablation_%j.out
#SBATCH --error=logs/behavior1k_ablation_%j.err

# =============================================================================
# run_behavior1k_ablation.sh — BEHAVIOR-1K Generalization Study for Meta-Reasoning
# =============================================================================
# Tests the meta-reasoning pipeline (UNMODIFIED) on BEHAVIOR-1K tasks.
# The Prolog reasoner encodes domain-general robotic capability axioms,
# so NO adaptation is needed — this is a pure zero-shot transfer test.
#
# Experimental matrix:
#   Dataset:   behavior1k
#   Ablations: none (full pipeline), pure_llm, pure_logic
#   Models:    mistral-small, mistral-medium, mistral-large
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
    # Fallback to home directory location if executing in isolated cluster contexts
    REPO_DIR="$HOME/thesis"
    VENV_DIR="$REPO_DIR/thesis_env"
fi

echo "============================================================"
echo "  Generalization Study: Meta-Reasoning × BEHAVIOR-1K"
echo "============================================================"
echo "Node:     $HOSTNAME"
echo "Date:     $(date)"
echo "GPU:      $(nvidia-smi --query-gpu=name --format=csv,noheader 2>/dev/null || echo 'N/A')"
echo "Repo:     $REPO_DIR"
echo ""

# Activate environment
source "$VENV_DIR/bin/activate"
echo "Python:   $(python3 --version)"
echo ""

# Set API key
export HF_HOME="${HF_HOME:-$REPO_DIR/.hf_cache}"
export MISTRAL_API_KEY="${MISTRAL_API_KEY}"
mkdir -p "$HF_HOME"
echo "HF_HOME:  $HF_HOME"
echo ""

# Ensure directories exist
cd "$REPO_DIR/module_2/meta_reasoning"
mkdir -p results logs

# Check BEHAVIOR-1K data exists
if [ ! -f "../../BEHAVIOR-1K/behavior1k_annotated_llama3.1_latest.csv" ]; then
    echo "BEHAVIOR-1K data not found. Running setup scripts..."
    python3 download_behavior1k.py
    python3 annotate_behavior1k.py
fi

# =============================================================================
# EXPERIMENTAL MATRIX
# Note: No --reasoner flag needed — meta-reasoning Prolog is already general
# =============================================================================
ABLATIONS=("none" "pure_llm" "pure_logic")
MODELS=("mistral-small-latest" "mistral-medium-latest" "mistral-large-latest")

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo "============================================================"
        echo "  Dataset: behavior1k | Ablation: $ablation | Model: $model"
        echo "============================================================"
        
        output_file="results/results_behavior1k"
        
        python3 evaluate.py \
            --mode binary \
            --dataset behavior1k \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "${output_file}.txt" \
            "$@"
            
        echo "  -> Done: behavior1k / $ablation / $model"
    done
done

echo ""
echo "============================================================"
echo "  BEHAVIOR-1K Generalization Study Complete"
echo "  Finished at: $(date)"
echo "============================================================"
