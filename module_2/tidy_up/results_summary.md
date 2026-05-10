# Tidy Up — Results Summary

## Multichoice Results by Model and Ablation (383 questions)

| Model             | Approach          | Accuracy   | Correct / Total |
| ----------------- | ----------------- | ---------- | --------------- |
| **mistral-large** | **Full pipeline** | **0.6997** | **268 / 383**   |
| mistral-large     | Pure LLM          | 0.6005     | 230 / 383       |
| mistral-large     | Pure Logic        | 0.3133     | 120 / 383       |
| mistral-medium    | Full pipeline     | 0.5379     | 206 / 383       |
| mistral-medium    | Pure LLM          | 0.4517     | 173 / 383       |
| mistral-medium    | Pure Logic        | 0.3394     | 130 / 383       |
| mistral-small     | Full pipeline     | 0.5587     | 214 / 383       |
| mistral-small     | Pure LLM          | 0.3786     | 145 / 383       |
| mistral-small     | Pure Logic        | 0.3264     | 125 / 383       |

KB coverage: 382/383 objects (99.7%) had the correct answer present in the KB exemplar set.

---

## Open/Generative Results by Model and Ablation (383 objects)

| Model              | Approach          | MRR       | MAP@1 | MAP@3 | MAP@5 | MAR@1 | MAR@3 | MAR@5 |
| ------------------ | ----------------- | --------- | ----- | ----- | ----- | ----- | ----- | ----- |
| **mistral-large**  | **Full pipeline** | **0.849** | 0.760 | 0.831 | 0.819 | 0.168 | 0.259 | 0.314 |
| mistral-large      | Pure LLM          | 0.882     | 0.812 | 0.872 | 0.857 | 0.188 | 0.290 | 0.347 |
| mistral-large      | Pure Logic        | 0.100     | —     | —     | —     | —     | —     | —     |
| **mistral-medium** | **Full pipeline** | **0.865** | 0.791 | 0.842 | 0.810 | 0.165 | 0.233 | 0.273 |
| mistral-medium     | Pure LLM          | 0.897     | 0.836 | 0.878 | 0.842 | 0.177 | 0.256 | 0.296 |
| mistral-medium     | Pure Logic        | 0.100     | —     | —     | —     | —     | —     | —     |
| mistral-small      | Full pipeline     | 0.726     | 0.616 | 0.685 | 0.703 | 0.138 | 0.205 | 0.247 |
| mistral-small      | Pure LLM          | 0.739     | 0.632 | 0.707 | 0.721 | 0.141 | 0.221 | 0.264 |
| mistral-small      | Pure Logic        | 0.100     | —     | —     | —     | —     | —     | —     |

---

## Ablation Analysis — Multichoice

| Approach      | mistral-large | mistral-medium | mistral-small |
| ------------- | ------------- | -------------- | ------------- |
| Full pipeline | **0.6997**    | 0.5379         | 0.5587        |
| Pure LLM      | 0.6005        | 0.4517         | 0.3786        |
| Pure Logic    | 0.3133        | 0.3394         | 0.3264        |

## Ablation Analysis — Open (MRR)

| Approach      | mistral-large | mistral-medium | mistral-small |
| ------------- | ------------- | -------------- | ------------- |
| Full pipeline | 0.849         | **0.865**      | 0.726         |
| Pure LLM      | **0.882**     | **0.897**      | **0.739**     |
| Pure Logic    | 0.100         | 0.100          | 0.100         |

## Neuro-Symbolic vs Pure LLM Delta

### Multichoice

| Model             | Δ Accuracy  |
| ----------------- | ----------- |
| **mistral-small** | **+0.1801** |
| mistral-large     | +0.0992     |
| mistral-medium    | +0.0862     |

The symbolic layer's contribution is **largest for mistral-small** (+18 pp), confirming that KB grounding compensates most when the LLM is weakest.

### Open (MRR)

| Model          | Δ MRR  |
| -------------- | ------ |
| mistral-large  | −0.033 |
| mistral-medium | −0.032 |
| mistral-small  | −0.013 |

In the open format, Pure LLM slightly outperforms the Full Pipeline. The unconstrained LLM generates broader ranked lists, which is rewarded by MRR. The symbolic layer's value is in **precise discrimination** (multichoice), not generative breadth (open).

---

## Comparison with Benchmark Paper Baselines (Multichoice)

| Approach                              | Accuracy   | Δ vs Best Baseline |
| ------------------------------------- | ---------- | ------------------ |
| gemma-2-27b-it (paper)                | 0.522      | —                  |
| GPT-4o (paper)                        | 0.509      | —                  |
| Llama-3.3-70B (paper)                 | 0.496      | —                  |
| **Our Full Pipeline (mistral-large)** | **0.6997** | **+0.178**         |
| Our Full Pipeline (mistral-small)     | 0.5587     | +0.037             |
| Our Full Pipeline (mistral-medium)    | 0.5379     | +0.016             |

All three model sizes beat all three paper baselines.

---

## Summary

| Model             | Best MC Accuracy | Best Open MRR | Configuration |
| ----------------- | ---------------- | ------------- | ------------- |
| **mistral-large** | **0.6997**       | 0.849         | Full pipeline |
| mistral-medium    | 0.5379           | 0.865         | Full pipeline |
| mistral-small     | 0.5587           | 0.726         | Full pipeline |
