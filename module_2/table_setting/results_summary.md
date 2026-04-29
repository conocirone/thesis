# Table Setting — Results Summary


## Results by Model and Ablation

| Model | Approach | Plate Accuracy | Cutlery Jaccard |
|---|---|---|---|
| mistral-large | **Full pipeline** | **0.850** | **0.778** |
| mistral-large | Pure LLM | 0.830 | 0.748 |
| mistral-large | Pure Logic | 0.710 | 0.674 |
| mistral-medium | Full pipeline | 0.840 | 0.777 |
| mistral-medium | Pure LLM | 0.770 | 0.585 |
| mistral-medium | Pure Logic | 0.710 | 0.674 |
| **mistral-small** | **Full pipeline** | **0.880** | **0.762** |
| mistral-small | Pure LLM | 0.820 | 0.708 |
| mistral-small | Pure Logic | 0.710 | 0.674 |

---

## Ablation Analysis

### Plate Accuracy

| Approach | mistral-large | mistral-medium | mistral-small |
|---|---|---|---|
| Full pipeline | 0.850 | 0.840 | **0.880** |
| Pure LLM | 0.830 | 0.770 | 0.820 |
| Pure Logic | 0.710 | 0.710 | 0.710 |

### Cutlery Jaccard Similarity

| Approach | mistral-large | mistral-medium | mistral-small |
|---|---|---|---|
| Full pipeline | **0.778** | 0.777 | 0.762 |
| Pure LLM | 0.748 | 0.585 | 0.708 |
| Pure Logic | 0.674 | 0.674 | 0.674 |


## Neuro-Symbolic vs Pure LLM Delta

The table below shows how much the full pipeline improves over Pure LLM for each model:

| Model | Plate Δ | Cutlery Jaccard Δ |
|---|---|---|
| mistral-large | +0.020 | +0.030 |
| mistral-medium | +0.070 | +0.192 |
| mistral-small | +0.060 | +0.054 |

The symbolic layer's contribution is **largest for mistral-medium** (+7 pp plate, +19 pp cutlery). Larger models (mistral-large) already extract food properties accurately enough that the Prolog rules provide a smaller marginal gain.

---



## Summary

| Model | Best plate | Best cutlery Jaccard | Configuration |
|---|---|---|---|
| mistral-large | 0.850 | 0.778 | Full pipeline |
| mistral-medium | 0.840 | 0.777 | Full pipeline |
| **mistral-small** | **0.880** | 0.762 | Full pipeline |
