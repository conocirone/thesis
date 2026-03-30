# Online Phase Evaluation Report — Tool Usage Task

Evaluation of the Neuro-Symbolic pipeline against the Robo-CSK-Benchmark tool_usage task.

- **Total Questions Tested**: 291
- **Accuracy**: 42.96%
- **Correct Predictions**: 125/291

- **Affordance Prediction Accuracy**: 89.7%

### Match Diagnostics
- Single match: 54 (18.6%)
- Multiple matches: 156 (53.6%)
- No match (fallback): 81 (27.8%)
- Matches gained via synonym expansion: 131
- Affordance prediction accuracy (exact): 89.7%
- Affordance prediction accuracy (with synonyms): 93.1%

### Per-Affordance Accuracy
| Affordance | Correct | Total | Accuracy |
|------------|---------|-------|----------|
| absorb | 3 | 3 | 100.0% |
| be_heated | 4 | 5 | 80.0% |
| beautify | 1 | 4 | 25.0% |
| bend | 1 | 3 | 33.3% |
| bore | 0 | 3 | 0.0% |
| break | 0 | 3 | 0.0% |
| carry | 2 | 4 | 50.0% |
| carve | 1 | 3 | 33.3% |
| change | 0 | 3 | 0.0% |
| chop | 2 | 3 | 66.7% |
| clean | 3 | 11 | 27.3% |
| comfort | 3 | 3 | 100.0% |
| compress | 0 | 3 | 0.0% |
| contain | 2 | 4 | 50.0% |
| control | 1 | 3 | 33.3% |
| cool | 0 | 4 | 0.0% |
| cover | 0 | 3 | 0.0% |
| crack | 2 | 3 | 66.7% |
| crumble | 0 | 3 | 0.0% |
| crunch | 3 | 3 | 100.0% |
| cube | 2 | 3 | 66.7% |
| cut | 2 | 5 | 40.0% |
| decorate | 4 | 5 | 80.0% |
| dice | 3 | 4 | 75.0% |
| dig | 3 | 3 | 100.0% |
| display | 3 | 3 | 100.0% |
| dispose | 1 | 4 | 25.0% |
| drill | 1 | 3 | 33.3% |
| dry | 3 | 3 | 100.0% |
| eat | 2 | 3 | 66.7% |
| engrave | 1 | 3 | 33.3% |
| entertain | 2 | 3 | 66.7% |
| exercise | 1 | 3 | 33.3% |
| file | 0 | 3 | 0.0% |
| fix | 1 | 3 | 33.3% |
| flex | 2 | 3 | 66.7% |
| grasp | 0 | 4 | 0.0% |
| grind | 3 | 3 | 100.0% |
| hammer | 2 | 5 | 40.0% |
| handle | 0 | 3 | 0.0% |
| heat | 5 | 6 | 83.3% |
| hold | 0 | 3 | 0.0% |
| illuminate | 3 | 3 | 100.0% |
| increase | 7 | 7 | 100.0% |
| install | 0 | 3 | 0.0% |
| lift | 0 | 3 | 0.0% |
| mark | 0 | 3 | 0.0% |
| melt | 0 | 3 | 0.0% |
| mix | 3 | 3 | 100.0% |
| operate | 0 | 3 | 0.0% |
| peel | 3 | 3 | 100.0% |
| pick | 1 | 3 | 33.3% |
| pierce | 1 | 4 | 25.0% |
| plow | 1 | 3 | 33.3% |
| plug | 0 | 3 | 0.0% |
| poke | 0 | 3 | 0.0% |
| polish | 1 | 4 | 25.0% |
| pour | 3 | 3 | 100.0% |
| press | 0 | 3 | 0.0% |
| read | 3 | 4 | 75.0% |
| repair | 0 | 3 | 0.0% |
| roll | 0 | 2 | 0.0% |
| rub | 0 | 3 | 0.0% |
| saw | 2 | 3 | 66.7% |
| scoop | 0 | 3 | 0.0% |
| screw | 2 | 4 | 50.0% |
| separate | 0 | 2 | 0.0% |
| shape | 1 | 1 | 100.0% |
| skin | 2 | 3 | 66.7% |
| slit | 1 | 3 | 33.3% |
| smoothen | 2 | 3 | 66.7% |
| solder | 1 | 3 | 33.3% |
| spread | 2 | 3 | 66.7% |
| staple | 0 | 2 | 0.0% |
| stick | 1 | 1 | 100.0% |
| store | 4 | 9 | 44.4% |
| strip | 1 | 1 | 100.0% |
| support | 2 | 3 | 66.7% |
| tamp | 1 | 3 | 33.3% |
| time | 2 | 2 | 100.0% |
| unclog | 1 | 3 | 33.3% |
| wash | 0 | 5 | 0.0% |
| wipe | 0 | 3 | 0.0% |
| wrap | 0 | 2 | 0.0% |
| wrench | 3 | 4 | 75.0% |
| write | 2 | 4 | 50.0% |

## Test Cases Log

### making salsa (❌ WRONG)
- **Required Affordance (pred)**: dice
- **Required Affordance (gold)**: dice
- **Correct Tool**: machete
- **Predicted Tool**: kitchenknife
- **Matching Tools**: machete, lug wrench, kitchenknife, knife, bandsaw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### cleaning shower head (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools**: ottoman
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: increase

### painting walls (❌ WRONG)
- **Required Affordance (pred)**: beautify
- **Required Affordance (gold)**: roll
- **Correct Tool**: food jar
- **Predicted Tool**: spray bottle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer, Heavy
  - Deduced Affordances: dispose, wrench, support, pick, be_heated, contain, cool, handle, polish, hold, store, wrap, grasp, break, file, carry

### protecting items (❌ WRONG)
- **Required Affordance (pred)**: wrap
- **Required Affordance (gold)**: wrap
- **Correct Tool**: water bottle
- **Predicted Tool**: garbagecan
- **Matching Tools**: water bottle, garbagecan
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight
  - Deduced Affordances: dispose, support, pick, be_heated, pour, wrap, grasp, break, carry
  - Matched via synonyms: wrap

### watering plants (✅ CORRECT)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: carry
- **Correct Tool**: plate
- **Predicted Tool**: plate
- **Matching Tools**: plate
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: cut, change, repair, support, pick, be_heated, carve, spread, operate, dice, plug, fix, wrap, grasp, break, carry
  - Matched via synonyms: carry, support

### dividing food into portions (❌ WRONG)
- **Required Affordance (pred)**: separate
- **Required Affordance (gold)**: separate
- **Correct Tool**: broad hatchet
- **Predicted Tool**: c d
- **Matching Tools**: broad hatchet, garden trowel, c d
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### storing fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools**: box, razorblade, metal box, winebottle
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: dispose, wrench, support, pick, be_heated, contain, cool, operate, handle, polish, hold, plug, store, wrap, grasp, break, file, carry
  - Matched via synonyms: contain, store

### mending clothes (❌ WRONG)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: fix
- **Correct Tool**: razor
- **Predicted Tool**: pruner
- **Matching Tools**: razor, fork, lancet, counterbore, pruner
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: fix, repair

### decorating lobby (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: statue
- **Predicted Tool**: statue
- **Matching Tools**: statue
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile
  - Deduced Affordances: pick, operate, decorate, plug, break, carry
  - Matched via synonyms: decorate

### cutting open food objects (✅ CORRECT)
- **Required Affordance (pred)**: slit
- **Required Affordance (gold)**: slit
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools**: blade, pen, broadax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, plug, fix, bore, wash, write
  - Matched via synonyms: cube, cut, separate

### organizing collectibles (✅ CORRECT)
- **Required Affordance (pred)**: display
- **Required Affordance (gold)**: display
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: cell phone, houseplant
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write
  - Matched via synonyms: display

### setting tiles (❌ WRONG)
- **Required Affordance (pred)**: tamp
- **Required Affordance (gold)**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: bolt cutter
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight
  - Deduced Affordances: cut, control, change, repair, pick, install, clean, poke, hold, separate, screw, staple, bore, grasp, wash, break, write

### using tools (❌ WRONG)
- **Required Affordance (pred)**: hold
- **Required Affordance (gold)**: hold
- **Correct Tool**: seal
- **Predicted Tool**: penknife
- **Matching Tools**: seal, breast drill, core drill, box wrench, penknife
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Fragile, Rigid
  - Deduced Affordances: cut, pick, clean, operate, plug, eat, break
  - Matched via synonyms: pick

### maintaining floors (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: rasp
- **Predicted Tool**: rake
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write

### plugging devices in (❌ WRONG)
- **Required Affordance (pred)**: plug
- **Required Affordance (gold)**: plug
- **Correct Tool**: bandsaw
- **Predicted Tool**: corkscrew
- **Matching Tools**: bandsaw, portable saw, corkscrew, beading plane
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: plug

