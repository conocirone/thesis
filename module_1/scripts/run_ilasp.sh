#!/bin/bash
#SBATCH --job-name=ILASP_tidy       # Nome del job
#SBATCH --output=ilasp_%j.out       # File output standard
#SBATCH --error=ilasp_%j.err        # File per gli errori
#SBATCH --nodes=1                   # Numero di nodi richiesti
#SBATCH --ntasks=1                  # Numero di task
#SBATCH --cpus-per-task=4           # CPU core richiesti
#SBATCH --mem=8G                    # RAM richiesta 
#SBATCH --time=72:00:00             # Tempo massimo di esecuzione (3 giorni)
#SBATCH --partition=cpu         # Partizione (cambia in base al tuo cluster, es: 'batch' o 'cpu')
echo "Starting ILASP job at $(date)"
# Entra nella cartella corretta
cd ~/thesis/module_1/scripts
# Genera (opzionale se hai già il file .las)
python3 ./offline_phase/generate_ilasp_examples.py 
# Lancia ILASP
ILASP --version=4 ../rules/ilasp_tidy_up.las -ml=1 --max-rule-length=2 > ../rules/learned_rules_stratified.txt
echo "Finished ILASP job at $(date)"
