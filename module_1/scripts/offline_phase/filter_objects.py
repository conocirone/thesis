"""
filter_objects.py - Semantic LLM Filter for Domestic Objects
=============================================================================
Reads tool_usage_properties from conceptnet_domestic_subgraph.json,
sends concepts in batches to an LLM, and keeps only:
  - Physical objects typically found in or around a home
  - Household pets

Output:
  conceptnet_objects_kept.json     - approved objects (with properties)
  conceptnet_objects_rejected.json - discarded objects (name list)
  filter_progress.json            - state for resume
=============================================================================
"""

import json
import re
import time
from concurrent.futures import ThreadPoolExecutor, TimeoutError
from pathlib import Path
import ollama

# -- Configuration ----------------------------------------------------------
INPUT_JSON    = "../../jsons/conceptnet_domestic_subgraph.json"
KEPT_JSON     = "../../jsons/conceptnet_objects_kept.json"
REJECTED_JSON = "../../jsons/conceptnet_objects_rejected.json"
PROGRESS_JSON = "../../jsons/filter_progress.json"

MODEL       = "llama3.1"
BATCH_SIZE  = 30
LLM_TIMEOUT = 90
MAX_RETRIES = 3

# -- System Prompt ----------------------------------------------------------
SYSTEM_PROMPT = """You are a filter for a domestic robot dataset. Your job is to decide if a concept can realistically be present inside or around a home.

KEEP an item if it belongs to ANY of these categories:
1. Furniture and fixtures: chair, table, bed, sofa, lamp, shelf, bookcase, wardrobe, cabinet, door, window, staircase, wall, ceiling, floor, roof, chimney, skylight, railing
2. Appliances and electronics: fridge, washing machine, oven, TV, computer, phone, camera, calculator, printer, thermostat, switch, speaker
3. Kitchenware and tableware: knife, fork, spoon, pot, pan, bowl, plate, cup, mug, glass, cutting board, trash can, trash container
4. Food and drinks: bread, wine, beer, milk, water, juice, tuna, turkey, pork, sugar, cereal, fruit, vegetable, cake, cheese, egg, meat, sauce, oil, spices
5. Cleaning and maintenance supplies: brush, mop, broom, vacuum, detergent, sponge, soap, bleach, drill, wrench, saw, hammer, screwdriver, ladder, pump, scale
6. Office and craft supplies: pencil, pen, stapler, staples, tape, scissors, calendar, notebook, file, folder, thumbtack, ruler, eraser, glue
7. Clothing and accessories: shirt, dress, socks, jeans, suit, belt, shoes, jacket, coat, hat, scarf, tie, skirt, underwear
8. Materials found in a home: wood, cotton, velvet, silk, nylon, steel, glass, plastic, ceramic, leather, wool, denim, paint, varnish
9. Structural elements: wall, ceiling, floor, stairs, railing, foundation, roof, chimney, plumbing, furnace, pillar, arch
10. Personal care items: shampoo, toothbrush, razor, comb, mirror, lotion, bandage, medicine, vanity case
11. Household pets and plants: cat, dog, rabbit, hamster, fish, parrot, cactus, ficus, flower, plant pot
12. Waste and storage: garbage, trash, dust, box, bag, container, jar, bottle, bin

DISCARD an item ONLY if it is one of these:
- A person or human role: person, student, chef, actor, doctor, neighbor, customer
- A purely abstract concept with no physical form: freedom, love, idea, time, connection, knowledge, opinion, memory, soul
- A non-domestic vehicle: airplane, car, motorcycle, truck, submarine, bus
- A non-domestic outdoor place: city, street, ocean, lake, island, park, highway, school, hospital, restaurant, shop
- A wild or farm animal not kept as a pet: bear, wolf, whale, dolphin, bee, ant, grasshopper, giraffe, cow, pig (unless it is food like pork/tuna)
- A non-physical media/entertainment concept: music (the concept), TV show, movie, advertising, opinion, story, poem
- A clearly dangerous/illegal item not normally at home: dynamite, bomb, hard drugs

When in doubt, KEEP the item. It is better to keep something borderline than to discard something that could be in a home.

Return ONLY a JSON object with one key:
{"keep": ["item1", "item2", ...]}
"""


# -- LLM call with timeout -------------------------------------------------
def _call_ollama(batch: list[str]) -> list[str]:
    """Send a batch to the LLM and return the list of kept items."""
    concept_list = "\n".join(f"- {c}" for c in batch)
    response = ollama.chat(
        model=MODEL,
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user",   "content": f"Filter this list:\n{concept_list}"},
        ]
    )
    raw = response["message"]["content"]
    match = re.search(r'\{.*?"keep"\s*:\s*\[.*?\]\s*\}', raw, re.DOTALL)
    if not match:
        return batch  # fallback: keep everything
    data = json.loads(match.group())
    return data.get("keep", batch)


