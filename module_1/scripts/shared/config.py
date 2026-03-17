"""
config.py - Centralized model configuration loader
====================================================
Reads model names from module_1/config.json and provides them to all scripts.

Usage (from any script in the pipeline):
    import sys
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
    from shared.config import get_model

    model = get_model("annotation")   # for SOMA parsing
    model = get_model("filtering")    # for object filtering
    model = get_model("evaluation")   # for online-phase evaluation
    model = get_model("rule_induction")  # for LLM rule learning

Precedence: config.json value > built-in default.
If config.json is missing, built-in defaults are used silently.
"""

import json
from pathlib import Path

MODULE_DIR = Path(__file__).resolve().parent.parent.parent  # module_1/
CONFIG_PATH = MODULE_DIR / "config.json"

DEFAULTS = {
    "annotation": "meta-llama/Llama-3.1-8B-Instruct",
    "filtering": "meta-llama/Llama-3.1-8B-Instruct",
    "rule_induction": "Qwen/Qwen2.5-Coder-7B-Instruct",
    "evaluation": "meta-llama/Llama-3.1-8B-Instruct",
}

_cache: dict | None = None


def _load() -> dict:
    global _cache
    if _cache is None:
        try:
            with open(CONFIG_PATH, encoding="utf-8") as f:
                _cache = json.load(f)
        except FileNotFoundError:
            _cache = {}
    return _cache


def get_model(role: str) -> str:
    """Return the model name for *role* (annotation / filtering / evaluation / rule_induction)."""
    config = _load()
    return config.get("models", {}).get(role, DEFAULTS.get(role, "meta-llama/Llama-3.1-8B-Instruct"))
