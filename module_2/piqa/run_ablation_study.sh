#!/bin/bash
# run_ablation_study.sh — Run PIQA evaluation across all models and ablation modes
#
# Usage:
#   bash run_ablation_study.sh           # full study
#   bash run_ablation_study.sh --limit 50  # quick test with 50 samples

set -e

EXTRA_ARGS="$@"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

MODELS=(
    "mistral-small-latest"
    "mistral-medium-latest"
    "mistral-large-latest"
)

ABLATIONS=(
    "none"
    "pure_llm"
    "pure_logic"    # only needs to run once (model-independent)
)

echo "=============================================="
echo "PIQA Ablation Study"
echo "=============================================="
echo "Models: ${MODELS[*]}"
echo "Ablations: ${ABLATIONS[*]}"
echo "Extra args: ${EXTRA_ARGS}"
echo "=============================================="

PURE_LOGIC_DONE=false

for model in "${MODELS[@]}"; do
    for ablation in "${ABLATIONS[@]}"; do

        # pure_logic is model-independent — run only once
        if [ "$ablation" == "pure_logic" ]; then
            if [ "$PURE_LOGIC_DONE" == "true" ]; then
                echo ""
                echo "[SKIP] pure_logic already done (model-independent)"
                continue
            fi
            PURE_LOGIC_DONE=true
        fi

        echo ""
        echo "=============================================="
        echo "Running: model=${model}  ablation=${ablation}"
        echo "=============================================="

        python "$SCRIPT_DIR/evaluate.py" \
            --model "$model" \
            --ablation "$ablation" \
            $EXTRA_ARGS

    done
done

echo ""
echo "=============================================="
echo "All runs completed!"
echo "=============================================="
echo "Results in: $SCRIPT_DIR/results/"
ls -la "$SCRIPT_DIR/results/"
