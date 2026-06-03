#!/bin/bash
# =============================================================================
# run_ablation_study.sh — Module 1 Ablation Study
# =============================================================================
# Runs ablations for tidy_up and evaluation for tool_usage_new.
#
# Usage:
#     bash run_ablation_study.sh                     # Run all ablations
#     bash run_ablation_study.sh --task tool_usage    # Tool usage evaluation only
#     bash run_ablation_study.sh --task tidy_up       # Tidy up only
#     bash run_ablation_study.sh --num-tests 20       # Quick tidy_up test
#     bash run_ablation_study.sh --k-folds 5          # Tool usage k-fold eval
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Parse arguments
TASK="all"
EXTRA_ARGS=""
MODEL=""
K_FOLDS="0"
while [[ $# -gt 0 ]]; do
    case "$1" in
        --task)
            TASK="$2"
            shift 2
            ;;
        --model)
            MODEL="$2"
            shift 2
            ;;
        --k-folds)
            K_FOLDS="$2"
            shift 2
            ;;
        *)
            EXTRA_ARGS="$EXTRA_ARGS $1"
            shift
            ;;
    esac
done

MODEL_ARGS=""
if [[ -n "$MODEL" ]]; then
    MODEL_ARGS="--model $MODEL"
fi

echo "============================================================"
echo "  Neuro-Symbolic Ablation Study: Module 1"
echo "============================================================"
echo "Date:     $(date)"
echo "Task:     $TASK"
echo "Model:    ${MODEL:-default}"
echo "Args:     $EXTRA_ARGS"
echo ""

# ── TOOL USAGE ───────────────────────────────────────────────────────────────
if [[ "$TASK" == "all" || "$TASK" == "tool_usage" ]]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  TOOL USAGE (tool_usage_new)"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    TOOL_ARGS=""
    if [[ "$K_FOLDS" -gt 1 ]]; then
        TOOL_ARGS="$TOOL_ARGS --k-folds $K_FOLDS"
    fi

    echo ""
    echo " -> Running tool_usage_new evaluation..."
    python3 "$SCRIPT_DIR/tool_usage_new/evaluate_pipeline.py" --output evaluation_report $TOOL_ARGS
fi

# ── TIDY UP ──────────────────────────────────────────────────────────────────
if [[ "$TASK" == "all" || "$TASK" == "tidy_up" ]]; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  TIDY UP"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    TIDY_ABLATIONS=("none" "pure_llm" "no_rerank")
    for ablation in "${TIDY_ABLATIONS[@]}"; do
        echo ""
        echo " -> Running tidy_up ablation: $ablation..."
        python3 "$SCRIPT_DIR/tidy_up/evaluate.py" --ablation "$ablation" $MODEL_ARGS $EXTRA_ARGS
    done
fi

echo ""
echo "============================================================"
echo "  Ablation study complete at $(date)"
echo "============================================================"