### drying the dishes (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, pick, grasp, clean

### ironing clothes (❌ WRONG)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: abrading stone
- **Predicted Tool**: coal shovel
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### clearing snow (❌ WRONG)
- **Required Affordance (pred)**: plow
- **Required Affordance (gold)**: plow
- **Correct Tool**: lister
- **Predicted Tool**: beading plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid
  - Deduced Affordances: pour, pick, clean

### serving ice cream (❌ WRONG)
- **Required Affordance (pred)**: scoop
- **Required Affordance (gold)**: scoop
- **Correct Tool**: garden trowel
- **Predicted Tool**: toaster
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### drying washed dishes (✅ CORRECT)
- **Required Affordance (pred)**: dry
- **Required Affordance (gold)**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: hand towel
- **Matching Tools**: hand towel
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: dry, pick, clean
  - Matched via synonyms: dry

### decorating table (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools**: curtain
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, entertain, pick, decorate, increase, grasp, illuminate, break, carry
  - Matched via synonyms: decorate

### cleaning the fridge (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: saber saw
- **Predicted Tool**: spray bottle
- **Matching Tools**: saber saw, showerhead, spray bottle, spade bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### organizing items (✅ CORRECT)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: shelving unit
- **Predicted Tool**: shelving unit
- **Matching Tools**: shelving unit, portable saw, dirk, backsaw
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: dispose, wrench, support, pick, be_heated, contain, cool, operate, handle, polish, hold, plug, store, wrap, grasp, break, file, carry
  - Matched via synonyms: contain, store

### cooking an omelette (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: pan
- **Matching Tools**: pan, fork, kirpan
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid
  - Deduced Affordances: pick, be_heated, contain, operate, mix, plug, heat, carry
  - Matched via synonyms: be_heated, heat

### keeping a journal (✅ CORRECT)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: write
- **Correct Tool**: pencil
- **Predicted Tool**: pencil
- **Matching Tools**: pencil, cross bit, pipe wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: cut, install, staple, break, repair, poke, grasp, change, pick, control, operate, hold, separate, plug, fix, store, bore, wash, write
  - Matched via synonyms: write

### washing your face (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: paper cutter
- **Matching Tools**: compass saw, parang, paper cutter, firmer chisel, circular saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### fixing a toilet (❌ WRONG)
- **Required Affordance (pred)**: unclog
- **Required Affordance (gold)**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: burr
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### cutting an apple (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: switchblade
- **Predicted Tool**: switchblade
- **Matching Tools**: switchblade, electric hammer, hatchel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cube, cut, separate

### cleaning the mirror (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: bodkin
- **Matching Tools**: bodkin
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, contain, operate, handle, heat

### throwing away toilet paper (✅ CORRECT)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: dispose
- **Correct Tool**: garbage can
- **Predicted Tool**: garbage can
- **Matching Tools**: garbage can
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy, HasContainer
  - Deduced Affordances: dispose, wrench, support, be_heated, contain, handle, wrap, grasp, break, carry
  - Matched via synonyms: dispose

### displaying a statue (✅ CORRECT)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: support
- **Correct Tool**: side table
- **Predicted Tool**: side table
- **Matching Tools**: side table, painting
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: support

### sanding surfaces (✅ CORRECT)
- **Required Affordance (pred)**: smoothen
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: steel wool pad
- **Predicted Tool**: steel wool pad
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Granular, Fragile
  - Deduced Affordances: break, clean

### creating frost patterns as decoration (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: set square
- **Matching Tools**: set square
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### cleaning pipes (❌ WRONG)
- **Required Affordance (pred)**: unclog
- **Required Affordance (gold)**: unclog
- **Correct Tool**: plunger
- **Predicted Tool**: watering can
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### removing skin from meat (❌ WRONG)
- **Required Affordance (pred)**: skin
- **Required Affordance (gold)**: skin
- **Correct Tool**: lochaber ax
- **Predicted Tool**: c d
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### changing an objects shape (✅ CORRECT)
- **Required Affordance (pred)**: shape
- **Required Affordance (gold)**: shape
- **Correct Tool**: shaping tool
- **Predicted Tool**: shaping tool
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### telling the time (✅ CORRECT)
- **Required Affordance (pred)**: time
- **Required Affordance (gold)**: time
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write

### opening a nut (✅ CORRECT)
- **Required Affordance (pred)**: crack
- **Required Affordance (gold)**: crack
- **Correct Tool**: stiletto
- **Predicted Tool**: stiletto
- **Matching Tools**: stiletto, food cup, compass saw, to go cup
- **Correct Tool SOMA Features**:
  - Roles: ClothingRole
  - Tasks: 
  - Qualities: Sharp, Lightweight
  - Deduced Affordances: cube, skin, peel, hold, separate, crack, grasp
  - Matched via synonyms: crack

### placing objects down (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: grasp
- **Correct Tool**: sandblaster
- **Predicted Tool**: scriber
- **Matching Tools**: sandblaster, scriber, saber saw, maul, burr
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### surfing the internet (✅ CORRECT)
- **Required Affordance (pred)**: entertain
- **Required Affordance (gold)**: entertain
- **Correct Tool**: c d
- **Predicted Tool**: c d
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable
  - Deduced Affordances: cut, eat, pick, clean

### transporting liquids (✅ CORRECT)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: carry
- **Correct Tool**: mug
- **Predicted Tool**: mug
- **Matching Tools**: mug, bread knife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight
  - Deduced Affordances: cut, change, repair, support, pick, be_heated, carve, spread, dice, fix, pour, wrap, grasp, break, carry
  - Matched via synonyms: carry, support

### increasing beauty of the room (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: poster
- **Predicted Tool**: poster
- **Matching Tools**: poster
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: pick, operate, decorate, plug, grasp, break, carry
  - Matched via synonyms: decorate

### crushing ice (✅ CORRECT)
- **Required Affordance (pred)**: crunch
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: pestle, bender, common ax, bolt cutter
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix
  - Matched via synonyms: break

### reheating soup (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: kettle
- **Predicted Tool**: kettle
- **Matching Tools**: kettle
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: EatingDrinkingTask
  - Qualities: Heated
  - Deduced Affordances: heat, pick
  - Matched via synonyms: heat

### hanging painting (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: counter top
- **Predicted Tool**: counter top
- **Matching Tools**: counter top, tennis racket
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy
  - Deduced Affordances: wrench, support, contain, operate, decorate, handle, increase, plug, comfort
  - Matched via synonyms: increase

### preparing meat (✅ CORRECT)
- **Required Affordance (pred)**: carve
- **Required Affordance (gold)**: carve
- **Correct Tool**: tableknife
- **Predicted Tool**: tableknife
- **Matching Tools**: tableknife, grapnel, wire cutter, shaver
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### storing clothes (❌ WRONG)
- **Required Affordance (pred)**: compress
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: nailfile
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight
  - Deduced Affordances: cut, control, change, repair, pick, install, clean, poke, hold, separate, screw, staple, bore, grasp, wash, break, write

### making a small hole (✅ CORRECT)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: bradawl
- **Matching Tools**: bradawl, bulldog wrench, keychain
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: poke

### hanging cleaned laundry (✅ CORRECT)
- **Required Affordance (pred)**: dry
- **Required Affordance (gold)**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: hand towel
- **Matching Tools**: hand towel
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: dry, pick, clean
  - Matched via synonyms: dry

### using appliances (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: operate
- **Correct Tool**: floorlamp
- **Predicted Tool**: ram
- **Matching Tools**: floorlamp, shelving unit, comb, ram, head gasket
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, entertain, pick, contain, operate, handle, decorate, increase, plug, heat, illuminate, break
  - Matched via synonyms: handle, pick

### defrosting frozen food (❌ WRONG)
- **Required Affordance (pred)**: melt
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: handstamp
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write

### connecting appliances (❌ WRONG)
- **Required Affordance (pred)**: plug
- **Required Affordance (gold)**: plug
- **Correct Tool**: pneumatic drill
- **Predicted Tool**: stillson wrench
- **Matching Tools**: pneumatic drill, spreader, stillson wrench, floorlamp
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: plug

### boiling water (❌ WRONG)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: water bottle
- **Matching Tools**: coffee machine, water bottle
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: EatingDrinkingTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, heat
  - Matched via synonyms: heat

### washing dishes (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: dovetail plane
- **Matching Tools**: brick trowel, common ax, potato, dovetail plane
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, contain, operate, handle, heat

