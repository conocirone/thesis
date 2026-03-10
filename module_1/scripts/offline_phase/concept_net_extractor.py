import duckdb
import json 
import re
from pathlib import Path    

CSV_PATH     = "../ConceptNet/assertions.csv"
PARQUET_PATH = "../ConceptNet/domestic_relations.parquet"
OUTPUT_JSON  = "../../jsons/conceptnet_domestic_subgraph.json"

SEED_ROOMS = [
    # Living areas
    'kitchen', 'dining room', 'living room', 'family room',
    'sitting room', 'front room', 'den', 'conservatory', 'library',
    # Bedrooms
    'bedroom', 'nursery', 'dressing room',
    # Bathrooms
    'bathroom', 'washroom',
    # Work / study / hobby
    'home office', 'study', 'music room', 'playroom', 'game room', 'darkroom', 'workroom',
    # Utility rooms
    'laundry room', 'utility room', 'pantry', 'storage room', 'storeroom', 'closet',
    # Transition / access
    'hallway', 'foyer', 'entryway', 'lobby',
    # Garage / basement / underground
    'garage', 'basement', 'attic', 'cellar', 'wine cellar', 'workshop',
    # Connected outdoor spaces
    'balcony', 'porch', 'terrace', 'garden', 'greenhouse',
]

RELATIONS_TIDY = ['/r/AtLocation']
RELATIONS_TOOL = ['/r/UsedFor', '/r/HasProperty', '/r/CapableOf']
ALL_RELATIONS  = RELATIONS_TIDY + RELATIONS_TOOL


def build_parquet_cache(con: duckdb.DuckDBPyConnection) -> str:
    """Build or reuse a Parquet cache of English ConceptNet relations."""
    if Path(PARQUET_PATH).exists():
        size = Path(PARQUET_PATH).stat().st_size / 1e6
        print(f" Parquet cache already found: {PARQUET_PATH} ({size:.1f} MB)")
        return PARQUET_PATH

    rels_sql = ", ".join(f"'{r}'" for r in ALL_RELATIONS)

    con.execute(f"""
        COPY (
            SELECT
                column1 AS relation,
                column2 AS "start",
                column3 AS "end"
            FROM read_csv('{CSV_PATH}',
            delim='\t', header=False,
            columns={{
                'column0': 'VARCHAR', 'column1': 'VARCHAR',
                'column2': 'VARCHAR', 'column3': 'VARCHAR',
                'column4': 'VARCHAR'
        }})
        WHERE column1 IN ({rels_sql})
        AND starts_with(column2, '/c/en/')
        AND starts_with(column3, '/c/en/')
        ) TO '{PARQUET_PATH}' (FORMAT PARQUET, COMPRESSION 'zstd')
    """)

    size = Path(PARQUET_PATH).stat().st_size / 1e6
    print(f"  Parquet saved: {size:.1f} MB")
    return PARQUET_PATH

def clean_label(uri: str) -> str | None:
    if not uri.startswith("/c/en/"): return None
    parts = uri.split("/")
    raw = parts[3] if len(parts) > 3 else parts[-1]
    raw = raw.replace("_", " ").strip().lower()
    raw = re.sub(r"^(a |an |the )", "", raw).strip()
    if len(raw) < 2 or not raw.isascii(): return None
    return raw

def format_sql_list(items: list) -> str:
    def escape(s: str) -> str:
        return s.replace(" ", "_").replace("'", "''")
    return ", ".join(f"'/c/en/{escape(item)}'" for item in items)

def extract_tidy_up_hierarchy(con) -> tuple[dict, set]:
    """Two-hop BFS from seed rooms via AtLocation to discover objects."""
    
    tidy_up_data = {room: {"direct_items": [], "nested_items": {}} for room in SEED_ROOMS}
    all_discovered_objects = set()

    # First step: from given rooms, get all objects that are at location
    seed_sql = format_sql_list(SEED_ROOMS)
    rows_hop1 = con.execute(f"""
        SELECT "start", "end" FROM read_parquet('{PARQUET_PATH}')
        WHERE relation = '/r/AtLocation' AND "end" IN ({seed_sql})
    """).fetchall()

    level_1_items = set()
    for start_uri, end_uri in rows_hop1:
        item = clean_label(start_uri)
        room = clean_label(end_uri)
        if item and room and room in tidy_up_data:
            tidy_up_data[room]["direct_items"].append(item)
            level_1_items.add(item)
            all_discovered_objects.add(item)

    # Second step: From containers, get all objects that are at location
    if level_1_items:
        level_1_sql = format_sql_list(list(level_1_items))
        rows_hop2 = con.execute(f"""
            SELECT "start", "end" FROM read_parquet('{PARQUET_PATH}')
            WHERE relation = '/r/AtLocation' AND "end" IN ({level_1_sql})
        """).fetchall()

        for start_uri, end_uri in rows_hop2:
            nested_item = clean_label(start_uri)
            container = clean_label(end_uri)

            if nested_item and container:
                all_discovered_objects.add(nested_item)
                for room, data in tidy_up_data.items():
                    if container in data["direct_items"]:
                        if container not in data["nested_items"]:
                            data["nested_items"][container] = []
                        if nested_item not in data["nested_items"][container]:
                            data["nested_items"][container].append(nested_item)
    
    return tidy_up_data, all_discovered_objects

def extract_tool_usage_properties(con, target_objects: set) -> dict:
    """Query UsedFor, HasProperty, CapableOf for each discovered object."""
    tool_usage_data = {}
    if not target_objects:
        return tool_usage_data

    # Build query for object properties
    target_sql = format_sql_list(list(target_objects))
    rels_sql = ", ".join(f"'{r}'" for r in RELATIONS_TOOL)
    
    rows_props = con.execute(f"""
        SELECT "start", relation, "end" FROM read_parquet('{PARQUET_PATH}')
        WHERE relation IN ({rels_sql}) AND "start" IN ({target_sql})
    """).fetchall()

    for start_uri, rel_uri, end_uri in rows_props:
        obj = clean_label(start_uri)
        val = clean_label(end_uri)
        rel = rel_uri.split('/')[-1] # es. "UsedFor"
        
        if obj and val:
            if obj not in tool_usage_data:  # e.g. rel = "UsedFor"
                tool_usage_data[obj] = {"UsedFor": [], "HasProperty": [], "CapableOf": []}
            if val not in tool_usage_data[obj][rel]:
                tool_usage_data[obj][rel].append(val)

    return tool_usage_data

def main():

    con = duckdb.connect()
    build_parquet_cache(con)
    
    
    tidy_up_dict, discovered_objects = extract_tidy_up_hierarchy(con)
    
    
    tool_usage_dict = extract_tool_usage_properties(con, discovered_objects)
    
   
    final_dataset = {
        "tidy_up_hierarchy": tidy_up_dict,
        "tool_usage_properties": tool_usage_dict
    }
    
    with open(OUTPUT_JSON, "w", encoding="utf-8") as f:
        json.dump(final_dataset, f, indent=2, ensure_ascii=False)
        
    print(f"\n  Subgraph saved to {OUTPUT_JSON}")

if __name__ == "__main__":
    main()