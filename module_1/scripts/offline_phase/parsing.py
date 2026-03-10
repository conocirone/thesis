import json
import ollama

# ------------------------------------------------------------------------------
# 1. CONFIGURATION AND CODEBOOK
# ------------------------------------------------------------------------------
INPUT_JSON = "../../jsons/conceptnet_objects_kept.json"
OUTPUT_PROLOG = "../../rules/background_knowledge.las"
MODEL = "llama3.1:latest"
CODEBOOK = {
    "Qualities": [
        "RequiresCooling", "RequiresFreezing", "Perishable", "Heated", "Liquid",
        "Granular", "Gas_Aerosol", "Heavy", "Lightweight", "Fragile",
        "Rigid", "Soft_Deformable", "Sharp", "Electronic", "Toxic_Hazardous",
        "Flammable", "Washable"
    ],
    "Roles": [
        "ConsumableRole", "UtensilRole", "CookwareRole", "ToolRole",
        "CleaningToolRole", "ApplianceRole", "StorageContainerRole", "FurnitureRole",
        "BeddingRole", "LightingRole", "ClothingRole", "EntertainmentRole",
        "MusicalInstrumentRole", "DecorationRole", "DocumentRole",
        "WasteRole", "SafetyEquipmentRole"
    ],
    "Tasks": [
        "FoodPreparationTask", "EatingDrinkingTask", "MaintenanceTask", "CleaningTask",
        "WasteDisposalTask", "HygieneTask", "DressingTask", "StorageTask",
        "SleepingTask", "WorkStudyTask", "LeisureTask", "GardeningTask"
    ]
}

