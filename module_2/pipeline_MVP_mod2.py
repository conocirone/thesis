import ollama
import re
from pyswip import Prolog

# 1. Spazio delle etichette (Label Space) consentito dal benchmark
allowed_labels = [
    "hands", "tongs", "knife", "fork", "skewer", "chopsticks", 
    "spoon", "dinner_plate", "dessert_plate", "bowl", "coupe_plate"
]

# Il pasto da valutare
meal_target = "steak_and_french_fries"

# 2. System Prompt: L'LLM come "Dynamic Logic Synthesizer"
system_prompt = f"""
You are a robotic logic synthesizer for a Table Setting task.
Your goal is to translate the physical properties of a meal into executable SWI-Prolog code.

ALLOWED ITEMS (Do not use any other items):
{', '.join(allowed_labels)}

INSTRUCTIONS:
1. Define all allowed items as facts using `available_item(Item).`
2. Define the meal using `meal({meal_target}).`
3. Extract the physical properties of '{meal_target}' (e.g., requires_cutting, is_solid, is_liquid) using `property({meal_target}, Property).`
4. Write a deterministic rule `suitable_item(Meal, Item) :- ...` that logically deduces the correct cutlery and plate from the available items based on the properties.

CRITICAL: Return ONLY raw, valid SWI-Prolog code. Do not include markdown tags (like ```prolog), do not include explanations. Just the code.
"""

print(f"Generazione dinamica della logica per: '{meal_target}'...\n" + "="*50)

# 3. Chiamata a Llama 3.1
# NOTA: Llama 3.1 richiede almeno un messaggio 'user' per generare output
response = ollama.chat(
    model='llama3.1',
    messages=[
        {'role': 'system', 'content': system_prompt},
        {'role': 'user', 'content': f"Generate the SWI-Prolog code for the meal: {meal_target}"}
    ]
)

# Estrazione e pulizia del codice Prolog (rimuove i markdown tags se Llama li inserisce)
prolog_code = response['message']['content']
prolog_code = re.sub(r"```prolog|```", "", prolog_code).strip()

print("CODICE PROLOG GENERATO DALL'LLM:\n")
print(prolog_code)
print("="*50)

# 4. Validazione: se il codice è vuoto, blocca l'esecuzione
if not prolog_code:
    print("ERRORE: L'LLM ha restituito codice vuoto. Risposta raw:")
    print(repr(response['message']['content']))
    exit(1)

# Salvataggio su file (PySwip ha bisogno di leggere da un file .pl)
with open("temp_logic.pl", "w") as f:
    f.write(prolog_code)

# 5. Esecuzione Simbolica tramite PySwip (Il Solver Deterministico)
print("\nEsecuzione del motore Prolog (PySwip)...\nRisultati dedotti:")
try:
    prolog = Prolog()
    prolog.consult("temp_logic.pl")
    
    # Interroghiamo il solver: "Quali sono gli item adatti per la bistecca con patatine?"
    query = f"suitable_item({meal_target}, Item)"
    results = list(prolog.query(query))
    
    if results:
        for res in results:
            print(f"- Item selezionato: {res['Item']}")
    else:
        print("- Nessun item dedotto logicamente (la regola generata potrebbe essere troppo restrittiva).")
except Exception as e:
    print(f"Errore durante l'esecuzione Prolog: {e}")