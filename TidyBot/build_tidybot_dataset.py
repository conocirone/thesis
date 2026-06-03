"""build_tidybot_dataset.py — Convert TidyBot scenarios into evaluation CSVs.

Reads ``scenarios.yml`` from the TidyBot benchmark (Wu et al., 2023) and
produces two output files:
  * ``tidybot_multichoice.csv``  — 5-way multiple-choice rows (1 correct + 4 distractors)
  * ``tidybot_data.csv``         — open-generative rows listing all valid placements

Usage::

    python build_tidybot_dataset.py
"""

import yaml
import csv
import random
from pathlib import Path

# Paths
TIDYBOT_DIR = Path(__file__).parent
SCENARIOS_YML = TIDYBOT_DIR / "scenarios.yml"
MULTICHOICE_CSV = TIDYBOT_DIR / "tidybot_multichoice.csv"
DATA_CSV = TIDYBOT_DIR / "tidybot_data.csv"

def build_dataset() -> None:
    """Build multichoice and open-generative evaluation datasets from TidyBot scenarios.

    Reads ``scenarios.yml``, collects a global receptacle vocabulary, then for each
    scenario iterates over ``unseen_placements`` (object → correct receptacle pairs).
    Generates:

    * A 5-way multiple-choice row per unique object (1 correct + 4 padded distractors
      sampled from the global vocabulary).
    * An open-generative row listing all valid target receptacles per object across
      all scenarios.

    Both outputs are written to CSV files in the same directory as this script.
    """
    print(f"Loading TidyBot scenarios from: {SCENARIOS_YML}")
    with open(SCENARIOS_YML, "r", encoding="utf-8") as f:
        scenarios = yaml.safe_load(f)
        
    print(f"Loaded {len(scenarios)} scenarios.")
    
    # 1. Collect all unique receptacles to serve as a padding vocabulary
    global_receptacles = set()
    for scenario in scenarios:
        receptacles = scenario.get("receptacles", [])
        for r in receptacles:
            if r:
                global_receptacles.add(r.strip().lower())
                
    global_receptacles_list = sorted(list(global_receptacles))
    print(f"Global Receptacle Vocabulary ({len(global_receptacles_list)} items):")
    print(", ".join(global_receptacles_list))
    
    # Set random seed for reproducible padding
    random.seed(42)
    
    multichoice_rows = []
    open_data_rows = []
    
    # Map to track objects seen so far to prevent duplicates in multichoice/open,
    # or to merge their locations if an object appears in multiple scenarios.
    seen_multichoice_objects = set()
    open_object_locations = {}  # {object: set(locations)}
    
    for idx, scenario in enumerate(scenarios):
        unseen_placements = scenario.get("unseen_placements", [])
        scenario_receptacles = [r.strip().lower() for r in scenario.get("receptacles", []) if r]
        
        # Check if there are unseen placements
        if not unseen_placements:
            continue
            
        for obj, receptacle in unseen_placements:
            obj_clean = obj.strip()
            loc_clean = receptacle.strip().lower()
            
            # --- 1. Compile Multichoice Row ---
            # To avoid duplicates in multiple-choice evaluation, only keep the first occurrence of an object.
            # TidyBot has different personalized preferences per scenario, but for general evaluation,
            # we want a unique object list similar to Robo-CSK.
            if obj_clean.lower() not in seen_multichoice_objects:
                seen_multichoice_objects.add(obj_clean.lower())
                
                # Receptacles in the same scenario except the correct one
                wrong_candidates = [r for r in scenario_receptacles if r != loc_clean]
                
                # Deduplicate wrong candidates
                wrong_candidates = list(dict.fromkeys(wrong_candidates))
                
                # Pad to exactly 4 wrong locations using the global vocabulary
                attempts = 0
                while len(wrong_candidates) < 4 and attempts < 100:
                    padding_loc = random.choice(global_receptacles_list)
                    if padding_loc != loc_clean and padding_loc not in wrong_candidates:
                        wrong_candidates.append(padding_loc)
                    attempts += 1
                
                # Truncate if we somehow got more than 4
                wrong_candidates = wrong_candidates[:4]
                
                multichoice_rows.append({
                    "Object": obj_clean,
                    "Correct_Location": loc_clean,
                    "Wrong_Locations": str(wrong_candidates)
                })
            
            # --- 2. Compile Open Generative Data ---
            # For open evaluation, track all target locations an object is seen in
            open_object_locations.setdefault(obj_clean, set()).add(loc_clean)

    # Convert open object locations to ranked dictionaries
    for obj, locs in sorted(open_object_locations.items(), key=lambda x: x[0]):
        # Format: {1: ('location', 1.0), 2: ...}
        loc_dict = {}
        for rank, loc in enumerate(sorted(list(locs)), 1):
            loc_dict[rank] = (loc, 1.0)
        open_data_rows.append({
            "Object": obj,
            "Locations": str(loc_dict)
        })

    # Write Multichoice CSV
    print(f"Writing {len(multichoice_rows)} rows to: {MULTICHOICE_CSV}")
    with open(MULTICHOICE_CSV, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["Object", "Correct_Location", "Wrong_Locations"])
        writer.writeheader()
        writer.writerows(multichoice_rows)
        
    # Write Open Generative CSV
    print(f"Writing {len(open_data_rows)} rows to: {DATA_CSV}")
    with open(DATA_CSV, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["Object", "Locations"])
        writer.writeheader()
        writer.writerows(open_data_rows)
        
    print("Dataset generation complete!")

if __name__ == "__main__":
    build_dataset()