### washing a fruit before cutting (❌ WRONG)
- **Required Affordance (pred)**: wash
- **Required Affordance (gold)**: wash
- **Correct Tool**: bandsaw
- **Predicted Tool**: shiv
- **Matching Tools**: bandsaw, hammer, sparkplug wrench, posthole digger, shiv
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### removing the peel from fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: skin
- **Required Affordance (gold)**: skin
- **Correct Tool**: adz
- **Predicted Tool**: adz
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### cleaning the toilet (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: portable saw
- **Predicted Tool**: spray bottle
- **Matching Tools**: portable saw, spray bottle, plexor.n.wn.medicine, drilling bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### cutting items in halve (❌ WRONG)
- **Required Affordance (pred)**: separate
- **Required Affordance (gold)**: separate
- **Correct Tool**: stiletto
- **Predicted Tool**: gouge
- **Matching Tools**: stiletto, tack hammer, gouge, eolith
- **Correct Tool SOMA Features**:
  - Roles: ClothingRole
  - Tasks: 
  - Qualities: Sharp, Lightweight
  - Deduced Affordances: cube, skin, peel, hold, separate, crack, grasp
  - Matched via synonyms: cube, separate

### creating garnishes (✅ CORRECT)
- **Required Affordance (pred)**: dice
- **Required Affordance (gold)**: dice
- **Correct Tool**: steak knife
- **Predicted Tool**: steak knife
- **Matching Tools**: steak knife, rubber eraser, carpenter's square, faucet, coffee
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### cutting meat (✅ CORRECT)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: chop
- **Correct Tool**: claw hatchet
- **Predicted Tool**: claw hatchet
- **Matching Tools**: claw hatchet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### tracking events (❌ WRONG)
- **Required Affordance (pred)**: mark
- **Required Affordance (gold)**: mark
- **Correct Tool**: bradawl
- **Predicted Tool**: ball peen hammer
- **Matching Tools**: bradawl, twist bit, pipe wrench, cuttingtool, ball peen hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: write

### gardening (✅ CORRECT)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: dig
- **Correct Tool**: ditch spade
- **Predicted Tool**: ditch spade
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### adjusting device settings (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: control
- **Correct Tool**: handsaw
- **Predicted Tool**: pointing trowel
- **Matching Tools**: handsaw, pointing trowel, tennis racket, common ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: control

### cooking a fried egg (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: cup
- **Predicted Tool**: cup
- **Matching Tools**: cup
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: HasContainer
  - Deduced Affordances: cut, change, repair, support, pick, be_heated, carve, contain, spread, dice, fix, wrap, grasp, break, carry
  - Matched via synonyms: be_heated

### assembling furniture (✅ CORRECT)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: screw
- **Correct Tool**: screwdriver
- **Predicted Tool**: screwdriver
- **Matching Tools**: screwdriver, secateur
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: bore, drill

### opening packages (❌ WRONG)
- **Required Affordance (pred)**: crack
- **Required Affordance (gold)**: slit
- **Correct Tool**: blade
- **Predicted Tool**: star drill
- **Matching Tools**: blade, star drill, power tool, hack, putty knife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, plug, fix, bore, wash, write
  - Matched via synonyms: break, crack

### supporting a laptop (✅ CORRECT)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: support
- **Correct Tool**: footstool
- **Predicted Tool**: footstool
- **Matching Tools**: footstool
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, entertain, support, pick, contain, operate, handle, decorate, increase, plug, comfort, illuminate, break
  - Matched via synonyms: support

### arranging flowers (❌ WRONG)
- **Required Affordance (pred)**: beautify
- **Required Affordance (gold)**: beautify
- **Correct Tool**: abrader
- **Predicted Tool**: arm chair
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, hold, separate, screw, fix, bore, wash, write

### cleaning fingernails (❌ WRONG)
- **Required Affordance (pred)**: file
- **Required Affordance (gold)**: file
- **Correct Tool**: blunt file
- **Predicted Tool**: winebottle
- **Matching Tools**: winebottle
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### repairing items (❌ WRONG)
- **Required Affordance (pred)**: hammer
- **Required Affordance (gold)**: hammer
- **Correct Tool**: carpenter's hammer
- **Predicted Tool**: firmer chisel
- **Matching Tools**: carpenter's hammer, firmer chisel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: hammer

### repairing appliances (✅ CORRECT)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: screw
- **Correct Tool**: spiral ratchet screwdriver
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools**: spiral ratchet screwdriver, book, tennisracket
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: fix, repair

### preparing drinks (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Heavy
  - Deduced Affordances: cut, wrench, repair, change, support, pick, be_heated, carve, contain, spread, handle, dice, fix, pour, wrap, grasp, break, carry

### watching a movie (❌ WRONG)
- **Required Affordance (pred)**: comfort
- **Required Affordance (gold)**: entertain
- **Correct Tool**: cell phone
- **Predicted Tool**: camera
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write

### pouring liquids (✅ CORRECT)
- **Required Affordance (pred)**: pour
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools**: pitcher, float, buffer
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Heavy
  - Deduced Affordances: cut, wrench, repair, change, support, pick, be_heated, carve, contain, spread, handle, dice, fix, pour, wrap, grasp, break, carry
  - Matched via synonyms: pour, spread

### smoothing surfaces (❌ WRONG)
- **Required Affordance (pred)**: file
- **Required Affordance (gold)**: file
- **Correct Tool**: taper file
- **Predicted Tool**: food jar
- **Matching Tools**: food jar
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### hammering nails (✅ CORRECT)
- **Required Affordance (pred)**: hammer
- **Required Affordance (gold)**: hammer
- **Correct Tool**: carpenter's hammer
- **Predicted Tool**: carpenter's hammer
- **Matching Tools**: carpenter's hammer, chain wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: hammer

### spreading icing on a cake (❌ WRONG)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: spread
- **Correct Tool**: pointing trowel
- **Predicted Tool**: pestle
- **Matching Tools**: pestle
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### tightening bolts (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: alligator wrench
- **Predicted Tool**: alligator wrench
- **Matching Tools**: alligator wrench, beading plane, hand mower
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: wrench

### writing a letter (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: write
- **Correct Tool**: laptop
- **Predicted Tool**: can opener
- **Matching Tools**: spade, can opener
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### breaking an egg (❌ WRONG)
- **Required Affordance (pred)**: crack
- **Required Affordance (gold)**: crack
- **Correct Tool**: bowie knife
- **Predicted Tool**: icepick
- **Matching Tools**: bowie knife, tamp, icepick
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: break, crack

### putting objects on high shelf (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: desk
- **Predicted Tool**: desk
- **Matching Tools**: desk
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: wrench, support, pick, contain, operate, decorate, handle, increase, plug, comfort, store, grasp
  - Matched via synonyms: increase

### making a shopping list (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: write
- **Correct Tool**: desktop
- **Predicted Tool**: dog wrench
- **Matching Tools**: dog wrench
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### storing food (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: fish knife
- **Predicted Tool**: microwave
- **Matching Tools**: fish knife, poniard, microwave
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: contain

### increasing brightness of the room (✅ CORRECT)
- **Required Affordance (pred)**: illuminate
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: lightbulb
- **Predicted Tool**: lightbulb
- **Matching Tools**: lightbulb
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: entertain, pick, operate, decorate, increase, grasp, heat, illuminate, break
  - Matched via synonyms: illuminate

### trimming branches (✅ CORRECT)
- **Required Affordance (pred)**: saw
- **Required Affordance (gold)**: saw
- **Correct Tool**: folding saw
- **Predicted Tool**: folding saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsFlexible
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### repairing appliances (❌ WRONG)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: fix
- **Correct Tool**: crampon
- **Predicted Tool**: bore bit
- **Matching Tools**: crampon, openside plane, bore bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: fix, repair

### placing a very delicate artifact on a shelf (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: stool
- **Predicted Tool**: stool
- **Matching Tools**: stool
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: increase

### reading a good night story (✅ CORRECT)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: desktop
- **Predicted Tool**: desktop
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### preparing a sliced apple (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: compass saw
- **Predicted Tool**: tap
- **Matching Tools**: compass saw, tap
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### melting butter (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: toaster
- **Predicted Tool**: toaster
- **Matching Tools**: toaster, palette knife
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, mix, heat
  - Matched via synonyms: heat

### making firewood (✅ CORRECT)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: chop
- **Correct Tool**: fireman's ax
- **Predicted Tool**: fireman's ax
- **Matching Tools**: fireman's ax, bread knife, case knife, chisel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### serving food (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: carry
- **Correct Tool**: vase
- **Predicted Tool**: water bottle
- **Matching Tools**: vase, window, water bottle
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile
  - Deduced Affordances: pick, operate, decorate, plug, break, carry
  - Matched via synonyms: carry

### making breadcrumbs (❌ WRONG)
- **Required Affordance (pred)**: crumble
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: tack hammer
- **Matching Tools**: battering ram, adz, dumbbell, tack hammer, stiletto
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break

