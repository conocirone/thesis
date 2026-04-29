# Meta Reasoning — Results Summary

## Binary Results

| Approach | Accuracy | Precision | Recall | Specificity | F1 |
|---|---|---|---|---|---|
| **Full pipeline** | **0.973** | **1.000** | **0.945** | **1.000** | **0.972** |
| Pure LLM | 0.767 | 1.000 | 0.533 | 1.000 | 0.696 |
| **Pure Logic** | **0.996** | **1.000** | **0.993** | **1.000** | **0.996** |

Raw counts (Full pipeline): TP = 4525 | TN = 4788 | FP = 0 | FN = 263  
Raw counts (Pure Logic):     TP = 4754 | TN = 4788 | FP = 0 | FN = 34


## Multi-Choice Results

| Approach | Accuracy | Correct / Total |
|---|---|---|
| **Full pipeline** | **0.925** | 4427 / 4788 |
| Pure LLM | 0.913 | 4370 / 4788 |
| **Pure Logic** | **0.943** | 4516 / 4788 |


## Summary

| Approach | Binary F1 | Multi Accuracy | Notes |
|---|---|---|---|
| **Full pipeline** | 0.972 | 0.925 | Balanced; safe default |
| Pure LLM | 0.696 | 0.913 | High false-negative rate in binary |
| **Pure Logic** | **0.996** | **0.943** | Best overall;|
