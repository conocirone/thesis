"""
download_recipenlg.py — Download and prepare RecipeNLG Step Ordering dataset
=============================================================================
Constructs step-ordering pairs from the RecipeNLG dataset
(Bień et al., 2020 — https://recipenlg.cs.put.poznan.pl/).

Each recipe has ordered steps → consecutive pairs provide
ground-truth temporal ordering: step_n comes before step_{n+1}.

Outputs:
  ../../RecipeNLG/recipenlg_binary.json  — step pairs for binary evaluation
"""

import json
import random
import re
from pathlib import Path
from tqdm import tqdm
import pandas as pd

REPO_ROOT = Path(__file__).parent.parent.parent
DATASET_DIR = REPO_ROOT / "RecipeNLG"
OUT_DIR = DATASET_DIR

# Seed for reproducibility
random.seed(42)



def clean_step(step: str) -> str:
    """Cleans a recipe step by keeping only the first sentence and formatting it.

    Args:
        step: The raw recipe step text.

    Returns:
        The cleaned step sentence, or an empty string if the step was invalid.
    """
    step = step.strip()
    if not step:
        return ""

    # Take first sentence only (keeps steps concise and comparable)
    first_sentence = step.split(". ")[0].strip()

    # Remove leading step numbers like "1." or "Step 1:"
    first_sentence = re.sub(r"^(?:step\s*)?\d+[.):]\s*", "", first_sentence, flags=re.IGNORECASE)

    first_sentence = first_sentence.strip()
    if len(first_sentence) < 5:
        return ""

    # Capitalize first letter
    first_sentence = first_sentence[0].upper() + first_sentence[1:]

    # Ensure ends with period
    if not first_sentence.endswith("."):
        first_sentence += "."

    return first_sentence


def build_step_pairs(dataset, max_pairs_per_recipe: int = 3) -> list[dict]:
    """Builds step-ordering pairs from consecutive steps in RecipeNLG recipes.

    Each pair represents consecutive recipe steps: step_1 comes before step_2.

    Args:
        dataset: The raw RecipeNLG dataset.
        max_pairs_per_recipe: The maximum number of pairs to sample per recipe.
          Defaults to 3.

    Returns:
        A list of step pair dictionaries: [{"goal": title, "step_1": s1,
        "step_2": s2}, ...].
    """
    all_pairs = []
    skipped = 0

    for item in tqdm(dataset, desc="Building step pairs", mininterval=5.0):
        title = item.get("title", "").strip()
        if not title:
            skipped += 1
            continue

        # RecipeNLG stores steps as a list of strings
        raw_steps = item.get("directions", [])
        if not raw_steps or not isinstance(raw_steps, list):
            skipped += 1
            continue

        # Clean steps
        cleaned_steps = []
        for s in raw_steps:
            if isinstance(s, str):
                cleaned = clean_step(s)
                if cleaned:
                    cleaned_steps.append(cleaned)

        # Need at least 2 steps
        if len(cleaned_steps) < 2:
            skipped += 1
            continue

        # Build consecutive pairs
        pairs_for_recipe = []
        for i in range(len(cleaned_steps) - 1):
            # Skip pairs where steps are too similar (duplicate or near-duplicate)
            if cleaned_steps[i].lower() == cleaned_steps[i + 1].lower():
                continue

            pair = {
                "goal": title,
                "step_1": cleaned_steps[i],
                "step_2": cleaned_steps[i + 1],
            }
            pairs_for_recipe.append(pair)

        # Cap pairs per recipe to avoid overrepresentation
        if len(pairs_for_recipe) > max_pairs_per_recipe:
            pairs_for_recipe = random.sample(pairs_for_recipe, max_pairs_per_recipe)

        all_pairs.extend(pairs_for_recipe)

    print(f"  Built {len(all_pairs)} step pairs (skipped {skipped} recipes)")
    return all_pairs


def sample_balanced(pairs: list[dict], target_size: int = 500) -> list[dict]:
    """Samples a balanced subset of step pairs to ensure recipe diversity.

    Args:
        pairs: A list of step pair dictionaries.
        target_size: The target number of pairs to sample. Defaults to 500.

    Returns:
        A list of sampled step pair dictionaries.
    """
    # Group by title
    by_title = {}
    for p in pairs:
        title = p["goal"]
        if title not in by_title:
            by_title[title] = []
        by_title[title].append(p)

    # Take at most 2 pairs per recipe, then sample to target_size
    candidates = []
    for title, title_pairs in by_title.items():
        if len(title_pairs) > 2:
            title_pairs = random.sample(title_pairs, 2)
        candidates.extend(title_pairs)

    random.shuffle(candidates)

    if len(candidates) > target_size:
        candidates = random.sample(candidates, target_size)

    print(f"  Sampled {len(candidates)} pairs from {len(by_title)} unique recipes")
    return candidates


def main():
    """Builds and saves the RecipeNLG step-ordering evaluation datasets."""
    print("=" * 60)
    print("RecipeNLG Step Ordering Dataset Builder")
    print("=" * 60)

    dataset = pd.read_csv(f'{DATASET_DIR}/RecipeNLG_dataset.csv')

    # Build step pairs
    print(f"\nBuilding step-ordering pairs from {len(dataset)} recipes...")
    all_pairs = build_step_pairs(dataset)

    # Sample a manageable evaluation set
    # 500 pairs = 2000 binary questions (comparable to Robo-CSK)
    print(f"\nSampling evaluation subset...")
    eval_pairs = sample_balanced(all_pairs, target_size=500)

    # Save evaluation set
    out_path = OUT_DIR / "recipenlg_binary.json"
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(eval_pairs, f, indent=2, ensure_ascii=False)
    print(f"\n  Evaluation pairs: {len(eval_pairs)} → {out_path}")
    print(f"  Binary questions: {len(eval_pairs) * 4}")

    # Also save the full set (for potential larger experiments)
    out_full = OUT_DIR / "recipenlg_binary_full.json"
    with open(out_full, "w", encoding="utf-8") as f:
        json.dump(all_pairs, f, indent=2, ensure_ascii=False)
    print(f"  Full pairs: {len(all_pairs)} → {out_full}")

    # Print samples
    print(f"\n  Sample pairs:")
    for p in eval_pairs[:5]:
        print(f"    Goal: {p['goal']}")
        print(f"    Step 1: {p['step_1']}")
        print(f"    Step 2: {p['step_2']}")
        print()

    print("=" * 60)
    print("Done!")
    print("=" * 60)


if __name__ == "__main__":
    main()