### making ice (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: abrader
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### decorating wall (❌ WRONG)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: teddy bear
- **Predicted Tool**: pointing trowel
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, entertain, pick, increase, grasp, illuminate, break

### fixing plumbing (❌ WRONG)
- **Required Affordance (pred)**: solder
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: spade bit
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write

### stabilising objects (❌ WRONG)
- **Required Affordance (pred)**: hold
- **Required Affordance (gold)**: hold
- **Correct Tool**: rib joint plier
- **Predicted Tool**: bolo
- **Matching Tools**: rib joint plier, abrading stone, food cup, hatchel, bolo
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### creating compost (✅ CORRECT)
- **Required Affordance (pred)**: peel
- **Required Affordance (gold)**: peel
- **Correct Tool**: dirk
- **Predicted Tool**: dirk
- **Matching Tools**: dirk
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: peel, skin

### patching walls (✅ CORRECT)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: fix
- **Correct Tool**: stamp
- **Predicted Tool**: stamp
- **Matching Tools**: stamp, bumper jack, ripsaw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Sharp
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, hold, separate, screw, bore, wash, write
  - Matched via synonyms: repair

### opening packages (❌ WRONG)
- **Required Affordance (pred)**: crack
- **Required Affordance (gold)**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: broad hatchet
- **Matching Tools**: bradawl, stillson wrench, yataghan, broad hatchet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break, crack

### changing bicycle components (❌ WRONG)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: box wrench
- **Predicted Tool**: pin wrench
- **Matching Tools**: box wrench, pin wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: wrench

### preparing coffee in a filter (✅ CORRECT)
- **Required Affordance (pred)**: tamp
- **Required Affordance (gold)**: tamp
- **Correct Tool**: tamp
- **Predicted Tool**: tamp
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### ironing clothes (❌ WRONG)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: press
- **Correct Tool**: stemmer
- **Predicted Tool**: bumper jack
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight
  - Deduced Affordances: cut, control, change, repair, pick, install, clean, poke, hold, separate, screw, staple, bore, grasp, wash, break, write

### painting walls (❌ WRONG)
- **Required Affordance (pred)**: beautify
- **Required Affordance (gold)**: beautify
- **Correct Tool**: rat tail file
- **Predicted Tool**: allen wrench
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### making toppings (✅ CORRECT)
- **Required Affordance (pred)**: crunch
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: pestle, bowie knife, battle ax, garden trowel, saw set
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix
  - Matched via synonyms: break

### having a meal (✅ CORRECT)
- **Required Affordance (pred)**: eat
- **Required Affordance (gold)**: eat
- **Correct Tool**: salt
- **Predicted Tool**: salt
- **Matching Tools**: salt
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular
  - Deduced Affordances: cut, eat, pick, clean
  - Matched via synonyms: eat

### boiling water (❌ WRONG)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: plate
- **Predicted Tool**: laundryhamper
- **Matching Tools**: plate, lightbulb, laundryhamper
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: cut, change, repair, support, pick, be_heated, carve, spread, operate, dice, plug, fix, wrap, grasp, break, carry
  - Matched via synonyms: be_heated

### swapping out filters (❌ WRONG)
- **Required Affordance (pred)**: change
- **Required Affordance (gold)**: change
- **Correct Tool**: rock bit
- **Predicted Tool**: broadax
- **Matching Tools**: rock bit, rat tail file, broadax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: change

### packing books for house shifting (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: claw hatchet
- **Matching Tools**: dresser, thinning shear, claw hatchet, axe
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: contain, store

### installing fixtures (❌ WRONG)
- **Required Affordance (pred)**: drill
- **Required Affordance (gold)**: drill
- **Correct Tool**: router
- **Predicted Tool**: scrub plane
- **Matching Tools**: compass saw, scrub plane
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### drying up spilled liquids (✅ CORRECT)
- **Required Affordance (pred)**: dry
- **Required Affordance (gold)**: dry
- **Correct Tool**: kleenex
- **Predicted Tool**: kleenex
- **Matching Tools**: kleenex
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, cut, pick, clean, eat, grasp
  - Matched via synonyms: dry

### setting up bedding (✅ CORRECT)
- **Required Affordance (pred)**: comfort
- **Required Affordance (gold)**: comfort
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools**: ottoman
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: comfort

### preparing food (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: pierce
- **Correct Tool**: punch plier
- **Predicted Tool**: tray
- **Matching Tools**: punch plier, tray, battle ax, cd
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break

### cooking food (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: stoveburner
- **Predicted Tool**: stoveburner
- **Matching Tools**: stoveburner
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated
  - Deduced Affordances: pick, be_heated, contain, mix, heat, carry
  - Matched via synonyms: be_heated, heat

### cleaning surfaces (✅ CORRECT)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: abrading stone
- **Predicted Tool**: abrading stone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### polishing metal objects (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: sandblaster
- **Predicted Tool**: bolt cutter
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### preparing spices (✅ CORRECT)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix

### processing grains (✅ CORRECT)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix

### operating gadgets (❌ WRONG)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: press
- **Correct Tool**: tamp
- **Predicted Tool**: cutter
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### making coffee powder (✅ CORRECT)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix

### pinning items on a wall (❌ WRONG)
- **Required Affordance (pred)**: poke
- **Required Affordance (gold)**: poke
- **Correct Tool**: phillips screwdriver
- **Predicted Tool**: pitsaw
- **Matching Tools**: phillips screwdriver, pitsaw, pitsaw, box wrench, chain saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight, IsRotary
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, drill, control, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: poke

### throwing away used soap bottle (❌ WRONG)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: houseplant
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: HygieneTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, operate, decorate, handle, increase, plug, comfort

### checking the readiness of food (❌ WRONG)
- **Required Affordance (pred)**: poke
- **Required Affordance (gold)**: poke
- **Correct Tool**: screwdriver
- **Predicted Tool**: cigar cutter
- **Matching Tools**: screwdriver, cigar cutter, pipe cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: poke

### creating ventilation (❌ WRONG)
- **Required Affordance (pred)**: slit
- **Required Affordance (gold)**: slit
- **Correct Tool**: knife blade
- **Predicted Tool**: trowel
- **Matching Tools**: knife blade, trowel, electric hammer
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### tilling soil (✅ CORRECT)
- **Required Affordance (pred)**: plow
- **Required Affordance (gold)**: plow
- **Correct Tool**: bull tongue
- **Predicted Tool**: bull tongue
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile
  - Deduced Affordances: cut, pick, clean, eat, break

### storing dog treats (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: desk
- **Predicted Tool**: sidetable
- **Matching Tools**: desk, clipper, hand drill, sidetable
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: wrench, support, pick, contain, operate, decorate, handle, increase, plug, comfort, store, grasp
  - Matched via synonyms: contain, store

### opening packaging (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: break
- **Correct Tool**: folding saw
- **Predicted Tool**: bender
- **Matching Tools**: folding saw, bulldog wrench, bender, shovel, abrading stone
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsFlexible
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break

### preparing food (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: burin
- **Matching Tools**: stemmer, burin, handsaw, rammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight
  - Deduced Affordances: cut, control, change, repair, pick, install, clean, poke, hold, separate, screw, staple, bore, grasp, wash, break, write
  - Matched via synonyms: break

### preparing meats (✅ CORRECT)
- **Required Affordance (pred)**: cube
- **Required Affordance (gold)**: cube
- **Correct Tool**: scalpel
- **Predicted Tool**: scalpel
- **Matching Tools**: scalpel, cap opener, posthole digger, plumber's snake, keyhole saw
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### crafting with wood (❌ WRONG)
- **Required Affordance (pred)**: carve
- **Required Affordance (gold)**: carve
- **Correct Tool**: barong
- **Predicted Tool**: gouge
- **Matching Tools**: bullnose, salt, gouge
- **Correct Tool SOMA Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, pick, grasp

### opening jars (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: grasp
- **Correct Tool**: scauper
- **Predicted Tool**: bolt cutter
- **Matching Tools**: scauper, bolt cutter, potato, core drill, hatchet
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile
  - Deduced Affordances: carry, break, pick, decorate
  - Matched via synonyms: pick

### watching a movie (✅ CORRECT)
- **Required Affordance (pred)**: comfort
- **Required Affordance (gold)**: comfort
- **Correct Tool**: chair
- **Predicted Tool**: chair
- **Matching Tools**: chair, desk
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: comfort

### picking-up objects (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: grasp
- **Correct Tool**: carpenter's mallet
- **Predicted Tool**: ravehook
- **Matching Tools**: carpenter's mallet, diningtable, ravehook, wire cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### controlling devices (❌ WRONG)
- **Required Affordance (pred)**: operate
- **Required Affordance (gold)**: operate
- **Correct Tool**: handsaw
- **Predicted Tool**: tap wrench
- **Matching Tools**: handsaw, tap wrench, jointer, paper cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: operate

