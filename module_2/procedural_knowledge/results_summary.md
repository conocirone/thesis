# Procedural Knowledge — Results Summary


## Binary Results — Step Ordering (Is A before B?)

| Model | Approach | Accuracy | Precision | Recall | F1 | TP | FP |
|---|---|---|---|---|---|---|---|
| mistral-large | **Full pipeline** | **0.968** | **0.968** | **0.968** | **0.968** | 1502 | 50 |
| mistral-large | Pure LLM | 0.960 | 0.960 | 0.960 | 0.960 | 1490 | 62 |
| mistral-large | Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |
| mistral-medium | Full pipeline | 0.950 | 0.950 | 0.950 | 0.950 | 1474 | 78 |
| mistral-medium | Pure LLM | 0.927 | 0.927 | 0.927 | 0.927 | 1438 | 114 |
| mistral-medium | Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |
| mistral-small | Full pipeline | 0.964 | 0.964 | 0.964 | 0.964 | 1496 | 56 |
| mistral-small | Pure LLM | **0.983** | **0.983** | **0.983** | **0.983** | 1526 | 26 |
| mistral-small | Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |


## Multi-Choice Results — Select the Correct Successor Step

| Model | Approach | Accuracy | Correct / Total |
|---|---|---|---|
| mistral-large | **Full pipeline** | **0.841** | 1345 / 1600 |
| mistral-large | No CoT | 0.854 | 1366 / 1600 |
| mistral-large | Pure LLM | 0.849 | 1359 / 1600 |
| mistral-large | Pure Logic | 0.665 | 1064 / 1600 |
| mistral-medium | Full pipeline | 0.856 | 1369 / 1600 |
| mistral-medium | Pure LLM | **0.863** | **1380 / 1600** |
| mistral-medium | Pure Logic | 0.668 | 1069 / 1600 |
| mistral-small | Full pipeline | 0.798 | 1277 / 1600 |
| mistral-small | Pure LLM | 0.801 | 1282 / 1600 |
| mistral-small | Pure Logic | 0.647 | 1036 / 1600 |


## Cross-Format Comparison

| Format | Best approach | Best accuracy | Worst approach | Worst accuracy |
|---|---|---|---|---|
| Binary | mistral-small Pure LLM | 0.983 | Pure Logic (any) | 0.481 |
| Multi-choice | mistral-medium Pure LLM | 0.863 | mistral-small Pure Logic | 0.647 |



## Summary

| Model | Binary (full) | Binary (best ablation) | Multi (full) | Multi (best ablation) |
|---|---|---|---|---|
| mistral-large | 0.968 | 0.969 (no_cot) | 0.841 | 0.854 (no_cot) |
| mistral-medium | 0.950 | 0.927 (pure_llm ↓) | 0.856 | 0.863 (pure_llm) |
| mistral-small | 0.964 | **0.983** (pure_llm) | 0.798 | 0.801 (pure_llm) |

