# Robo-CSK-Bench: Generalization / Out-of-Distribution (OOD) Study Results

## 1. Tidy Up

| Model | Mode | Full Pipeline | Pure LLM | Pure Logic | Delta (Full vs. LLM) |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **mistral-large** | Mode A (Vocab-Aligning) | 91.04% | **92.54%** | — | -1.50 pp |
| | Mode B (Strict) | 89.55% | — | — | — |
| **mistral-medium** | Mode A (Vocab-Aligning) | 92.54% | **94.03%** | — | -1.49 pp |
| | Mode B (Strict) | **92.54%** | — | — | — |
| **mistral-small** | Mode A (Vocab-Aligning) | 88.06% | 88.06% | — | 0.00 pp |
| | Mode B (Strict) | 71.64% | — | **34.33%** | — |


### TidyBot Results (Accuracy)

| Model | Full Pipeline | Pure LLM Baseline | Pure Logic (Mode A) | Pure Logic (Mode B) | Delta (Full vs. LLM) |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **mistral-large** | **47.99%** | 39.13% | — | — | **+8.86 pp** |
| **mistral-medium** | **41.30%** | 30.94% | — | — | **+10.36 pp** |
| **mistral-small** | **34.45%** | 26.15% | **21.40%** | **19.73%** | **+8.30 pp** |

## 2. Tool Usage


### PIQA Results (Accuracy)

| Evaluation Subset | Full Pipeline | Pure LLM Baseline | Pure Logic | Delta (Full vs. LLM) |
| :--- | :---: | :---: | :---: | :---: |
| **Domain Filtered** (710 Q) | 91.69% | **94.37%** | 49.30% | -2.70 pp |
| **Unfiltered** (1,838 Q) | 82.37% | **88.37%** | 48.48% | -6.00 pp |


## 3. Meta-Reasoning


### BEHAVIOR-1K Results (Accuracy / F1-Score)

| Model | Approach | Accuracy | Precision | Recall | Specificity | F1-Score | Delta F1 (vs. LLM) |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **mistral-large** | **Full Pipeline** | **0.770** | 0.691 | 0.976 | 0.564 | **0.809** | **+0.292** |
| | Pure LLM | 0.667 | 0.943 | 0.356 | 0.978 | 0.517 | — |
| | Pure Logic | 0.625 | 0.572 | 0.992 | 0.257 | 0.725 | — |
| **mistral-medium** | **Full Pipeline** | **0.765** | 0.701 | 0.924 | 0.606 | **0.797** | **+0.238** |
| | Pure LLM | 0.681 | 0.905 | 0.405 | 0.958 | 0.559 | — |
| | Pure Logic | 0.625 | 0.572 | 0.992 | 0.257 | 0.725 | — |
| **mistral-small** | **Full Pipeline** | **0.768** | 0.695 | 0.955 | 0.581 | **0.804** | **+0.102** |
| | Pure LLM | 0.747 | 0.855 | 0.595 | 0.899 | 0.702 | — |
| | Pure Logic | 0.625 | 0.572 | 0.992 | 0.257 | 0.725 | — |



## 4. Procedural Knowledge


### RecipeNLG Results (Accuracy / F1-Score)

| Model | Full Pipeline | Pure LLM Baseline | Pure Logic | Delta F1 (vs. LLM) |
| :--- | :---: | :---: | :---: | :---: |
| **mistral-large** | **0.898** | 0.786 | 0.406 | **+0.112** |
| **mistral-medium** | **0.812** | 0.640 | 0.406 | **+0.172** |
| **mistral-small** | **0.846** | 0.798 | 0.406 | **+0.048** |



## OOD Performance Summary Dashboard

| Task | OOD Dataset | Best Full Pipeline | Best Pure LLM | Delta (Full vs. LLM) | Best Configuration |
| :--- | :--- | :---: | :---: | :---: | :--- |
| **Tidy Up** | VirtualHome | 92.54% (Acc) | **94.03%** (Acc) | -1.49 pp | mistral-medium + Pure LLM |
| **Tidy Up** | TidyBot | **47.99%** (Acc) | 39.13% (Acc) | **+8.86 pp** | mistral-large + Full Pipeline |
| **Tool Usage** | PIQA (Filtered) | 91.69% (Acc) | **94.37%** (Acc) | -2.68 pp | mistral-large + Pure LLM |
| **Meta-Reasoning**| BEHAVIOR-1K | **0.809** (F1) | 0.702 (F1) | **+0.107 pp** | mistral-large + Full Pipeline |
| **Procedural** | RecipeNLG | **0.898** (F1) | 0.798 (F1) | **+0.100 pp** | mistral-large + Full Pipeline |
