#!/bin/bash
#SBATCH --job-name=meta_reasoning_full_ablation
#SBATCH --partition=study
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=180G
#SBATCH --time=168:00:00
#SBATCH --output=logs/meta_reasoning_full_ablation_%j.out
#SBATCH --error=logs/meta_reasoning_full_ablation_%j.err

# =============================================================================
# run_full_ablation_study.sh — Module 2 Meta-Reasoning FULL ablation on SLURM
# =============================================================================
# Runs the complete experimental matrix for the meta-reasoning chapter:
#
#   Phase 1 — Robo-CSK Binary (9,576 questions)
#             All ablations × all models
#
#   Phase 2 — Robo-CSK Multi-Choice (4,788 questions)
#             All ablations × all models
#
#   Phase 3 — BEHAVIOR-1K OOD Generalization (2,032 questions)
#             Original Mistral-annotated labels (in-loop, upper bound)
#             All ablations × all models
#
#   Phase 4 — BEHAVIOR-1K Ontology Alignment Study (2,032 questions)
#             Independent LLaMA 3.1-annotated labels (circularity-free)
#             Tests whether SOMA-derived Prolog rules align with independent
#             task-requirement assessments — the key scientific claim.
#             All ablations × all models
#
# Usage (local):   bash run_full_ablation_study.sh
# Usage (cluster): sbatch run_full_ablation_study.sh
#
# Environment variables:
#   MISTRAL_API_KEY   — must be set before running (no default)
#   SKIP_ANNOTATION   — set to 1 to skip LLaMA annotation if CSV already exists
# =============================================================================

set -euo pipefail

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

if [ -d "$REPO_DIR/.thesis_env" ]; then
    VENV_DIR="$REPO_DIR/.thesis_env"
elif [ -d "$REPO_DIR/thesis_env" ]; then
    VENV_DIR="$REPO_DIR/thesis_env"
else
    REPO_DIR="$HOME/thesis"
    VENV_DIR="$REPO_DIR/thesis_env"
fi

B1K_DIR="$REPO_DIR/BEHAVIOR-1K"
B1K_MISTRAL_CSV="$B1K_DIR/behavior1k_annotated.csv"
B1K_LLAMA_CSV="$B1K_DIR/behavior1k_annotated_llama3.1_latest.csv"

# ---------------------------------------------------------------------------
# Environment setup
# ---------------------------------------------------------------------------
echo "============================================================"
echo "  Neuro-Symbolic FULL Ablation Study: Meta-Reasoning (Module 2)"
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

mkdir -p "$SCRIPT_DIR/logs"
cd "$SCRIPT_DIR"
mkdir -p results

# ---------------------------------------------------------------------------
# Experimental matrix
# ---------------------------------------------------------------------------
ABLATIONS=("none" "pure_llm" "pure_logic")
MODELS=("mistral-large-latest" "mistral-medium-latest" "mistral-small-latest")

# ===========================================================================
# PHASE 1 — Robo-CSK Binary
# ===========================================================================
echo "====================================================="
echo "Phase 1: Binary Classification (Robo-CSK, 9,576 questions)"
echo "====================================================="

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo " -> [Binary | robo-csk] ablation=$ablation | model=$model"
        python3 evaluate.py \
            --mode binary \
            --dataset robo-csk \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "results/results_robocsk_binary_${ablation}_${model}.txt" \
            "$@"
    done
done

# ===========================================================================
# PHASE 2 — Robo-CSK Multi-Choice
# ===========================================================================
echo ""
echo "====================================================="
echo "Phase 2: Multi-Choice Config Selection (Robo-CSK, 4,788 questions)"
echo "====================================================="

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo " -> [Multi | robo-csk] ablation=$ablation | model=$model"
        python3 evaluate.py \
            --mode multi \
            --dataset robo-csk \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "results/results_robocsk_multi_${ablation}_${model}.txt" \
            "$@"
    done
done

# ===========================================================================
# PHASE 3 — BEHAVIOR-1K OOD Generalization (Mistral-annotated labels)
# Upper bound / baseline: annotation and evaluation share the same model
# family (Mistral). Included for comparison, but results may be inflated
# due to in-loop label correlation.
# ===========================================================================
echo ""
echo "====================================================="
echo "Phase 3: BEHAVIOR-1K OOD Generalization (Mistral labels — in-loop baseline)"
echo "====================================================="

if [ ! -f "$B1K_MISTRAL_CSV" ]; then
    echo "  [!] Mistral-annotated CSV not found at $B1K_MISTRAL_CSV"
    echo "  Running annotation with Mistral (this will use API credits)..."
    python3 annotate_behavior1k.py --engine llm --model mistral-large-latest
fi

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo " -> [behavior1k | mistral-labels] ablation=$ablation | model=$model"
        python3 evaluate.py \
            --mode binary \
            --dataset "$B1K_MISTRAL_CSV" \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "results/results_behavior1k_mistral_labels_${ablation}_${model}.txt" \
            "$@"
    done
done

# ===========================================================================
# PHASE 4 — BEHAVIOR-1K Ontology Alignment Study (LLaMA-annotated labels)
# Circularity-free: labels come from LLaMA 3.1, evaluation uses Mistral.
# Tests whether the SOMA-derived Prolog axioms encode capability requirements
# that agree with an independent model's assessment — the key scientific
# claim of the meta-reasoning generalization chapter.
# ===========================================================================
echo ""
echo "====================================================="
echo "Phase 4: BEHAVIOR-1K Ontology Alignment Study (LLaMA 3.1 labels — circularity-free)"
echo "====================================================="

SKIP_ANNOTATION="${SKIP_ANNOTATION:-0}"

if [ ! -f "$B1K_LLAMA_CSV" ]; then
    if [ "$SKIP_ANNOTATION" = "1" ]; then
        echo "  [!] LLaMA-annotated CSV not found at $B1K_LLAMA_CSV"
        echo "  SKIP_ANNOTATION=1 but file is missing — cannot skip. Aborting Phase 4."
        exit 1
    fi
    echo "  LLaMA-annotated CSV not found. Running annotation with llama3.1:latest..."
    echo "  (Requires Ollama running locally — ~27 min on Apple M-series)"
    python3 annotate_behavior1k.py --engine llm --model llama3.1:latest
fi

echo "  Using LLaMA-annotated labels: $B1K_LLAMA_CSV"

for ablation in "${ABLATIONS[@]}"; do
    for model in "${MODELS[@]}"; do
        echo ""
        echo " -> [behavior1k | llama-labels] ablation=$ablation | model=$model"
        python3 evaluate.py \
            --mode binary \
            --dataset "$B1K_LLAMA_CSV" \
            --ablation "$ablation" \
            --model "$model" \
            --output_file "results/results_behavior1k_llama_labels_${ablation}_${model}.txt" \
            "$@"
    done
done

# ===========================================================================
# Done
# ===========================================================================
echo ""
echo "============================================================"
echo "  Meta-Reasoning FULL Ablation Study Complete"
echo "  Results written to: $SCRIPT_DIR/results/"
echo "  Finished at: $(date)"
echo "============================================================"