def filter_batch(batch: list[str]) -> list[str]:
    """Filter a batch with timeout and retry logic."""
    for attempt in range(1, MAX_RETRIES + 1):
        try:
            with ThreadPoolExecutor(max_workers=1) as ex:
                return ex.submit(_call_ollama, batch).result(timeout=LLM_TIMEOUT)
        except TimeoutError:
            print(f"\n    [WARN] Timeout on attempt {attempt}/{MAX_RETRIES}", end=" ")
            if attempt < MAX_RETRIES:
                print("Retrying...", end=" ")
                time.sleep(2)
            else:
                print("Using fallback (keep all).")
                return batch
        except Exception as e:
            print(f"\n    [ERROR] {e}", end=" ")
            if attempt < MAX_RETRIES:
                time.sleep(2)
            else:
                return batch
    return batch


# -- Main -------------------------------------------------------------------
def main():
    print("\n" + "=" * 60)
    print("Domestic Object Filter -- LLM-Based Semantic Filtering")
    print(f"Model: {MODEL}  |  Batch size: {BATCH_SIZE}")
    print("=" * 60)

    with open(INPUT_JSON, encoding="utf-8") as f:
        data = json.load(f)
    tool_usage = data.get("tool_usage_properties", {})
    all_objects = sorted(tool_usage.keys())
    print(f"\nTotal objects from subgraph: {len(all_objects):,}")

    # Resume: load previous progress
    progress = {}
    if Path(PROGRESS_JSON).exists():
        with open(PROGRESS_JSON, encoding="utf-8") as f:
            progress = json.load(f)

    already_processed = set(progress.get("processed", []))
    already_kept      = set(progress.get("kept", []))
    remaining = [o for o in all_objects if o not in already_processed]

    if already_processed:
        print(f"  [Resume] Already processed: {len(already_processed):,}  |  Remaining: {len(remaining):,}")

    kept     = set(already_kept)
    rejected = set(already_processed) - already_kept
    total_batches = max(1, (len(remaining) + BATCH_SIZE - 1) // BATCH_SIZE)

    # Load existing rejected list
    existing_rejected = list(rejected)
    if Path(REJECTED_JSON).exists():
        with open(REJECTED_JSON, encoding="utf-8") as f:
            existing_rejected = json.load(f)

    print(f"\n  Filtering {len(remaining):,} objects in {total_batches} batches...\n")

    for i in range(0, len(remaining), BATCH_SIZE):
        batch     = remaining[i : i + BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        print(f"  Batch {batch_num:>3}/{total_batches} -- {len(batch)} objects...", end=" ", flush=True)

        approved      = filter_batch(batch)
        approved_set  = set(approved)
        batch_rejected = [o for o in batch if o not in approved_set]

        kept.update(approved_set)
        existing_rejected.extend(batch_rejected)

        # Save progress
        progress["processed"] = list(set(progress.get("processed", [])) | set(batch))
        progress["kept"]      = list(kept)
        with open(PROGRESS_JSON, "w", encoding="utf-8") as f:
            json.dump(progress, f, indent=2, ensure_ascii=False)

        # Save rejected
        with open(REJECTED_JSON, "w", encoding="utf-8") as f:
            json.dump(sorted(set(existing_rejected)), f, indent=2, ensure_ascii=False)

        print(f"kept {len(approved)}/{len(batch)}  (discarded: {len(batch_rejected)})")

    # Save the filtered dataset (only properties of approved objects)
    kept_data = {obj: tool_usage[obj] for obj in kept if obj in tool_usage}
    with open(KEPT_JSON, "w", encoding="utf-8") as f:
        json.dump(kept_data, f, indent=2, ensure_ascii=False)

    print(f"\n{'=' * 60}")
    print(f"SUMMARY:")
    print(f"  Total objects   : {len(all_objects):,}")
    print(f"  Objects kept    : {len(kept):,}")
    print(f"  Objects rejected: {len(all_objects) - len(kept):,}")
    print(f"\n  Output files:")
    print(f"    {KEPT_JSON} ({Path(KEPT_JSON).stat().st_size / 1e3:.0f} KB)")
    print(f"    {REJECTED_JSON} ({Path(REJECTED_JSON).stat().st_size / 1e3:.0f} KB)")


if __name__ == "__main__":
    main()