### cleaning up spills (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, pick, grasp, clean

### polishing furniture (❌ WRONG)
- **Required Affordance (pred)**: rub
- **Required Affordance (gold)**: rub
- **Correct Tool**: fish knife
- **Predicted Tool**: room decor
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### lighting up a room (✅ CORRECT)
- **Required Affordance (pred)**: illuminate
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: lightbulb
- **Predicted Tool**: lightbulb
- **Matching Tools**: lightbulb
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: entertain, pick, operate, decorate, increase, grasp, heat, illuminate, break
  - Matched via synonyms: illuminate

### cleaning dishes (❌ WRONG)
- **Required Affordance (pred)**: wash
- **Required Affordance (gold)**: wash
- **Correct Tool**: stamping machine
- **Predicted Tool**: plexor.n.wn.medicine
- **Matching Tools**: stamping machine, jack, plexor.n.wn.medicine
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### polishing furniture (✅ CORRECT)
- **Required Affordance (pred)**: rub
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: abrader
- **Predicted Tool**: abrader
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, hold, separate, screw, fix, bore, wash, write

### preparing cleaning solutions (✅ CORRECT)
- **Required Affordance (pred)**: pour
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools**: pitcher, poniard
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Heavy
  - Deduced Affordances: cut, wrench, repair, change, support, pick, be_heated, carve, contain, spread, handle, dice, fix, pour, wrap, grasp, break, carry
  - Matched via synonyms: pour, spread

### preparing vegetables (✅ CORRECT)
- **Required Affordance (pred)**: dice
- **Required Affordance (gold)**: dice
- **Correct Tool**: dirk
- **Predicted Tool**: dirk
- **Matching Tools**: dirk, razor, compass saw
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### sorting items (❌ WRONG)
- **Required Affordance (pred)**: pick
- **Required Affordance (gold)**: pick
- **Correct Tool**: bottle
- **Predicted Tool**: notebook
- **Matching Tools**: bottle, coffee, notebook, cold chisel, watering can
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer, Lightweight
  - Deduced Affordances: dispose, support, pick, be_heated, contain, cool, hold, polish, store, wrap, grasp, break, file, carry
  - Matched via synonyms: grasp, hold, pick

### labeling items (❌ WRONG)
- **Required Affordance (pred)**: mark
- **Required Affordance (gold)**: mark
- **Correct Tool**: o ring
- **Predicted Tool**: shaping tool
- **Matching Tools**: folding saw, shaping tool
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Fragile
  - Deduced Affordances: cut, clean, hold, screw, eat, grasp, break

### changing bed sheets (❌ WRONG)
- **Required Affordance (pred)**: change
- **Required Affordance (gold)**: change
- **Correct Tool**: ram
- **Predicted Tool**: toothpick
- **Matching Tools**: ram, razor, toothpick, crosscut saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: change

### removing moisture (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, pick, grasp, clean

### repairing electronics (✅ CORRECT)
- **Required Affordance (pred)**: solder
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write

### securing items (❌ WRONG)
- **Required Affordance (pred)**: cover
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: snuffer
- **Matching Tools**: snuffer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### hanging a picture on a wall (✅ CORRECT)
- **Required Affordance (pred)**: hammer
- **Required Affordance (gold)**: hammer
- **Correct Tool**: tack hammer
- **Predicted Tool**: tack hammer
- **Matching Tools**: tack hammer, torque wrench, power tool
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: hammer

### doing laundry (❌ WRONG)
- **Required Affordance (pred)**: wash
- **Required Affordance (gold)**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: burin
- **Matching Tools**: compass saw, burin, monkey wrench, pin wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### mounting hardware (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: screw
- **Correct Tool**: spiral ratchet screwdriver
- **Predicted Tool**: straightedge
- **Matching Tools**: spiral ratchet screwdriver, stemmer, chisel, straightedge
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: screw

### cleaning spilled milk (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: wateringcan
- **Matching Tools**: round file, compass saw, wateringcan
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: HygieneTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, operate, decorate, handle, increase, plug, comfort

### storing important documents (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: book
- **Matching Tools**: dresser, ottoman, clasp knife, trench knife, book
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: contain, store

### preparing food (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: eat
- **Correct Tool**: potato
- **Predicted Tool**: nailfile
- **Matching Tools**: crank, dumbbell, nailfile
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Granular
  - Deduced Affordances: cut, pick, clean, contain, mix, eat

### cleaning the shower head (✅ CORRECT)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: towel
- **Predicted Tool**: towel
- **Matching Tools**: towel, head gasket
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: dry, pick, clean
  - Matched via synonyms: clean

### cleaning the blinds (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: bandsaw
- **Predicted Tool**: plunger
- **Matching Tools**: bandsaw, plunger, lancet, drilling bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### replacing light bulbs (❌ WRONG)
- **Required Affordance (pred)**: change
- **Required Affordance (gold)**: change
- **Correct Tool**: signet
- **Predicted Tool**: clincher
- **Matching Tools**: signet, pitchfork, pruning saw, clincher, portable saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: change

### labelling items (✅ CORRECT)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: write
- **Correct Tool**: pencil
- **Predicted Tool**: pencil
- **Matching Tools**: pencil, garden tool, carpenter's mallet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: cut, install, staple, break, repair, poke, grasp, change, pick, control, operate, hold, separate, plug, fix, store, bore, wash, write
  - Matched via synonyms: write

### serving a dish (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: carry
- **Correct Tool**: watering can
- **Predicted Tool**: combination plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, hold, separate, screw, fix, pour, bore, wash, write

### bending pipes (✅ CORRECT)
- **Required Affordance (pred)**: flex
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### carrying items (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: grasp
- **Correct Tool**: soldering iron
- **Predicted Tool**: basketball
- **Matching Tools**: soldering iron, rock bit, ripping chisel, basketball, surgical knife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### keeping up to date (✅ CORRECT)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: laptop
- **Predicted Tool**: laptop
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### breaking up compacted soil (❌ WRONG)
- **Required Affordance (pred)**: plow
- **Required Affordance (gold)**: plow
- **Correct Tool**: bull tongue
- **Predicted Tool**: pincer
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile
  - Deduced Affordances: cut, pick, clean, eat, break

### applying spreads on bread (✅ CORRECT)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: spread
- **Correct Tool**: palette knife
- **Predicted Tool**: palette knife
- **Matching Tools**: palette knife, hunting knife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: spread

### picking up items (❌ WRONG)
- **Required Affordance (pred)**: pick
- **Required Affordance (gold)**: pick
- **Correct Tool**: baseballbat
- **Predicted Tool**: clipper
- **Matching Tools**: baseballbat, clipper, seal, saw, desklamp
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### carrying objects (❌ WRONG)
- **Required Affordance (pred)**: lift
- **Required Affordance (gold)**: lift
- **Correct Tool**: hayfork
- **Predicted Tool**: camera
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### being cooked (✅ CORRECT)
- **Required Affordance (pred)**: eat
- **Required Affordance (gold)**: eat
- **Correct Tool**: bread
- **Predicted Tool**: bread
- **Matching Tools**: bread
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular
  - Deduced Affordances: cut, eat, pick, clean
  - Matched via synonyms: eat

### carrying items (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: hold
- **Correct Tool**: clipper
- **Predicted Tool**: food box
- **Matching Tools**: clipper, carpenter's hammer, food box, icepick, ottoman
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### removing isolation from wires (✅ CORRECT)
- **Required Affordance (pred)**: strip
- **Required Affordance (gold)**: strip
- **Correct Tool**: wire stripper
- **Predicted Tool**: wire stripper
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid, HasBlade
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### distributing cleaning products (✅ CORRECT)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: spread
- **Correct Tool**: tableknife
- **Predicted Tool**: tableknife
- **Matching Tools**: tableknife, fork
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: spread

### heating coffee (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools**: coffee machine
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: EatingDrinkingTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, heat
  - Matched via synonyms: heat

### shielding surfaces (❌ WRONG)
- **Required Affordance (pred)**: cover
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: set square
- **Matching Tools**: set square
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### throwing away uneaten food (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: tableknife
- **Predicted Tool**: eolith
- **Matching Tools**: eolith
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### storing clean utensils (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: desk
- **Predicted Tool**: palette knife
- **Matching Tools**: desk, croupier's rake, dumbell, palette knife
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: wrench, support, pick, contain, operate, decorate, handle, increase, plug, comfort, store, grasp
  - Matched via synonyms: contain, store

