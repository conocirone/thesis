# Tool Usage — Results Summary


## Results by Model and Ablation (291 questions)

| Model | Approach | Accuracy | Correct / Total |
|---|---|---|---|
| **mistral-small** | **Full pipeline** | **0.8179** | **238 / 291** |
| mistral-small | Pure LLM | 0.3986 | 116 / 291 |
| mistral-small | Pure Logic | 0.2852 | 83 / 291 |
| **mistral-large** | **Full pipeline** | **0.8144** | **237 / 291** |
| mistral-large | Pure LLM | 0.5808 | 169 / 291 |
| mistral-medium | Full pipeline | 0.7354 | 214 / 291 |
| mistral-medium | Pure LLM | 0.5876 | 171 / 291 |

---

## Ablation Analysis

| Approach | mistral-large | mistral-medium | mistral-small |
|---|---|---|---|
| Full pipeline | **0.8144** | 0.7354 | **0.8179** |
| Pure LLM | 0.5808 | 0.5876 | 0.3986 |
| Pure Logic | — | — | 0.2852 |


## Neuro-Symbolic vs Pure LLM Delta

| Model | Full Pipeline | Pure LLM | Δ Accuracy |
|---|---|---|---|
| **mistral-small** | 0.8179 | 0.3986 | **+0.4193** |
| mistral-large | 0.8144 | 0.5808 | +0.2336 |
| mistral-medium | 0.7354 | 0.5876 | +0.1478 |

The symbolic layer's contribution is **largest for mistral-small** (+41.9 pp). The KB grounding is the primary driver of performance across all model sizes.

Interestingly, mistral-small (Full Pipeline) achieves the **highest overall accuracy** (81.79%), slightly above mistral-large (81.44%). This demonstrates that the KB grounding effectively equalizes model quality — a smaller model with strong symbolic grounding matches or exceeds a larger model.

---

## Comparison with Benchmark Paper Baselines

| Approach | Accuracy | Δ vs Best Baseline |
|---|---|---|
| GPT-4o (paper) | 0.564 | — |
| Llama-3.3-70B (paper) | 0.550 | — |
| gemma-2-27b-it (paper) | 0.543 | — |
| **Our Full Pipeline (mistral-small)** | **0.8179** | **+0.254** |
| Our Full Pipeline (mistral-large) | 0.8144 | +0.250 |
| Our Full Pipeline (mistral-medium) | 0.7354 | +0.171 |

All three model sizes beat all three paper baselines. Even mistral-medium (73.5%) exceeds GPT-4o (56.4%) by +17.1 pp.

---

## Summary

| Model | Best Accuracy | Configuration | Δ vs Pure LLM |
|---|---|---|---|
| **mistral-small** | **0.8179** | Full pipeline | +0.4193 |
| mistral-large | 0.8144 | Full pipeline | +0.2336 |
| mistral-medium | 0.7354 | Full pipeline | +0.1478 |
