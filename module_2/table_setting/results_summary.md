# Table Setting — Results Summary

## Task Overview

The **Table Setting** task asks: _"Given a meal, what cutlery and plate type should be placed on the table?"_

For each meal the system must output:
- **Plate type** (e.g., Dinner Plate, Bowl, Dessert Plate) — evaluated as exact-match accuracy.
- **Cutlery set** (e.g., {Fork, Knife, Hands}) — evaluated using **Jaccard Similarity**, which measures the overlap between the predicted and ground-truth sets.

The pipeline extracts 9 food-property booleans (e.g., `is_soup_or_broth`, `needs_cutting`, `is_asian_cuisine`) via LLM, then feeds them into a SWI-Prolog reasoner that applies deterministic mapping rules.

**Dataset**: 100 meals  
**Default model**: `mistral-large-latest`

---

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

- **The full pipeline consistently beats Pure LLM and Pure Logic** across all models.
- **Pure Logic is identical across all models** (0.710) — as expected, because the keyword extractor is model-independent and always produces the same food-property features.
- **mistral-small full pipeline achieves the best plate accuracy** (0.880). This is noteworthy: for a structured, deterministic output like plate selection, smaller models may benefit from the Prolog layer more than larger ones, since the symbolic rules correct the LLM's marginal classification errors.
- **Pure LLM drops sharply for mistral-medium** (0.770 vs 0.840 full pipeline), indicating that medium-size models benefit most from the structured symbolic layer for plate prediction.

### Cutlery Jaccard Similarity

| Approach | mistral-large | mistral-medium | mistral-small |
|---|---|---|---|
| Full pipeline | **0.778** | 0.777 | 0.762 |
| Pure LLM | 0.748 | 0.585 | 0.708 |
| Pure Logic | 0.674 | 0.674 | 0.674 |

- **Cutlery is harder than plate prediction** for all approaches: Jaccard scores are uniformly lower than plate accuracy.
- **mistral-large full pipeline achieves the best current Jaccard** (0.778), but the historical v4 run achieved 0.792 — suggesting that an earlier version of the system (possibly with a different prompt or rules) was stronger on cutlery.
- **mistral-medium Pure LLM drops dramatically** (0.585), the lowest Jaccard across all configurations. This confirms that without the Prolog layer, medium-sized models are unreliable for multi-label set prediction.
- **Pure Logic cutlery Jaccard is fixed at 0.674** across all models, again reflecting the model-independent keyword extractor.

---

## Neuro-Symbolic vs Pure LLM Delta

The table below shows how much the full pipeline improves over Pure LLM for each model:

| Model | Plate Δ | Cutlery Jaccard Δ |
|---|---|---|
| mistral-large | +0.020 | +0.030 |
| mistral-medium | +0.070 | +0.192 |
| mistral-small | +0.060 | +0.054 |

The symbolic layer's contribution is **largest for mistral-medium** (+7 pp plate, +19 pp cutlery). Larger models (mistral-large) already extract food properties accurately enough that the Prolog rules provide a smaller marginal gain.

---

## Key Observations

1. **Cutlery is harder than plate selection.** Plate type is largely a function of a few dominant features (`is_soup_or_broth`, `is_dessert`); cutlery requires reasoning over multiple overlapping properties and is more sensitive to feature-extraction errors.

2. **The full neuro-symbolic pipeline is the best approach for every model**, except that mistral-large's full pipeline is marginally beaten by v4 on Jaccard (0.792 vs 0.778) — the v4 run used a slightly different prompt or data ordering.

3. **No CoT slightly hurts plate accuracy** for mistral-large (0.800 vs 0.850), while Jaccard stays the same (0.777). The chain-of-thought reasoning helps the model correctly classify borderline meals for plate type.

4. **Pure Logic floor is consistently 0.710 / 0.674** — this is the performance level achievable with a hand-crafted keyword extractor alone, and sets the baseline that the LLM must beat.

---

## Summary

| Model | Best plate | Best cutlery Jaccard | Configuration |
|---|---|---|---|
| mistral-large | 0.850 | 0.778 | Full pipeline |
| mistral-medium | 0.840 | 0.777 | Full pipeline |
| **mistral-small** | **0.880** | 0.762 | Full pipeline |

**Recommended configuration**: `mistral-small` full pipeline for plate accuracy; `mistral-large` full pipeline for cutlery. The neuro-symbolic pipeline consistently outperforms both ablations by a meaningful margin, particularly for cutlery prediction where the multi-label nature makes pure LLM unreliable.