### cleaning spilled milk (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: jigsaw
- **Predicted Tool**: battering ram
- **Matching Tools**: jigsaw, grapnel, lancet, battering ram
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### organizing documents (❌ WRONG)
- **Required Affordance (pred)**: file
- **Required Affordance (gold)**: staple
- **Correct Tool**: stapler
- **Predicted Tool**: dado plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: install
- **Correct Tool**: coping saw
- **Predicted Tool**: electric hammer
- **Matching Tools**: coping saw, gouge, electric hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: bore

### washing dishes (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wash
- **Correct Tool**: keyhole saw
- **Predicted Tool**: shaver
- **Matching Tools**: keyhole saw, bit, shaver, dumbell
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### grinding surfaces (❌ WRONG)
- **Required Affordance (pred)**: flex
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: dovetail plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### accessing high shelves (❌ WRONG)
- **Required Affordance (pred)**: lift
- **Required Affordance (gold)**: lift
- **Correct Tool**: hayfork
- **Predicted Tool**: towelholder
- **Matching Tools**: towelholder
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### making garnishes (✅ CORRECT)
- **Required Affordance (pred)**: peel
- **Required Affordance (gold)**: peel
- **Correct Tool**: linoleum knife
- **Predicted Tool**: linoleum knife
- **Matching Tools**: linoleum knife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: peel, skin

### enhancing glass surfaces (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: flat file
- **Predicted Tool**: dresser
- **Matching Tools**: flat file, dresser
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Flexible
  - Deduced Affordances: dispose, support, pick, be_heated, cool, hold, polish, store, wrap, grasp, break, file, carry
  - Matched via synonyms: polish

### reheating soup (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: heat
- **Correct Tool**: microwave
- **Predicted Tool**: microwave
- **Matching Tools**: microwave
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: CookwareRole
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, contain, operate, handle, heat
  - Matched via synonyms: heat

### being filled with a liquid (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: table knife
- **Predicted Tool**: crosscut saw
- **Matching Tools**: table knife, lochaber ax, crosscut saw, flat file
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: contain

### wiping a surface clean (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: wipe
- **Correct Tool**: case knife
- **Predicted Tool**: trowel
- **Matching Tools**: sandblaster, trowel, jackscrew
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### reading instructions (✅ CORRECT)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write

### assembling furniture (✅ CORRECT)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: drill
- **Correct Tool**: star drill
- **Predicted Tool**: star drill
- **Matching Tools**: star drill, chamfer bit, cellphone, bandsaw, garden spade
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: bore, drill

### applying butter (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: twist bit
- **Predicted Tool**: bolt cutter
- **Matching Tools**: twist bit, bolt cutter, surgical knife, fireman's ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### decorating a room (✅ CORRECT)
- **Required Affordance (pred)**: beautify
- **Required Affordance (gold)**: beautify
- **Correct Tool**: steel wool pad
- **Predicted Tool**: steel wool pad
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Granular, Fragile
  - Deduced Affordances: break, clean

### clearing the drain (✅ CORRECT)
- **Required Affordance (pred)**: unclog
- **Required Affordance (gold)**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: trap and drain auger
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### fitting flexible piping (❌ WRONG)
- **Required Affordance (pred)**: bend
- **Required Affordance (gold)**: bend
- **Correct Tool**: saw set
- **Predicted Tool**: pruning saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### decorating bed (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: room decor
- **Predicted Tool**: room decor
- **Matching Tools**: room decor
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, entertain, pick, decorate, increase, grasp, illuminate, break, carry
  - Matched via synonyms: decorate

### preparing drinks (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: mix
- **Correct Tool**: spoon
- **Predicted Tool**: spoon
- **Matching Tools**: spoon
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, Sharp
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: mix

### managing lighting (✅ CORRECT)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: control
- **Correct Tool**: electric hammer
- **Predicted Tool**: electric hammer
- **Matching Tools**: electric hammer, machete
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: control

### eating dinner (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: support
- **Correct Tool**: stool
- **Predicted Tool**: bed
- **Matching Tools**: stool, bed
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: support

### keeping sporting equipment (✅ CORRECT)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools**: box, straight razor, showercurtain, circular saw, ottoman
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: dispose, wrench, support, pick, be_heated, contain, cool, operate, handle, polish, hold, plug, store, wrap, grasp, break, file, carry
  - Matched via synonyms: contain, store

### setting up appliances (❌ WRONG)
- **Required Affordance (pred)**: install
- **Required Affordance (gold)**: install
- **Correct Tool**: two handed saw
- **Predicted Tool**: rammer
- **Matching Tools**: two handed saw, broad hatchet, rammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: install

### preparing toppings (❌ WRONG)
- **Required Affordance (pred)**: crumble
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: handtowelholder
- **Matching Tools**: battering ram, ripping chisel, handtowelholder
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break

### sawing flooring planks (❌ WRONG)
- **Required Affordance (pred)**: saw
- **Required Affordance (gold)**: saw
- **Correct Tool**: pitsaw
- **Predicted Tool**: folding saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### cleaning as a home workout (❌ WRONG)
- **Required Affordance (pred)**: exercise
- **Required Affordance (gold)**: exercise
- **Correct Tool**: basket ball
- **Predicted Tool**: scrub brush
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: entertain, pick, operate, increase, plug, grasp, illuminate, break

### maintaining plumbing (❌ WRONG)
- **Required Affordance (pred)**: repair
- **Required Affordance (gold)**: repair
- **Correct Tool**: buffer
- **Predicted Tool**: wateringcan
- **Matching Tools**: fireman's ax, rubber eraser, wateringcan
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid
  - Deduced Affordances: pour, pick, clean

### protecting food (❌ WRONG)
- **Required Affordance (pred)**: cover
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: laundry hamper
- **Matching Tools**: laundry hamper
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### repairing books (❌ WRONG)
- **Required Affordance (pred)**: staple
- **Required Affordance (gold)**: staple
- **Correct Tool**: stapler
- **Predicted Tool**: lancet
- **Matching Tools**: stapler, carriage wrench, lancet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: staple

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: hammer
- **Correct Tool**: triphammer
- **Predicted Tool**: corkscrew
- **Matching Tools**: triphammer, bore bit, pitchfork, corkscrew
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: bore

### cleaning the floor (✅ CORRECT)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: power saw
- **Predicted Tool**: power saw
- **Matching Tools**: power saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### measuring ingredients (❌ WRONG)
- **Required Affordance (pred)**: dice
- **Required Affordance (gold)**: scoop
- **Correct Tool**: slick
- **Predicted Tool**: scriber
- **Matching Tools**: lancet, scriber, jigsaw
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid
  - Deduced Affordances: pour, pick, clean

### hanging poster (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: side table
- **Predicted Tool**: side table
- **Matching Tools**: side table, curtain
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: increase

### preparing food (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: break
- **Correct Tool**: jigsaw
- **Predicted Tool**: steak knife
- **Matching Tools**: jigsaw, steak knife, soap bar, steel wool pad, lightbulb
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break

### moving furniture (❌ WRONG)
- **Required Affordance (pred)**: lift
- **Required Affordance (gold)**: lift
- **Correct Tool**: pitchfork
- **Predicted Tool**: shelving unit
- **Matching Tools**: cd, laundry hamper, shelving unit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### packing soil (❌ WRONG)
- **Required Affordance (pred)**: tamp
- **Required Affordance (gold)**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: scraper
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight
  - Deduced Affordances: cut, control, change, repair, pick, install, clean, poke, hold, separate, screw, staple, bore, grasp, wash, break, write

### handling tools (❌ WRONG)
- **Required Affordance (pred)**: operate
- **Required Affordance (gold)**: operate
- **Correct Tool**: compass saw
- **Predicted Tool**: ram
- **Matching Tools**: compass saw, ram, riding mower, circular plane, rake
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: operate

### baking pastries (❌ WRONG)
- **Required Affordance (pred)**: crumble
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: razorblade
- **Matching Tools**: battering ram, razorblade, mallet, fireman's ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: break

### melting butter (❌ WRONG)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: catling
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write

### managing waste (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: tray
- **Predicted Tool**: tray
- **Matching Tools**: tray, arm chair, baseballbat
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: cut, change, repair, support, pick, be_heated, carve, contain, spread, operate, mix, dice, plug, fix, wrap, grasp, break, carry
  - Matched via synonyms: contain

### measuring ingredients (✅ CORRECT)
- **Required Affordance (pred)**: dice
- **Required Affordance (gold)**: dice
- **Correct Tool**: dagger
- **Predicted Tool**: dagger
- **Matching Tools**: dagger, pipe cutter, parang, graver
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### showcasing decorations (✅ CORRECT)
- **Required Affordance (pred)**: display
- **Required Affordance (gold)**: display
- **Correct Tool**: calculator
- **Predicted Tool**: calculator
- **Matching Tools**: calculator
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write
  - Matched via synonyms: display

