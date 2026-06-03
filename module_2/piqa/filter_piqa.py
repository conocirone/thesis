"""
filter_piqa.py -> filter the piqa validation set to include only the household related stuff.
"""

import pandas as pd
from pathlib import Path
from mistralai.client import Mistral
import os
import time

PIQA_PAT = Path(__file__).parent.parent.parent / "PIQA"
VALIDATION_SPLIT = PIQA_PAT / "piqa_validation.csv"
VALIDATION_SPLIT_FILTERED = PIQA_PAT / "piqa_validation_filtered.csv"
MODEL_ID = "mistral-small-latest"

api_key = os.environ.get("MISTRAL_API_KEY")

SYSTEM_PROMPT = (
    "You are a classifier. Your task is to decide whether a given goal belongs to the household domain. "
    "The household domain includes activities such as cooking, cleaning, organizing, tidying up, "
    "doing laundry, setting the table, using kitchen tools, and general home maintenance. "
    "Reply with exactly one word: yes if the goal is household-related, or no otherwise. "
    "Do not add any explanation."
)

if not api_key:
    raise EnvironmentError("MISTRAL_API_KEY environment variable is not set.")
client = Mistral(api_key=api_key)

def open_piqa() -> pd.DataFrame:
    """Loads the raw PIQA validation dataset from the CSV file.

    Returns:
        A pandas DataFrame containing the raw validation dataset.
    """
    return pd.read_csv(VALIDATION_SPLIT)


def filter_piqa(df: pd.DataFrame) -> pd.DataFrame:
    """Filters the PIQA dataset using the Mistral LLM to keep only household-related goals.

    Args:
        df: The input pandas DataFrame containing PIQA goal items.

    Returns:
        A filtered pandas DataFrame containing only the household-related items.
    """
    filtered_df = pd.DataFrame(columns=df.columns.to_list())
    index_new_df = 0
    for _, row in df.iterrows():
        prompt = f"Goal: {row['goal']}"
        for attempt in range(1000):
            try:
                response = client.chat.complete(
                    model=MODEL_ID,
                    messages=[
                        {"role": "system", "content": SYSTEM_PROMPT},
                        {"role": "user", "content": prompt}
                    ]
                )
                break
            except Exception as e:
                err = str(e).lower()
                if "429" in str(e) or "rate_limited" in err or "timeout" in err or "readtimeout" in err:
                    wait = min(2 ** attempt, 60)
                    print(f"Transient error ({type(e).__name__}), retrying in {wait}s...")
                    time.sleep(wait)
                else:
                    raise
        else:
            print(f"Skipping '{row['goal']}' after repeated errors.")
            continue
        time.sleep(0.5)  # small delay between requests
        choice = response.choices[0].message.content
        print(f"Choice for '{row['goal']}': {choice}")
        if choice.strip().lower() == 'yes':
            filtered_df.loc[index_new_df] = {'goal': row['goal'], 'sol1': row['sol1'], 'sol2': row['sol2'], 'label': row['label']}
            index_new_df += 1
    return filtered_df

if __name__ == "__main__":
    piqa_validation = open_piqa()
    #filtered_df = filter_piqa(piqa_validation)
    filtered_df = pd.DataFrame()
    filtered_df.to_csv(VALIDATION_SPLIT_FILTERED)
    