# Meta Reasoning — Results Summary

## Binary Results — mistral-large-latest

| Approach | Accuracy | Precision | Recall | Specificity | F1 |
|---|---|---|---|---|---|
| **Full pipeline** | **0.973** | **1.000** | **0.945** | **1.000** | **0.972** |
| No CoT | 0.967 | 1.000 | 0.933 | 1.000 | 0.966 |
| Pure LLM | 0.767 | 1.000 | 0.533 | 1.000 | 0.696 |
| **Pure Logic** | **0.996** | **1.000** | **0.993** | **1.000** | **0.996** |

Raw counts (Full pipeline): TP = 4525 | TN = 4788 | FP = 0 | FN = 263  
Raw counts (No CoT):        TP = 4469 | TN = 4788 | FP = 0 | FN = 319  
Raw counts (Pure LLM):      TP = 2554 | TN = 4787 | FP = 1 | FN = 2234  
Raw counts (Pure Logic):    TP = 4754 | TN = 4788 | FP = 0 | FN = 34


## Multi-Choice Results — mistral-large-latest

| Approach | Accuracy | Correct / Total |
|---|---|---|
| **Full pipeline** | **0.925** | 4427 / 4788 |
| Pure LLM | 0.913 | 4370 / 4788 |
| **Pure Logic** | **0.943** | 4516 / 4788 |

*No CoT multi-choice results not available.*


## Binary Results — Model Comparison (Full Pipeline)

| Model | Accuracy | Precision | Recall | Specificity | F1 |
|---|---|---|---|---|---|
| **mistral-large-latest** | **0.973** | **1.000** | **0.945** | **1.000** | **0.972** |
| mistral-medium-latest | 0.971 | 1.000 | 0.942 | 1.000 | 0.970 |
| mistral-small-latest | 0.971 | 1.000 | 0.942 | 1.000 | 0.970 |

Raw counts (mistral-medium-latest): TP = 4511 | TN = 4787 | FP = 1 | FN = 277  
Raw counts (mistral-small-latest):  TP = 4510 | TN = 4788 | FP = 0 | FN = 278


## Binary Results — Model Comparison (Pure LLM)

| Model | Accuracy | Precision | Recall | Specificity | F1 |
|---|---|---|---|---|---|
| mistral-large-latest | 0.767 | 1.000 | 0.533 | 1.000 | 0.696 |
| mistral-medium-latest | 0.708 | 0.997 | 0.418 | 0.999 | 0.589 |
| mistral-small-latest | 0.795 | 0.990 | 0.596 | 0.994 | 0.744 |

Raw counts (mistral-medium-latest): TP = 2001 | TN = 4781 | FP = 7 | FN = 2787  
Raw counts (mistral-small-latest):  TP = 2854 | TN = 4759 | FP = 29 | FN = 1934


## Multi-Choice Results — Model Comparison (Full Pipeline)

| Model | Accuracy | Correct / Total |
|---|---|---|
| **mistral-large-latest** | 0.925 | 4427 / 4788 |
| mistral-medium-latest | 0.929 | 4447 / 4788 |
| **mistral-small-latest** | **0.933** | **4465 / 4788** |


## Multi-Choice Results — Model Comparison (Pure LLM)

| Model | Accuracy | Correct / Total |
|---|---|---|
| mistral-large-latest | 0.913 | 4370 / 4788 |
| **mistral-medium-latest** | **0.917** | **4390 / 4788** |
| mistral-small-latest | 0.892 | 4273 / 4788 |


## Summary

| Approach | Model | Binary F1 | Multi Accuracy | Notes |
|---|---|---|---|---|
| **Full pipeline** | mistral-large-latest | 0.972 | 0.925 | Balanced; safe default |
| **Full pipeline** | mistral-medium-latest | 0.970 | 0.929 | |
| **Full pipeline** | mistral-small-latest | 0.970 | 0.933 | |
| No CoT | mistral-large-latest | 0.966 | — | Binary only |
| Pure LLM | mistral-large-latest | 0.696 | 0.913 | High false-negative rate in binary |
| Pure LLM | mistral-medium-latest | 0.589 | 0.917 | Worst binary performance |
| Pure LLM | mistral-small-latest | 0.744 | 0.892 | |
| **Pure Logic** | — | **0.996** | **0.943** | Best overall |