### dusting the statue (✅ CORRECT)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: power tool
- **Predicted Tool**: power tool
- **Matching Tools**: power tool, toilet paper
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### finding buried treasures (✅ CORRECT)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: dig
- **Correct Tool**: shovel
- **Predicted Tool**: shovel
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, plug, fix, bore, wash, write

### fixing broken appliances (❌ WRONG)
- **Required Affordance (pred)**: repair
- **Required Affordance (gold)**: repair
- **Correct Tool**: chamfer plane
- **Predicted Tool**: adz
- **Matching Tools**: chamfer plane, palette knife, tap wrench, adz, rasp
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: fix, repair

### mounting fixtures (❌ WRONG)
- **Required Affordance (pred)**: install
- **Required Affordance (gold)**: install
- **Correct Tool**: pruner
- **Predicted Tool**: parang
- **Matching Tools**: pruner, moldboard plow, parang
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: install

### playing active games (✅ CORRECT)
- **Required Affordance (pred)**: exercise
- **Required Affordance (gold)**: exercise
- **Correct Tool**: basket ball
- **Predicted Tool**: basket ball
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: entertain, pick, operate, increase, plug, grasp, illuminate, break

### adjusting fixtures (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: monkey wrench
- **Predicted Tool**: monkey wrench
- **Matching Tools**: monkey wrench, box wrench, bathtubbasin
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: wrench

### throwing away uneaten food (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: plate
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: HygieneTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, operate, decorate, handle, increase, plug, comfort

### decorating pumpkins (❌ WRONG)
- **Required Affordance (pred)**: carve
- **Required Affordance (gold)**: carve
- **Correct Tool**: yataghan
- **Predicted Tool**: taper file
- **Matching Tools**: yataghan, taper file, sawmill
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### cutting wood (✅ CORRECT)
- **Required Affordance (pred)**: saw
- **Required Affordance (gold)**: saw
- **Correct Tool**: pruning saw
- **Predicted Tool**: pruning saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### freezing food (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: seal
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### cleaning surfaces (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: rub
- **Correct Tool**: table knife
- **Predicted Tool**: linoleum knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### making jewelery (❌ WRONG)
- **Required Affordance (pred)**: solder
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: kitchen knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write

### making ice cubes (❌ WRONG)
- **Required Affordance (pred)**: cube
- **Required Affordance (gold)**: cube
- **Correct Tool**: steak knife
- **Predicted Tool**: bolo
- **Matching Tools**: steak knife, bolo, drawknife, locking plier
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### creating a drainage (❌ WRONG)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: poke
- **Correct Tool**: screwdriver
- **Predicted Tool**: air hammer
- **Matching Tools**: screwdriver, air hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: poke

### keeping food from going bad (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: side table
- **Matching Tools**: side table
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### measuring distances (❌ WRONG)
- **Required Affordance (pred)**: mark
- **Required Affordance (gold)**: mark
- **Correct Tool**: signet
- **Predicted Tool**: hayfork
- **Matching Tools**: signet, hayfork, stemmer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: write

### removing dirt from your teeth (✅ CORRECT)
- **Required Affordance (pred)**: stick
- **Required Affordance (gold)**: stick
- **Correct Tool**: toothpick
- **Predicted Tool**: toothpick
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Lightweight
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, hold, separate, fix

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: bore
- **Correct Tool**: router
- **Predicted Tool**: stapler
- **Matching Tools**: chamfer plane, crown saw, stapler, hammer
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### removing skin from fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: peel
- **Required Affordance (gold)**: peel
- **Correct Tool**: parer
- **Predicted Tool**: parer
- **Matching Tools**: parer, handstamp
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: peel, skin

### storing cereal box (✅ CORRECT)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools**: box, food cup, dumbbell
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: dispose, wrench, support, pick, be_heated, contain, cool, operate, handle, polish, hold, plug, store, wrap, grasp, break, file, carry
  - Matched via synonyms: contain, store

### melting envelope wax (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools**: coffee machine
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: EatingDrinkingTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, heat
  - Matched via synonyms: heat

### preparing soil (✅ CORRECT)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: dig
- **Correct Tool**: garden spade
- **Predicted Tool**: garden spade
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### removing stains (❌ WRONG)
- **Required Affordance (pred)**: rub
- **Required Affordance (gold)**: rub
- **Correct Tool**: tableknife
- **Predicted Tool**: keyhole saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### cleaning a litter box (❌ WRONG)
- **Required Affordance (pred)**: scoop
- **Required Affordance (gold)**: scoop
- **Correct Tool**: trowel
- **Predicted Tool**: slick
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### getting a book from a high shelf (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: arm chair
- **Predicted Tool**: arm chair
- **Matching Tools**: arm chair
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, entertain, support, pick, contain, operate, handle, decorate, increase, plug, comfort, illuminate, break
  - Matched via synonyms: increase

### fixing light bulb outside your house (✅ CORRECT)
- **Required Affordance (pred)**: increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: sofa
- **Predicted Tool**: sofa
- **Matching Tools**: sofa
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, entertain, support, pick, contain, operate, handle, decorate, increase, plug, comfort, illuminate, break
  - Matched via synonyms: increase

### enjoying leisure time (❌ WRONG)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: desktop
- **Predicted Tool**: handtowel
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat

### preparing fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: cube
- **Required Affordance (gold)**: cube
- **Correct Tool**: table knife
- **Predicted Tool**: table knife
- **Matching Tools**: table knife, allen wrench, remotecontrol, lightswitch
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: carve, cube, cut, dice, separate

### carrying containers (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: handle
- **Correct Tool**: router
- **Predicted Tool**: roomdecor
- **Matching Tools**: router, alligator wrench, roomdecor, punch, dogbed
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, pick, contain, operate, handle, store, grasp, heat
  - Matched via synonyms: grasp, handle, pick

### breaking apart food items (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: break
- **Correct Tool**: bottle
- **Predicted Tool**: hand ax
- **Matching Tools**: bottle, o ring, hand ax, cigar cutter
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer, Lightweight
  - Deduced Affordances: dispose, support, pick, be_heated, contain, cool, hold, polish, store, wrap, grasp, break, file, carry
  - Matched via synonyms: break

### presenting information (✅ CORRECT)
- **Required Affordance (pred)**: display
- **Required Affordance (gold)**: display
- **Correct Tool**: calculator
- **Predicted Tool**: calculator
- **Matching Tools**: calculator
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write
  - Matched via synonyms: display

### removing unhealthy plant parts (✅ CORRECT)
- **Required Affordance (pred)**: skin
- **Required Affordance (gold)**: skin
- **Correct Tool**: kitchen knife
- **Predicted Tool**: kitchen knife
- **Matching Tools**: kitchen knife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: peel, skin

### preparing cooking ingredients (❌ WRONG)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: chop
- **Correct Tool**: half hatchet
- **Predicted Tool**: butcher knife
- **Matching Tools**: half hatchet, bread, butcher knife, pruning shear
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cut, separate

### removing old fixtures (❌ WRONG)
- **Required Affordance (pred)**: hammer
- **Required Affordance (gold)**: hammer
- **Correct Tool**: scythe
- **Predicted Tool**: chisel
- **Matching Tools**: scythe, ram, chisel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: hammer

### exercising (❌ WRONG)
- **Required Affordance (pred)**: exercise
- **Required Affordance (gold)**: exercise
- **Correct Tool**: tennis racket
- **Predicted Tool**: adz
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: cut, entertain, install, increase, staple, break, repair, poke, grasp, change, pick, control, operate, hold, separate, plug, fix, bore, wash, illuminate, write

### creating a drainage (❌ WRONG)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: pierce
- **Correct Tool**: punch
- **Predicted Tool**: broad hatchet
- **Matching Tools**: punch, hand drill, broad hatchet, hook wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Fragile, Sharp
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, hold, separate, screw, bore, wash, write
  - Matched via synonyms: poke

### applying make-up (❌ WRONG)
- **Required Affordance (pred)**: beautify
- **Required Affordance (gold)**: beautify
- **Correct Tool**: nailfile
- **Predicted Tool**: handstamp
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write

### using appliances with a button (❌ WRONG)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: press
- **Correct Tool**: tamp
- **Predicted Tool**: edger
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### opening packages (✅ CORRECT)
- **Required Affordance (pred)**: crack
- **Required Affordance (gold)**: crack
- **Correct Tool**: parer
- **Predicted Tool**: parer
- **Matching Tools**: parer, slip joint plier, gutter, handtowelholder, glue stick
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: break, crack

### decreasing darkness (✅ CORRECT)
- **Required Affordance (pred)**: illuminate
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools**: curtain
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: dry, entertain, pick, decorate, increase, grasp, illuminate, break, carry
  - Matched via synonyms: illuminate

### combining cleaning solutions (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: mix
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: pestle
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix
  - Matched via synonyms: mix

