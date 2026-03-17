"""
inference.py - Unified HuggingFace Transformers inference for GPU (SLURM)
=========================================================================
Replaces both Ollama (chat-style) and MLX (text generation) backends with
a single module backed by `transformers` + `torch` on CUDA.

Two public functions mirror the old interfaces:

    chat(messages, role, temperature, json_mode)
        Replaces ollama.chat(). Applies the model's chat template and
        returns the assistant response text.

    generate(prompt, role, max_tokens, temperature, top_p)
        Replaces mlx_lm.generate(). Raw text-in / text-out generation.

Models are auto-downloaded from HuggingFace Hub on first use and cached
globally (keyed by model ID) so the same model is never loaded twice.
"""

import sys
import time
import torch
from pathlib import Path
from transformers import AutoModelForCausalLM, AutoTokenizer

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from shared.config import get_model

# ---------------------------------------------------------------------------
# Global model cache: {model_id: (model, tokenizer)}
# ---------------------------------------------------------------------------
_cache: dict[str, tuple] = {}


def _get_dtype() -> torch.dtype:
    if torch.cuda.is_available() and torch.cuda.is_bf16_supported():
        return torch.bfloat16
    return torch.float16


def _load(model_id: str):
    """Load (and cache) a HuggingFace model + tokenizer onto GPU."""
    if model_id in _cache:
        return _cache[model_id]

    print(f"[inference] Loading {model_id} ...")
    start = time.time()

    tokenizer = AutoTokenizer.from_pretrained(
        model_id,
        trust_remote_code=True,
    )
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    model = AutoModelForCausalLM.from_pretrained(
        model_id,
        torch_dtype=_get_dtype(),
        device_map="auto",
        trust_remote_code=True,
    )
    model.eval()

    elapsed = time.time() - start
    print(f"[inference] Loaded {model_id} in {elapsed:.1f}s "
          f"(dtype={model.dtype}, device={model.device})")

    _cache[model_id] = (model, tokenizer)
    return model, tokenizer


# ---------------------------------------------------------------------------
# Public API
# ---------------------------------------------------------------------------

def chat(
    messages: list[dict],
    role: str = "evaluation",
    temperature: float = 0.0,
    json_mode: bool = False,
) -> str:
    """Chat-style inference (replaces ``ollama.chat``).

    Parameters
    ----------
    messages : list[dict]
        OpenAI-style messages: [{"role": "system", "content": "..."}, ...]
    role : str
        Config role name (annotation / filtering / evaluation) used to
        resolve the model ID from config.json.
    temperature : float
        Sampling temperature.  0.0 = greedy.
    json_mode : bool
        If True, appends "Respond with valid JSON only." to the system
        message (mirrors Ollama's ``format='json'``).

    Returns
    -------
    str
        The assistant's response text.
    """
    model_id = get_model(role)
    model, tokenizer = _load(model_id)

    if json_mode:
        for msg in messages:
            if msg["role"] == "system":
                if "json" not in msg["content"].lower():
                    msg["content"] += "\nRespond with valid JSON only."
                break

    prompt = tokenizer.apply_chat_template(
        messages, tokenize=False, add_generation_prompt=True
    )
    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)

    gen_kwargs = dict(
        max_new_tokens=2048,
        do_sample=temperature > 0,
        pad_token_id=tokenizer.pad_token_id,
    )
    if temperature > 0:
        gen_kwargs["temperature"] = temperature

    with torch.no_grad():
        output_ids = model.generate(**inputs, **gen_kwargs)

    new_tokens = output_ids[0, inputs["input_ids"].shape[1]:]
    return tokenizer.decode(new_tokens, skip_special_tokens=True).strip()


def generate(
    prompt: str,
    role: str = "rule_induction",
    max_tokens: int = 2048,
    temperature: float = 0.7,
    top_p: float = 0.85,
) -> str:
    """Raw text generation (replaces ``mlx_lm.generate``).

    Parameters
    ----------
    prompt : str
        The full prompt string (already formatted by the caller).
    role : str
        Config role name used to resolve the model ID.
    max_tokens : int
        Maximum number of new tokens to generate.
    temperature : float
        Sampling temperature.
    top_p : float
        Nucleus sampling threshold.

    Returns
    -------
    str
        The generated continuation text.
    """
    model_id = get_model(role)
    model, tokenizer = _load(model_id)

    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)

    gen_kwargs = dict(
        max_new_tokens=max_tokens,
        do_sample=temperature > 0,
        pad_token_id=tokenizer.pad_token_id,
    )
    if temperature > 0:
        gen_kwargs["temperature"] = temperature
        gen_kwargs["top_p"] = top_p

    with torch.no_grad():
        output_ids = model.generate(**inputs, **gen_kwargs)

    new_tokens = output_ids[0, inputs["input_ids"].shape[1]:]
    return tokenizer.decode(new_tokens, skip_special_tokens=True).strip()
