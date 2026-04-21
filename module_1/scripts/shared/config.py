"""
config.py - Centralized model configuration loader
====================================================
Reads model names from module_1/config.json and provides them to all scripts.

Usage (from any script in the pipeline):
    import sys
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
    from shared.config import get_model, get_provider

    model = get_model("annotation")   # for SOMA parsing
    model = get_model("filtering")    # for object filtering
    model = get_model("evaluation")   # for online-phase evaluation
    model = get_model("rule_induction")  # for LLM rule learning

    provider = get_provider("evaluation")  # returns "mistral" or "ollama"

Precedence: config.json value > built-in default.
If config.json is missing, built-in defaults are used silently.
"""

import json
from pathlib import Path

MODULE_DIR = Path(__file__).resolve().parent.parent.parent  # module_1/
CONFIG_PATH = MODULE_DIR / "config.json"

DEFAULTS = {
    "annotation": "llama3.1",
    "filtering": "llama3.1",
    "rule_induction": "mistral-medium-latest",
    "evaluation": "mistral-medium-latest",
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
    return config.get("models", {}).get(role, DEFAULTS.get(role, "llama3.1"))


def get_provider(role: str = None) -> str:
    """Return the inference provider ('mistral' or 'ollama') for a given role or model name.

    Detection is based on the model name:
      - Model names containing 'mistral' → 'mistral' provider (Mistral API)
      - All other names → 'ollama' provider (local Ollama server)
    """
    if "mistral" in DEFAULTS.get(role, " "):
        return "mistral"
    return "ollama"
