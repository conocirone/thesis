"""build_virtualhome_dataset.py — Convert VirtualHome placement data into evaluation CSVs.

Reads ``object_script_placing.json`` (per-object canonical placement destinations) and
``properties_data_unity.json`` (Unity engine property flags) from the VirtualHome
simulator and produces two output files:

  * ``virtualhome_multichoice.csv`` — 5-way multiple-choice rows
  * ``virtualhome_data.csv``        — open-generative rows with ranked placements

Object names and receptacle strings are normalised against the Unity property
dictionary; only GRABBABLE objects and CONTAINERS/SURFACES receptacles are retained.

Usage::

    python build_virtualhome_dataset.py
"""

import json
import csv
import random
import os
import sys
from pathlib import Path

# Paths
VIRTUALHOME_DIR = Path(__file__).parent
PLACING_JSON = VIRTUALHOME_DIR / "object_script_placing.json"
PROPERTIES_JSON = VIRTUALHOME_DIR / "properties_data_unity.json"
MULTICHOICE_CSV = VIRTUALHOME_DIR / "virtualhome_multichoice.csv"
DATA_CSV = VIRTUALHOME_DIR / "virtualhome_data.csv"



def build_dataset() -> None:
    """Build multichoice and open-generative evaluation datasets from VirtualHome data.

    Loads official Unity property flags to determine which objects are grabbable
    and which containers are valid receptacles.  Object and destination names are
    normalised (lowercased, underscores stripped, food-prefix removed) and matched
    against the Unity property dictionary via a manual synonym mapping layer.

    Only objects whose normalised name resolves to a GRABBABLE Unity class and whose
    destinations resolve to official CONTAINERS or SURFACES receptacles are kept.

    Generates:

    * A 5-way multiple-choice row per matched object.
    * An open-generative row mapping each object to all its valid storage destinations.

    Both outputs are written to CSV files in the same directory as this script.
    """
    if not PLACING_JSON.exists():
        print(f"ERROR: VirtualHome placing JSON file not found at {PLACING_JSON}")
        sys.exit(1)
    if not PROPERTIES_JSON.exists():
        print(f"ERROR: VirtualHome properties JSON file not found at {PROPERTIES_JSON}")
        sys.exit(1)
        
    print(f"Parsing official VirtualHome properties from: {PROPERTIES_JSON}")
    with open(PROPERTIES_JSON, "r", encoding="utf-8") as f:
        properties_data = json.load(f)
        
    print(f"Parsing official VirtualHome placement states from: {PLACING_JSON}")
    with open(PLACING_JSON, "r", encoding="utf-8") as f:
        placing_data = json.load(f)

    def normalize(name):
        name = name.lower().replace("_", "").replace(" ", "").strip()
        if name.startswith("food"):
            name = name[4:]
        if name.endswith("s") and not name.endswith("glass") and not name.endswith("tress"):
            name = name[:-1]
        return name

    # Manual mapping layer for synonyms or specific casing mismatches
    OBJECT_MAPPINGS = {
        "wine_glass": "wineglass",
        "deck_of_cards": "cards",
        "shoes": "slippers",
        "mop_bucket": "bucket",
        "laptop": "computer",
        "cutting_board": "cuttingboard",
        "crayon": "crayons",
        "spectacles": "glasses",
        "wooden_spoon": "spoon",
        "novel": "book",
        "diary": "journal",
        "face_soap": "barsoap",
        "cleaning_bottle": "lotionbottle",
        "hairdryer": "hairproduct",
        "alarm_clock": "clock",
    }

    RECEPTACLE_MAPPINGS = {
        "kitchen_counter": "kitchencounter",
        "kitchen_cabinet": "kitchencabinet",
        "coffee_table": "coffeetable",
        "cupboard": "cabinet",
        "dresser": "cabinet",
        "table": "diningtable",
        "desk": "desk",
        "bookshelf": "bookshelf",
        "closet": "closet",
        "sofa": "sofa",
        "couch": "sofa",
        "bed": "bed",
        "fridge": "fridge",
        "refrigerator": "fridge",
        "dishwasher": "dishwasher",
        "sink": "sink",
        "microwave": "microwave",
        "stove": "stove",
        "garbagecan": "garbagecan",
        "trash": "garbagecan",
        "nightstand": "nightstand",
        "towelrack": "towelrack",
        "bathroomcounter": "bathroomcounter",
        "bathroomcabinet": "bathroomcabinet",
    }

    # Extract dynamic grabbables and receptacles from official properties
    unity_normalized = {normalize(k): (k, v) for k, v in properties_data.items()}
    
    # 1. Receptacles: any Unity object with CONTAINERS or SURFACES, excluding non-storage furniture/transit surfaces
    unity_receptacles = set()
    EXCLUDE_RECEPTACLE_TYPES = {"bed", "sofa", "bench", "chair", "rug", "floor", "carpet", "table_cloth", "placemat", "couch"}
    for k, v in properties_data.items():
        if ("CONTAINERS" in v or "SURFACES" in v) and k not in EXCLUDE_RECEPTACLE_TYPES:
            unity_receptacles.add(k)
            
    # 2. Grabbables: any Unity object with GRABBABLE, excluding major stationary furniture
    unity_grabbables = set()
    EXCLUDE_GRABBABLE_FURNITURE = {
        "bed", "sofa", "bench", "towelrack", "bookshelf", "cabinet", "kitchencabinet", 
        "bathroomcabinet", "wallshelf", "standingmirror", "chair", "stall", "jacuzzi"
    }
    for k, v in properties_data.items():
        if "GRABBABLE" in v and "SITTABLE" not in v and k not in EXCLUDE_GRABBABLE_FURNITURE:
            unity_grabbables.add(k)

    print(f"Extracted {len(unity_grabbables)} official grabbable objects.")
    print(f"Extracted {len(unity_receptacles)} official receptacles.")

    # Process and align placements
    valid_objects = {}
    global_receptacles = set()

    for obj, destinations in placing_data.items():
        obj_clean = obj.lower().strip()
        
        # Resolve object name to official Unity class
        unity_name = None
        if obj_clean in OBJECT_MAPPINGS:
            unity_name = OBJECT_MAPPINGS[obj_clean]
        else:
            norm = normalize(obj_clean)
            if norm in unity_normalized:
                unity_name = unity_normalized[norm][0]
                
        # Only keep objects that are officially GRABBABLE in Unity
        if not unity_name or unity_name not in unity_grabbables:
            continue
            
        # Filter destinations to official receptacles
        allowed = []
        for dest_info in destinations:
            dest = dest_info.get("destination", "").lower().strip()
            if not dest:
                continue
                
            resolved_dest = None
            if dest in RECEPTACLE_MAPPINGS:
                resolved_dest = RECEPTACLE_MAPPINGS[dest]
            else:
                norm_dest = normalize(dest)
                if norm_dest in unity_normalized:
                    resolved_dest = unity_normalized[norm_dest][0]
                    
            # Only keep destinations that are officially receptacles in Unity
            if resolved_dest and resolved_dest in unity_receptacles:
                allowed.append(resolved_dest)
                global_receptacles.add(resolved_dest)
                
        allowed = sorted(list(set(allowed)))
        if allowed:
            valid_objects[obj_clean] = allowed
            
    global_receptacles_list = sorted(list(global_receptacles))
    print(f"Aligned and matched {len(valid_objects)} valid household objects.")
    print(f"Aligned and matched {len(global_receptacles_list)} official receptacles:")
    print(", ".join(global_receptacles_list))
    
    # Set random seed for reproducible padding
    random.seed(42)
    
    multichoice_rows = []
    open_data_rows = []
    
    # Process all matched objects deterministically without LLM queries
    selected_objects = sorted(list(valid_objects.keys()))
    print(f"Generating datasets for all {len(selected_objects)} matched grabbable objects...")
    
    for obj in selected_objects:
        allowed_destinations = valid_objects[obj]
        
        # Deterministically select the first allowed receptacle as the primary target for multichoice
        correct_rec = allowed_destinations[0]
        
        # Compile wrong locations: pick from global receptacles that are NOT allowed for this object
        wrong_candidates = [r for r in global_receptacles_list if r not in allowed_destinations]
        
        # Fallback if too few wrong candidates
        if len(wrong_candidates) < 4:
            wrong_candidates = [r for r in global_receptacles_list if r != correct_rec]
            
        # Sample 4 wrong locations using reproducible seed
        wrong_candidates = random.sample(wrong_candidates, min(4, len(wrong_candidates)))
        
        # Format names nicely for multichoice rows (e.g. replace underscores with spaces)
        obj_display = obj.replace("_", " ")
        correct_display = correct_rec.replace("_", " ")
        wrong_display = [w.replace("_", " ") for w in wrong_candidates]
        
        multichoice_rows.append({
            "Object": obj_display,
            "Correct_Location": correct_display,
            "Wrong_Locations": str(wrong_display)
        })
        
        # Map ALL allowed storage receptacles with 1.0 confidence in the open dataset
        loc_dict = {}
        for idx, dest in enumerate(allowed_destinations, 1):
            loc_dict[idx] = (dest.replace("_", " "), 1.0)
            
        open_data_rows.append({
            "Object": obj_display,
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
        
    print("VirtualHome dataset generation complete!")

if __name__ == "__main__":
    build_dataset()
