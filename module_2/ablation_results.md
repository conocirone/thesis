# Module 2 — Ablation Study Results

## Task 2: Procedural Knowledge

### Binary (Step Ordering)

| Configuration | Accuracy | Precision | Recall | F1 | TP | FP |
|---|---|---|---|---|---|---|
| **Full Pipeline** | **0.968** | **0.968** | **0.968** | **0.968** | 1502 | 50 |
| No CoT | 0.969 | 0.969 | 0.969 | 0.969 | 1504 | 48 |
| Pure LLM | 0.960 | 0.960 | 0.960 | 0.960 | 1490 | 62 |
| Pure Logic | 0.481 | 0.481 | 0.481 | 0.481 | 746 | 806 |

### Multi-Choice (Select Correct Preceding Step)

| Configuration | Accuracy | Correct / Total |
|---|---|---|
| **Full Pipeline** | **0.841** | 1345/1600 |
| No CoT | 0.854 | 1366/1600 |
| Pure LLM | 0.849 | 1359/1600 |
| Pure Logic | 0.665 | 1064/1600 |

---

## Task 3: Table Setting

| Configuration | Plate Accuracy | Cutlery Jaccard |
|---|---|---|
| **Full Pipeline** | **0.850** | **0.778** |
| No CoT | 0.800 | 0.777 |
| Pure LLM | 0.830 | 0.748 |
| Pure Logic | 0.710 | 0.674 |