### harvesting produce (✅ CORRECT)
- **Required Affordance (pred)**: pick
- **Required Affordance (gold)**: pick
- **Correct Tool**: garden rake
- **Predicted Tool**: garden rake
- **Matching Tools**: garden rake, gangsaw, moldboard plow, pot, wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### reducing space in bin (❌ WRONG)
- **Required Affordance (pred)**: compress
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: bucksaw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight
  - Deduced Affordances: cut, control, change, repair, pick, install, clean, poke, hold, separate, screw, staple, bore, grasp, wash, break, write

### charging devices (❌ WRONG)
- **Required Affordance (pred)**: plug
- **Required Affordance (gold)**: plug
- **Correct Tool**: pneumatic drill
- **Predicted Tool**: box
- **Matching Tools**: pneumatic drill, keychain, box, dagger
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: plug

### cleaning a surface (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: wipe
- **Correct Tool**: butter knife
- **Predicted Tool**: nailfile
- **Matching Tools**: nailfile
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### loosening bolts (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: brace wrench
- **Predicted Tool**: brace wrench
- **Matching Tools**: brace wrench, crank, spade bit, circular saw, television
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: wrench

### removing adhesives (❌ WRONG)
- **Required Affordance (pred)**: melt
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: dirk
- **Matching Tools**: dirk
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement
  - Deduced Affordances: cut, install, handle, staple, break, repair, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, fix, bore, wash, write

### personalising items (❌ WRONG)
- **Required Affordance (pred)**: engrave
- **Required Affordance (gold)**: engrave
- **Correct Tool**: scauper
- **Predicted Tool**: awl
- **Matching Tools**: bit, awl, rasp, jointer
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile
  - Deduced Affordances: carry, break, pick, decorate

### opening an envelope (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools**: blade, keychain, cup, bottle opener
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, plug, fix, bore, wash, write
  - Matched via synonyms: cube, cut, separate

### managing schedules (✅ CORRECT)
- **Required Affordance (pred)**: time
- **Required Affordance (gold)**: time
- **Correct Tool**: watch
- **Predicted Tool**: watch
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: entertain, pick, operate, increase, plug, grasp, illuminate, break

### mixing ingredients (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: mix
- **Correct Tool**: butter knife
- **Predicted Tool**: butter knife
- **Matching Tools**: butter knife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: mix

### storing food (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: wrap
- **Correct Tool**: ball
- **Predicted Tool**: pallet
- **Matching Tools**: parer, pallet, awl
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: entertain, pick, operate, increase, plug, grasp, illuminate, break

### serving cake (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: cutter
- **Predicted Tool**: kitchen knife
- **Matching Tools**: cutter, cellphone, kitchen knife, locking plier
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, install, crack, staple, break, repair, skin, clean, poke, grasp, change, pick, control, cube, peel, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: cube, cut, separate

### reheating coffee (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: pan
- **Matching Tools**: pan, desk lamp
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid
  - Deduced Affordances: pick, be_heated, contain, operate, mix, plug, heat, carry
  - Matched via synonyms: be_heated, heat

### using appliances (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: handle
- **Correct Tool**: drum sander
- **Predicted Tool**: lawn mower
- **Matching Tools**: drum sander, lawn mower, toiletpaperhanger, paper box, bath tub basin
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### screwing in screws (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: screw
- **Correct Tool**: phillips screwdriver
- **Predicted Tool**: drill
- **Matching Tools**: phillips screwdriver, drill, cap opener
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight, IsRotary
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, drill, control, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: screw

### labelling belongings (❌ WRONG)
- **Required Affordance (pred)**: engrave
- **Required Affordance (gold)**: engrave
- **Correct Tool**: scauper
- **Predicted Tool**: drilling bit
- **Matching Tools**: drilling bit
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile
  - Deduced Affordances: carry, break, pick, decorate

### patching damages furniture (❌ WRONG)
- **Required Affordance (pred)**: repair
- **Required Affordance (gold)**: repair
- **Correct Tool**: chain saw
- **Predicted Tool**: toiletpaperhanger
- **Matching Tools**: chain saw, hammer, toiletpaperhanger, center bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: fix, repair

### hanging items on a wall (❌ WRONG)
- **Required Affordance (pred)**: drill
- **Required Affordance (gold)**: drill
- **Correct Tool**: drill
- **Predicted Tool**: tap wrench
- **Matching Tools**: drill, tap wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: bore, drill

### adjusting blinds (✅ CORRECT)
- **Required Affordance (pred)**: bend
- **Required Affordance (gold)**: bend
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### keeping dirty clothes (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: bricklayer's hammer
- **Matching Tools**: dresser, bricklayer's hammer, hand tool, shovel
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: contain, store

### organizing documents (❌ WRONG)
- **Required Affordance (pred)**: file
- **Required Affordance (gold)**: file
- **Correct Tool**: taper file
- **Predicted Tool**: spray bottle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: cut, install, staple, break, repair, clean, poke, grasp, change, pick, control, operate, hold, separate, screw, plug, fix, bore, wash, write

### creating decorative art (✅ CORRECT)
- **Required Affordance (pred)**: engrave
- **Required Affordance (gold)**: engrave
- **Correct Tool**: graver
- **Predicted Tool**: graver
- **Matching Tools**: graver, ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: write

### choosing a comfortable seat (✅ CORRECT)
- **Required Affordance (pred)**: comfort
- **Required Affordance (gold)**: comfort
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools**: ottoman
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: wrench, support, pick, contain, cool, operate, handle, polish, decorate, plug, hold, store, increase, comfort, file
  - Matched via synonyms: comfort

### installing shelves (❌ WRONG)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: bore
- **Correct Tool**: bucksaw
- **Predicted Tool**: ax
- **Matching Tools**: bucksaw, ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, drill, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: bore, drill

### hanging pictures (❌ WRONG)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: bore
- **Correct Tool**: straight flute
- **Predicted Tool**: jack plane
- **Matching Tools**: jack plane, stamp
- **Correct Tool SOMA Features**:
  - Roles: MusicalInstrumentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: entertain, pick, operate, increase, plug, grasp, illuminate, break

### rolling out dough (❌ WRONG)
- **Required Affordance (pred)**: roll
- **Required Affordance (gold)**: roll
- **Correct Tool**: flashlight
- **Predicted Tool**: beading plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: cut, entertain, install, increase, staple, break, repair, poke, grasp, change, pick, control, operate, hold, separate, bore, wash, illuminate, write

### washing your face (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: electric hammer
- **Predicted Tool**: bolt cutter
- **Matching Tools**: electric hammer, bolt cutter, pruning saw, ice ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: clean, wash

### removing stains (❌ WRONG)
- **Required Affordance (pred)**: rub
- **Required Affordance (gold)**: wipe
- **Correct Tool**: butter knife
- **Predicted Tool**: stool
- **Matching Tools**: stool
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix

### measuring liquids (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: butter knife
- **Predicted Tool**: butter knife
- **Matching Tools**: butter knife, pitchfork, weeder, wrench, cell phone
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: cut, be_heated, crack, break, repair, skin, mix, wrap, grasp, change, pick, spread, dice, carry, support, cube, carve, contain, peel, operate, hold, separate, plug, fix
  - Matched via synonyms: contain

### preparing snacks (✅ CORRECT)
- **Required Affordance (pred)**: crunch
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: pestle, flat file, cigar cutter, hayfork, egg
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade
  - Deduced Affordances: cut, be_heated, handle, break, repair, mix, wrap, grasp, change, pick, spread, dice, carry, wrench, support, carve, contain, operate, plug, fix
  - Matched via synonyms: break

### listening to a song (✅ CORRECT)
- **Required Affordance (pred)**: entertain
- **Required Affordance (gold)**: entertain
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: cut, control, change, repair, display, pick, install, poke, operate, hold, separate, staple, bore, store, grasp, wash, break, write

### adjusting cables (✅ CORRECT)
- **Required Affordance (pred)**: flex
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### opening doors and cabinets (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: handle
- **Correct Tool**: two handed saw
- **Predicted Tool**: hand ax
- **Matching Tools**: two handed saw, rock bit, tire iron, roach clip, hand ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: grasp, handle, hold, pick

### shaping wire (❌ WRONG)
- **Required Affordance (pred)**: bend
- **Required Affordance (gold)**: bend
- **Correct Tool**: bender
- **Predicted Tool**: drawknife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write

### operating appliances (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: control
- **Correct Tool**: compass saw
- **Predicted Tool**: toiletpaperhanger
- **Matching Tools**: compass saw, bender, toiletpaperhanger
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: cut, install, handle, staple, break, repair, hammer, clean, poke, grasp, change, pick, control, wrench, contain, operate, hold, separate, screw, plug, fix, bore, wash, write
  - Matched via synonyms: control

