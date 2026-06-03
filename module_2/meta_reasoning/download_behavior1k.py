"""
download_behavior1k.py — Programmatically download and prepare BEHAVIOR-1K task descriptions
========================================================================================
Programmatically fetches the full 1,000+ daily household activities catalog from
the official Stanford OmniGibson GitHub repository (Li et al., CoRL 2024).

These tasks are completely OOD relative to Robo-CSK, making them an excellent
generalization benchmark. By downloading directly from the source, we avoid
hardcoded datasets and preserve the full, unfiltered task list for verification.

Output:
  ../../BEHAVIOR-1K/behavior1k_tasks.json
"""

import json
import urllib.request
from pathlib import Path

REPO_ROOT = Path(__file__).parent.parent.parent
OUT_DIR = REPO_ROOT / "BEHAVIOR-1K"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def classify_category(task: str) -> str:
    """Heuristically maps a task description to one of the 10 BEHAVIOR-1K categories.

    Args:
        task: Natural language task description.

    Returns:
        The matched category string (e.g. 'cooking', 'laundry').
    """
    task_lower = task.lower()
    
    # 1. Cooking
    cooking_kws = {'cook', 'bake', 'slice', 'chop', 'peel', 'dice', 'whisk', 'grate', 'knead', 'boil', 'fry', 'sauté', 'roast', 'blend', 'stir', 'mix', 'squeeze', 'grind', 'juice', 'prepare', 'food', 'drink', 'beverage', 'snack', 'soup', 'salad', 'recipe', 'ingredient', 'pasta', 'cheese', 'bread', 'meat', 'chicken', 'vegetable', 'fruit', 'sauce', 'cookie', 'cake', 'egg', 'tea', 'coffee', 'meal'}
    if any(kw in task_lower for kw in cooking_kws):
        return "cooking"
        
    # 2. Laundry
    laundry_kws = {'laundry', 'wash_clothes', 'dry_clothes', 'fold_clothes', 'iron', 'lint', 'dryer', 'washing_machine', 'fabric', 'stain', 'shirt', 'dress', 'pants', 'towel', 'sheet', 'sock', 'clothing', 'garment', 'suit', 'hanger'}
    if any(kw in task_lower for kw in laundry_kws):
        return "laundry"
        
    # 3. Pet Care
    pet_kws = {'dog', 'cat', 'pet', 'animal', 'fish', 'bird', 'hamster', 'rabbit', 'leash', 'litter', 'aquarium', 'cage', 'hutch', 'vet'}
    if any(kw in task_lower for kw in pet_kws):
        return "pet_care"
        
    # 4. Cleaning
    cleaning_kws = {'clean', 'wash', 'mop', 'vacuum', 'dust', 'sweep', 'scrub', 'sanitize', 'wipe', 'polish', 'decontaminate', 'disinfect', 'remove_dust', 'remove_cobweb', 'towel_dry', 'rinse', 'trash', 'garbage', 'debris', 'sink', 'toilet', 'shower', 'tub', 'oven', 'stove', 'window', 'mirror', 'floor', 'carpet', 'counter', 'countertop', 'surface'}
    if any(kw in task_lower for kw in cleaning_kws):
        return "cleaning"
        
    # 5. Outdoor
    outdoor_kws = {'garden', 'lawn', 'yard', 'plant', 'flower', 'seedling', 'mulch', 'prune', 'branch', 'shrub', 'hedge', 'outdoor', 'patio', 'deck', 'porch', 'garage', 'driveway', 'snow', 'rake', 'mow', 'shovel', 'hose', 'sprinkler', 'gutters', 'weed'}
    if any(kw in task_lower for kw in outdoor_kws):
        return "outdoor"
        
    # 6. Maintenance
    maintenance_kws = {'tighten', 'screw', 'hammer', 'nail', 'drill', 'unclog', 'plunge', 'fix', 'repair', 'replace', 'install', 'seal', 'paint', 'adjust', 'reset', 'sharpen', 'lubricate', 'glue', 'caulk', 'sand', 'mount', 'outlet', 'bulb', 'hinge', 'knob', 'faucet', 'breaker', 'thermostat', 'leak', 'drain', 'tool', 'battery', 'batteries'}
    if any(kw in task_lower for kw in maintenance_kws):
        return "maintenance"
        
    # 7. Personal Care
    personal_kws = {'brush_teeth', 'comb_hair', 'makeup', 'bandage', 'wristwatch', 'shoelaces', 'hiking_boots', 'sunscreen', 'apron', 'gloves', 'helmet', 'teeth', 'hair', 'nails', 'dress_shirt', 'jacket', 'coat', 'wear', 'belt', 'buckle', 'goggles'}
    if any(kw in task_lower for kw in personal_kws):
        return "personal_care"
        
    # 8. Entertainment
    ent_kws = {'party', 'guest', 'wine', 'beer', 'drink', 'pour', 'glass', 'game', 'board_game', 'toy', 'gift', 'present', 'balloon', 'streamer', 'celebrate', 'decoration', 'table_setting', 'plate', 'cushion', 'sofa', 'tv', 'speaker', 'music'}
    if any(kw in task_lower for kw in ent_kws):
        return "entertainment"
        
    # 9. Safety
    safety_kws = {'lock', 'secure', 'extinguisher', 'safety', 'warning', 'chemical', 'hazard', 'fire', 'emergency', 'latch', 'gate', 'guard', 'breaker', 'unplug'}
    if any(kw in task_lower for kw in safety_kws):
        return "safety"
        
    # 10. Organization
    org_kws = {'organize', 'sort', 'arrange', 'stack', 'put_away', 'store', 'file', 'label', 'shelf', 'shelves', 'drawer', 'cabinet', 'cupboard', 'bin', 'box', 'rack', 'container', 'closet', 'pantry', 'book', 'mail', 'document', 'jar', 'groceries'}
    if any(kw in task_lower for kw in org_kws):
        return "organization"
        
    return "cleaning"  