# ------------------------------------------------------------------------------
# 2. SYSTEM PROMPT
# ------------------------------------------------------------------------------
system_prompt = f"""You are a semantic annotator for a domestic robot knowledge base.
Given an object and its ConceptNet associations, assign SOMA ontology labels.
Use YOUR OWN KNOWLEDGE as primary truth. ConceptNet data are noisy — ignore them if wrong.

Return a JSON with EXACTLY three keys. Use ONLY values from these lists:

"hasPhysicalQuality" — pick from:
  RequiresCooling (dairy, fresh meat — needs fridge)
  RequiresFreezing (ice cream, frozen food — needs freezer)
  Perishable (any food, drink, medicine — expires)
  Heated (stove, oven, iron — object PRODUCES heat. NOT fridge, NOT air conditioning)
  Liquid (water, oil, shampoo — object IS a liquid at room temperature. NOT bottles, NOT faucets)
  Granular (salt, sugar, rice, flour — object IS powder/grains. NOT cookies, NOT fruit)
  Gas_Aerosol (spray, deodorant — gaseous)
  Heavy (furniture, appliances >5kg)
  Lightweight (pen, phone, spoon <1kg)
  Fragile (glass, ceramics, electronics — breaks easily)
  Rigid (metal, wood, plastic — does not bend)
  Soft_Deformable (fabric, pillow, sponge — bends/squishes)
  Sharp (knife, blade, needle — can cut. NOT fork, NOT spatula)
  Electronic (has battery or plug)
  Toxic_Hazardous (bleach, pesticide, paint — dangerous to ingest/touch)
  Flammable (paper, gas, alcohol — catches fire)
  Washable (clothing, towel — can be machine/hand washed)

"hasRole" — pick from:
  ConsumableRole (food, drink, medicine — gets consumed. NEVER containers or tools)
  UtensilRole (fork, knife, spatula, plate, cup — ONLY kitchen/table items for eating or food prep)
  CookwareRole (pot, pan, baking tray — for cooking ON heat)
  ToolRole (hammer, drill, screwdriver, brush, scissors — general-purpose tools and instruments)
  CleaningToolRole (broom, mop, sponge, detergent — for cleaning the house)
  ApplianceRole (fridge, washing machine, TV — powered household device)
  StorageContainerRole (box, jar, shelf, closet — holds other things)
  FurnitureRole (chair, table, sofa, bed — large, inhabits a room)
  BeddingRole (blanket, pillow, sheet — for sleeping)
  LightingRole (lamp, bulb, candle — produces light)
  ClothingRole (shirt, pants, shoes, hat — worn on the body)
  EntertainmentRole (toy, teddy bear, board game, stuffed animal, puzzle — for play/fun)
  MusicalInstrumentRole (guitar, piano, drum)
  DecorationRole (painting, vase, statue, ornament — aesthetic)
  DocumentRole (book, notebook, letter, newspaper — readable)
  WasteRole (trash, garbage, refuse — to be disposed)
  SafetyEquipmentRole (fire extinguisher, bandaid, first aid kit, smoke detector)

"affordsTask" — pick from:
  FoodPreparationTask (knife, pan, blender — DIRECTLY cuts/cooks/mixes food. NOT hammer, NOT cleaning tools)
  EatingDrinkingTask (food, drink, plate, fork — consumed or used AT the table during a meal)
  MaintenanceTask (hammer, drill, paint, ladder — fix/build/repair things)
  CleaningTask (broom, mop, detergent — clean the house. NOT personal hygiene)
  WasteDisposalTask (trash can, garbage bag — dispose of waste)
  HygieneTask (toothbrush, soap, shampoo, bandaid — personal body care)
  DressingTask (shirt, pants, shoes — getting dressed)
  StorageTask (shelf, box, closet — storing objects)
  SleepingTask (bed, blanket, pillow — sleeping)
  WorkStudyTask (desk, pen, computer — work or study activities)
  LeisureTask (TV, toy, book, game — fun and relaxation)
  GardeningTask (shovel, hose, fertilizer — garden work)

COMMON MISTAKES TO AVOID:
- Fridge/freezer/air conditioner → NOT Heated! They COOL things. Use RequiresCooling or just Electronic+Heavy.
- Chocolate/butter/fruit → NOT Liquid! They are solid at room temperature.
- Cookies/fruit → NOT Granular! They are solid pieces.
- Teddy bear/stuffed animal → EntertainmentRole, NOT FurnitureRole.
- Bandaid/plaster → SafetyEquipmentRole + HygieneTask, NOT Liquid or ConsumableRole.
- Hammer/vice → MaintenanceTask, NOT FoodPreparationTask.
- Umbrella/hairbrush → ToolRole, NOT UtensilRole.
- Egg shells → WasteRole, NOT ConsumableRole.

EXAMPLES:
knife:         {{"hasPhysicalQuality":["Sharp","Rigid"],               "hasRole":["UtensilRole"],            "affordsTask":["FoodPreparationTask"]}}
shampoo:       {{"hasPhysicalQuality":["Liquid"],                      "hasRole":["CleaningToolRole"],       "affordsTask":["HygieneTask"]}}
fridge:        {{"hasPhysicalQuality":["Electronic","Heavy"],          "hasRole":["ApplianceRole"],          "affordsTask":["StorageTask"]}}
teddy bear:    {{"hasPhysicalQuality":["Soft_Deformable","Lightweight"],"hasRole":["EntertainmentRole"],     "affordsTask":["LeisureTask"]}}
bandaid:       {{"hasPhysicalQuality":["Lightweight"],                 "hasRole":["SafetyEquipmentRole"],    "affordsTask":["HygieneTask"]}}
chocolate:     {{"hasPhysicalQuality":["Perishable"],                  "hasRole":["ConsumableRole"],         "affordsTask":["EatingDrinkingTask"]}}
hammer:        {{"hasPhysicalQuality":["Heavy","Rigid"],               "hasRole":["ToolRole"],               "affordsTask":["MaintenanceTask"]}}
blanket:       {{"hasPhysicalQuality":["Soft_Deformable","Washable"],  "hasRole":["BeddingRole"],            "affordsTask":["SleepingTask"]}}

Return ONLY the JSON. No explanation, no markdown, no extra text.
"""
# ------------------------------------------------------------------------------
# 3. SUPPORT FUNCTIONS
# ------------------------------------------------------------------------------
def normalize_llm_output(raw) -> list[dict]:
    """
    Validates LLM output against the codebook.
    Accepts {hasPhysicalQuality: [...], hasRole: [...], affordsTask: [...]}
    Returns a list of {relation, value} dicts with only valid entries.
    """
    mapping = {
        "hasPhysicalQuality": CODEBOOK["Qualities"],
        "hasRole":            CODEBOOK["Roles"],
        "affordsTask":        CODEBOOK["Tasks"],
    }
    result = []
    if isinstance(raw, dict):
        for key, allowed in mapping.items():
            vals = raw.get(key, [])
            if isinstance(vals, str):
                vals = [vals]
            for v in vals:
                if v in allowed:
                    result.append({"relation": key, "value": v})
    return result


