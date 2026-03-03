import ollama
import json

conceptnet_mock_data = {
    "milk": {
        "location": "fridge",
        "raw_associations": ["UsedFor: drinking", "HasProperty: cold", "IsA: dairy liquid"]
    },
    "frying_pan": {
        "location": "kitchen_cabinet",
        "raw_associations": ["UsedFor: cooking", "HasProperty: heavy metal", "IsA: cookware"]
    }
}

system_prompt = """
You are a strict semantic parser for a cognitive domestic robot. 
Your task is to translate informal human associations into formal logical properties based on the SOMA ontology.

RULES:
1. You must map the provided raw associations to ONLY the following relations:
   - soma:hasPhysicalQuality
   - dul:hasRole
   - soma:affordsTask
2. For the property values, you MUST ONLY choose from this exact restricted Codebook:
   - Qualities: ["RequiresCooling", "Heavy", "Rigid", "Liquid"]
   - Roles: ["ConsumableRole", "CookingToolRole"]
   - Tasks: ["DrinkingTask", "CookingTask"]
3. If a raw association doesn't fit any Codebook value, ignore it.

OUTPUT FORMAT:
You must respond with ONLY a valid JSON object matching this exact schema:
{
  "object": "<object_name>",
  "properties": [
    {"relation": "<soma_relation>", "value": "<codebook_value>"}
  ]
}
"""

def generate_ilasp_syntax(object_name, location, parsed_properties):
    ilasp_text = f"% --- Background Knowledge per '{object_name}' ---\n"
    
    
    for prop in parsed_properties:
        relation = prop['relation'].split(':')[-1] 
        value = prop['value']
        value_prolog = value[0].lower() + value[1:] if value else ""
        ilasp_text += f"{relation}({object_name}, {value_prolog}).\n"
    
    
    ilasp_text += f"\n% --- Training Example ---\n"
    ilasp_text += f"#pos(eg_{object_name}, {{ location({object_name}, {location}) }}, {{}}).\n"
    ilasp_text += "-" * 40 + "\n"
    
    return ilasp_text


print("Inizio l'estrazione neuro-simbolica con Llama 3.1...\n" + "="*40)

for obj, data in conceptnet_mock_data.items():
    user_message = f"Object: {obj}\nRaw Associations: {', '.join(data['raw_associations'])}"
    
    
    response = ollama.chat(
        model='llama3.1',
        messages=[
            {'role': 'system', 'content': system_prompt},
            {'role': 'user', 'content': user_message}
        ],
        format='json' 
    )
    
    try:
        
        parsed_json = json.loads(response['message']['content'])
        
        
        ilasp_output = generate_ilasp_syntax(obj, data['location'], parsed_json.get('properties', []))
        print(ilasp_output)
        
    except json.JSONDecodeError:
        print(f"Errore di parsing per l'oggetto {obj}. L'LLM non ha restituito un JSON valido.")