def main() -> None:
    """Connects to OmniGibson repository on GitHub to fetch tasks list."""
    print("=" * 60)
    print("BEHAVIOR-1K Task Descriptions Builder")
    print("=" * 60)
    print("Connecting to Stanford's official OmniGibson repository...")

    url = "https://api.github.com/repos/StanfordVL/omnigibson/git/trees/main?recursive=1"
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    
    try:
        with urllib.request.urlopen(req) as response:
            data = json.loads(response.read().decode())
        
        paths = [x['path'] for x in data['tree'] if x['path'].endswith('.bddl')]
        raw_activities = sorted(list(set([p.split('/')[-2] for p in paths if 'activity_definitions' in p])))
        
        raw_activities = [a for a in raw_activities if a != 'activity_definitions']
        print(f"Downloaded {len(raw_activities)} activities from Stanford repository.")

    except Exception as e:
        print(f"Error accessing Stanford repository: {e}")
        print("Falling back to local cache if available...")
        cached_path = OUT_DIR / "behavior1k_tasks.json"
        if cached_path.exists():
            with open(cached_path, "r", encoding="utf-8") as f:
                cached = json.load(f)
            print(f"Loaded {len(cached)} tasks from cached behavior1k_tasks.json.")
            return
        else:
            raise RuntimeError("Cannot load activities catalog (no internet and no local cache found).")

    tasks = []
    for ra in raw_activities:
        clean_task = ra.replace('_', ' ').strip()
        category = classify_category(clean_task)
        tasks.append({
            "task": clean_task,
            "category": category
        })

    categories = {}
    for t in tasks:
        cat = t["category"]
        categories[cat] = categories.get(cat, 0) + 1

    print("\nCategory distribution:")
    for cat, count in sorted(categories.items(), key=lambda x: -x[1]):
         print(f"  {cat}: {count}")

    out_path = OUT_DIR / "behavior1k_tasks.json"
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(tasks, f, indent=2, ensure_ascii=False)
    print(f"\nSaved {len(tasks)} tasks to: {out_path}")

    print("\nSample tasks (first 5):")
    for t in tasks[:5]:
        print(f"  [{t['category']}] {t['task']}")


if __name__ == "__main__":
    main()
