"""
llm_client.py - Unified LLM Client for Ollama and Mistral API
==============================================================================
Provides a single interface for calling LLMs regardless of the backend.
Configured via module_1/config.json:

  {
    "models": {
      "evaluation": "llama3.1:latest"
    },
    "providers": {
      "evaluation": "ollama"       // "ollama" or "mistral"
    }
  }

Usage:
    from shared.llm_client import create_client
    client = create_client("evaluation")
    response = client.chat(system="...", user="...", json_mode=True)
==============================================================================
"""

import json
import os
import re
import time
from abc import ABC, abstractmethod


class LLMClient(ABC):
    """Abstract base class for LLM clients."""

    def __init__(self, model: str):
        self.model = model

    @abstractmethod
    def chat(self, system: str, user: str, json_mode: bool = False,
             temperature: float = 0.0) -> str:
        """Send a chat completion request and return the response text."""
        ...


class OllamaClient(LLMClient):
    """Client wrapping the Ollama local API."""

    def __init__(self, model: str):
        super().__init__(model)
        import ollama as _ollama
        self._ollama = _ollama

    def chat(self, system: str, user: str, json_mode: bool = False,
             temperature: float = 0.0) -> str:
        kwargs = {
            "model": self.model,
            "messages": [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            "options": {"temperature": temperature},
        }
        if json_mode:
            kwargs["format"] = "json"

        response = self._ollama.chat(**kwargs)
        return response["message"]["content"]


class MistralClient(LLMClient):
    """Client wrapping the Mistral cloud API."""

    def __init__(self, model: str):
        super().__init__(model)
        api_key = os.environ.get("MISTRAL_API_KEY")
        if not api_key:
            raise EnvironmentError(
                "MISTRAL_API_KEY environment variable is required for the "
                "Mistral provider. Set it with: export MISTRAL_API_KEY=<key>"
            )
        from mistralai.client import Mistral
        self._client = Mistral(api_key=api_key)

    def chat(self, system: str, user: str, json_mode: bool = False,
             temperature: float = 0.0, max_retries: int = 5) -> str:
        messages = [
            {"role": "system", "content": system},
            {"role": "user", "content": user},
        ]
        kwargs = {
            "model": self.model,
            "messages": messages,
            "temperature": temperature,
        }
        if json_mode:
            kwargs["response_format"] = {"type": "json_object"}

        for attempt in range(max_retries):
            try:
                response = self._client.chat.complete(**kwargs)
                return response.choices[0].message.content.strip()
            except Exception as e:
                if "429" in str(e):
                    wait = 10 * (attempt + 1)
                    print(f"  [Rate limit] Waiting {wait}s...")
                    time.sleep(wait)
                else:
                    if attempt == max_retries - 1:
                        raise
                    time.sleep(2)

        return ""


# ---------------------------------------------------------------------------
# Factory
# ---------------------------------------------------------------------------

def create_client(role: str) -> LLMClient:
    """Create an LLM client for the given pipeline role.

    Reads 'models' and 'providers' from config.json. Falls back to Ollama
    when no provider is specified.
    """
    # Import here to avoid circular dependency
    from shared.config import get_model, get_provider

    model = get_model(role)
    provider = get_provider(role)

    if provider == "mistral":
        return MistralClient(model)
    else:
        return OllamaClient(model)

