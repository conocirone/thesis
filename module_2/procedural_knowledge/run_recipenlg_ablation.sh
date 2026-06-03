#!/bin/bash
#SBATCH --job-name=recipenlg_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=96:00:00
#SBATCH --output=logs/recipenlg_ablation_%j.out
#SBATCH --error=logs/recipenlg_ablation_%j.err

# =============================================================================
# run_recipenlg_ablation.sh — RecipeNLG Generalization Study for Procedural Knowledge
# =============================================================================
# Tests the procedural knowledge pipeline on RecipeNLG cooking step ordering data.
# Experimental matrix:
#   Datasets:  recipenlg (real human-written cooking recipes)
#   Reasoners: cooking (unmodified, zero-shot)
#   Ablations: none (full pipeline), pure_llm, pure_logic
#   Models:    mistral-small, mistral-medium, mistral-large
# =============================================================================

set -euo pipefail

# Detect repository root dynamically 
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
echo "  Generalization Study: Procedural Knowledge × RecipeNLG"
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
cd "$REPO_DIR/module_2/procedural_knowledge"
mkdir -p results logs

# Check RecipeNLG data exists
if [ ! -f "../../RecipeNLG/recipenlg_binary.json" ]; then
    echo "RecipeNLG data not found. Running download script..."
    python3 download_recipenlg.py
fi

# =============================================================================
# EXPERIMENTAL MATRIX
# =============================================================================
ABLATIONS=("none" "pure_llm" "pure_logic")
MODELS=("mistral-small-latest" "mistral-medium-latest" "mistral-large-latest")

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo "============================================================"
        echo "  Dataset: recipenlg | Ablation: $ablation | Model: $model"
        echo "============================================================"
        
        output_file="results/results_recipenlg"
        
        python3 evaluate.py \
            --mode binary \
            --dataset "recipenlg" \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "${output_file}.txt" \
            "$@"
            
        echo "  -> Done: recipenlg / $ablation / $model"
    done
done

echo ""
echo "============================================================"
echo "  RecipeNLG Generalization Study Complete"
echo "  Finished at: $(date)"
echo "============================================================"
