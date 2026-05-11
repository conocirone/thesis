"""
download_data.py — Download PIQA validation set from HuggingFace
================================================================
Uses the validation split (which has labels) — the test split is blind.
"""

import os
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).parent.parent.parent
OUT_DIR = REPO_ROOT / "PIQA"
OUT_DIR.mkdir(parents=True, exist_ok=True)

def main():
    try:
        from datasets import load_dataset
    except ImportError:
        sys.exit("ERROR: `datasets` not installed. Run: pip install datasets")

    print("Downloading PIQA from HuggingFace (lighteval/piqa)...")
    ds = load_dataset("lighteval/piqa")

    # Validation split (has labels)
    val = ds["validation"]
    print(f"  Validation: {len(val)} questions")

    import pandas as pd
    df = pd.DataFrame({
        "goal": val["goal"],
        "sol1": val["sol1"],
        "sol2": val["sol2"],
        "label": val["label"],
    })

    out_path = OUT_DIR / "piqa_validation.csv"
    df.to_csv(out_path, index=False)
    print(f"  Saved to: {out_path}")

    # Quick summary
    print(f"\n  Label distribution: 0={sum(df['label']==0)}, 1={sum(df['label']==1)}")
    print(f"\n  Sample question:")
    row = df.iloc[0]
    print(f"    Goal: {row['goal']}")
    print(f"    Sol1: {row['sol1']}")
    print(f"    Sol2: {row['sol2']}")
    print(f"    Label: {row['label']} ({'sol1' if row['label']==0 else 'sol2'})")

    # Also save train set (no labels needed for eval, but useful for reference)
    train = ds["train"]
    print(f"\n  Train: {len(train)} questions (saving for reference)")
    df_train = pd.DataFrame({
        "goal": train["goal"],
        "sol1": train["sol1"],
        "sol2": train["sol2"],
        "label": train["label"],
    })
    df_train.to_csv(OUT_DIR / "piqa_train.csv", index=False)
    print(f"  Saved to: {OUT_DIR / 'piqa_train.csv'}")


if __name__ == "__main__":
    main()