def format_to_prolog(obj_name: str, properties_list: list[dict]) -> str:
    """Convert SOMA triples to Prolog/ASP facts for ILASP."""
    obj_clean = obj_name.replace(' ', '_').replace('-', '_')
    lines = [f"% --- {obj_name} ---", f"obj({obj_clean})."]
    for prop in properties_list:
        rel = prop.get('relation')
        val = prop.get('value')
        if rel and val:
            val_prolog = val[0].lower() + val[1:]
            lines.append(f"{rel}({obj_clean}, {val_prolog}).")
    return "\n".join(lines) + "\n\n"


# ------------------------------------------------------------------------------
# 4. EXECUTION PIPELINE
# ------------------------------------------------------------------------------
def main():
    print("=" * 60)
    print(f"SOMA Semantic Parser -- {MODEL}")
    print("=" * 60)

    try:
        with open(INPUT_JSON, "r") as f:
            data = json.load(f)
        # Supports both flat format {name: props} (objects_kept.json)
        # and nested format with "tool_usage_properties" key
        if "tool_usage_properties" in data:
            tool_usage_data = data["tool_usage_properties"]
        else:
            tool_usage_data = data
    except FileNotFoundError:
        print(f"[ERROR] File not found: {INPUT_JSON}")
        return

    oggetti = list(tool_usage_data.items())
    print(f"Objects to annotate: {len(oggetti):,}\n")

    with open(OUTPUT_PROLOG, "w") as out_file:
        out_file.write("% ==========================================\n")
        out_file.write("% BACKGROUND KNOWLEDGE FORMALE (SOMA)\n")
        out_file.write(f"% Generata da {MODEL}\n")
        out_file.write("% ==========================================\n\n")

        for i, (obj_name, raw_props) in enumerate(oggetti, 1):
            print(f"[{i:>4}/{len(oggetti)}] {obj_name}...", end=" ", flush=True)

            raw_text = []
            for prop_type, values in raw_props.items():
                if values:
                    raw_text.append(f"{prop_type}: {', '.join(values)}")

            if not raw_text:
                print("skip (no props)")
                continue

            user_message = f"Object: {obj_name}\nRaw Associations:\n" + "\n".join(raw_text)

            try:
                messages = [
                    {'role': 'system', 'content': system_prompt},
                    {'role': 'user',   'content': user_message}
                ]

                response = ollama.chat(
                    model=MODEL,
                    messages=messages,
                    format='json',
                    options={"temperature": 0.0}
                )
                raw_parsed = json.loads(response['message']['content'])
                parsed = normalize_llm_output(raw_parsed)

                # -- Validation retry ----------------------------------------
                # If the result is empty or inconsistent, retry once
                if not parsed:
                    correction = (
                        f"Your previous answer returned no valid SOMA values for '{obj_name}'.\n"
                        f"Remember: use ONLY values from these exact lists:\n"
                        f"  hasPhysicalQuality: {CODEBOOK['Qualities']}\n"
                        f"  hasRole: {CODEBOOK['Roles']}\n"
                        f"  affordsTask: {CODEBOOK['Tasks']}\n"
                        f"If '{obj_name}' is abstract or a person, return empty lists. "
                        f"Otherwise try again with at least one value per key."
                    )
                    messages.append({'role': 'assistant', 'content': response['message']['content']})
                    messages.append({'role': 'user', 'content': correction})
                    response2 = ollama.chat(
                        model=MODEL,
                        messages=messages,
                        format='json',
                        options={"temperature": 0.0}
                    )
                    raw_parsed = json.loads(response2['message']['content'])
                    parsed = normalize_llm_output(raw_parsed)

                if not parsed:
                    print("skip (no valid SOMA values after retry)")
                    continue

                out_file.write(format_to_prolog(obj_name, parsed))
                summary = ", ".join(f"{p['relation']}={p['value']}" for p in parsed)
                print(f"  [{len(parsed)} triples]  {summary[:80]}")

            except json.JSONDecodeError:
                print("  [WARN] Invalid JSON from LLM")
            except Exception as e:
                print(f"  [ERROR] {e}")

    print(f"\nCompleted. Output: {OUTPUT_PROLOG}")


if __name__ == "__main__":
    main()