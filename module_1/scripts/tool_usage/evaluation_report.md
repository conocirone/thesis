# Online Phase Evaluation Report — Tool Usage Task

Evaluation of the Neuro-Symbolic pipeline against the Robo-CSK-Benchmark tool_usage task.

- **Total Questions Tested**: 291
- **Accuracy**: 39.86%
- **Correct Predictions**: 116/291

- **Affordance Prediction Accuracy**: 38.8%

### Match Diagnostics
- Single match: 44 (15.1%)
- Multiple matches: 168 (57.7%)
- No match (fallback): 79 (27.1%)
- Matches gained via synonym expansion: 135
- Affordance prediction accuracy (exact): 38.8%
- Affordance prediction accuracy (with synonyms): 58.1%

### Per-Affordance Accuracy
| Affordance | Correct | Total | Accuracy |
|------------|---------|-------|----------|
| absorb | 3 | 3 | 100.0% |
| be_heated | 3 | 5 | 60.0% |
| beautify | 0 | 4 | 0.0% |
| bend | 2 | 3 | 66.7% |
| bore | 2 | 3 | 66.7% |
| break | 0 | 3 | 0.0% |
| carry | 2 | 4 | 50.0% |
| carve | 1 | 3 | 33.3% |
| change | 0 | 3 | 0.0% |
| chop | 1 | 3 | 33.3% |
| clean | 0 | 11 | 0.0% |
| comfort | 2 | 3 | 66.7% |
| compress | 2 | 3 | 66.7% |
| contain | 1 | 4 | 25.0% |
| control | 0 | 3 | 0.0% |
| cool | 0 | 4 | 0.0% |
| cover | 0 | 3 | 0.0% |
| crack | 1 | 3 | 33.3% |
| crumble | 0 | 3 | 0.0% |
| crunch | 0 | 3 | 0.0% |
| cube | 1 | 3 | 33.3% |
| cut | 2 | 5 | 40.0% |
| decorate | 4 | 5 | 80.0% |
| dice | 2 | 4 | 50.0% |
| dig | 3 | 3 | 100.0% |
| display | 3 | 3 | 100.0% |
| dispose | 3 | 4 | 75.0% |
| drill | 1 | 3 | 33.3% |
| dry | 2 | 3 | 66.7% |
| eat | 3 | 3 | 100.0% |
| engrave | 1 | 3 | 33.3% |
| entertain | 2 | 3 | 66.7% |
| exercise | 1 | 3 | 33.3% |
| file | 1 | 3 | 33.3% |
| fix | 0 | 3 | 0.0% |
| flex | 2 | 3 | 66.7% |
| grasp | 0 | 4 | 0.0% |
| grind | 3 | 3 | 100.0% |
| hammer | 2 | 5 | 40.0% |
| handle | 0 | 3 | 0.0% |
| heat | 6 | 6 | 100.0% |
| hold | 0 | 3 | 0.0% |
| illuminate | 3 | 3 | 100.0% |
| increase | 3 | 7 | 42.9% |
| install | 0 | 3 | 0.0% |
| lift | 0 | 3 | 0.0% |
| mark | 0 | 3 | 0.0% |
| melt | 0 | 3 | 0.0% |
| mix | 3 | 3 | 100.0% |
| operate | 1 | 3 | 33.3% |
| peel | 2 | 3 | 66.7% |
| pick | 1 | 3 | 33.3% |
| pierce | 1 | 4 | 25.0% |
| plow | 2 | 3 | 66.7% |
| plug | 0 | 3 | 0.0% |
| poke | 1 | 3 | 33.3% |
| polish | 0 | 4 | 0.0% |
| pour | 3 | 3 | 100.0% |
| press | 0 | 3 | 0.0% |
| read | 2 | 4 | 50.0% |
| repair | 0 | 3 | 0.0% |
| roll | 0 | 2 | 0.0% |
| rub | 0 | 3 | 0.0% |
| saw | 2 | 3 | 66.7% |
| scoop | 0 | 3 | 0.0% |
| screw | 3 | 4 | 75.0% |
| separate | 0 | 2 | 0.0% |
| shape | 0 | 1 | 0.0% |
| skin | 2 | 3 | 66.7% |
| slit | 1 | 3 | 33.3% |
| smoothen | 2 | 3 | 66.7% |
| solder | 1 | 3 | 33.3% |
| spread | 1 | 3 | 33.3% |
| staple | 1 | 2 | 50.0% |
| stick | 0 | 1 | 0.0% |
| store | 7 | 9 | 77.8% |
| strip | 1 | 1 | 100.0% |
| support | 2 | 3 | 66.7% |
| tamp | 0 | 3 | 0.0% |
| time | 2 | 2 | 100.0% |
| unclog | 2 | 3 | 66.7% |
| wash | 0 | 5 | 0.0% |
| wipe | 0 | 3 | 0.0% |
| wrap | 0 | 2 | 0.0% |
| wrench | 3 | 4 | 75.0% |
| write | 2 | 4 | 50.0% |

## Test Cases Log

### making salsa (❌ WRONG)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: dice
- **Correct Tool**: machete
- **Predicted Tool**: kitchenknife
- **Matching Tools**: machete, lug wrench, kitchenknife, knife, bandsaw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, GardeningTask
  - Qualities: Sharp, Rigid, HasBlade, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, hammer, write, clean, poke, grasp, handle, skin, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cube, cut, separate

### cleaning shower head (❌ WRONG)
- **Required Affordance (pred)**: unclog
- **Required Affordance (gold)**: increase
- **Correct Tool**: ottoman
- **Predicted Tool**: snip
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, StorageTask
  - Qualities: Heavy, Rigid, Soft_Deformable
  - Deduced Affordances: hold, wrench, break, file, plug, comfort, operate, dry, entertain, support, decorate, cool, handle, store, increase, pick, illuminate, contain, polish

### painting walls (❌ WRONG)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: roll
- **Correct Tool**: food jar
- **Predicted Tool**: spray bottle
- **Matching Tools**: spray bottle
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish

### protecting items (❌ WRONG)
- **Required Affordance (pred)**: cover
- **Required Affordance (gold)**: wrap
- **Correct Tool**: water bottle
- **Predicted Tool**: garbagecan
- **Matching Tools**: water bottle, garbagecan
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish
  - Matched via synonyms: wrap

### watering plants (✅ CORRECT)
- **Required Affordance (pred)**: pour
- **Required Affordance (gold)**: carry
- **Correct Tool**: plate
- **Predicted Tool**: plate
- **Matching Tools**: plate
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: spread

### dividing food into portions (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: separate
- **Correct Tool**: broad hatchet
- **Predicted Tool**: garden trowel
- **Matching Tools**: broad hatchet, garden trowel, c d
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, Sharp
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, hammer, write, clean, poke, grasp, handle, skin, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cube, cut, separate

### storing fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools**: box, metal box, spreader, winebottle
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish
  - Matched via synonyms: contain, store

### mending clothes (❌ WRONG)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: fix
- **Correct Tool**: razor
- **Predicted Tool**: lancet
- **Matching Tools**: razor, fork, lancet, counterbore, pruner
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Sharp, HasBlade, Electronic
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, crack, staple, control, operate, write, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: repair

### decorating lobby (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: statue
- **Predicted Tool**: statue
- **Matching Tools**: statue
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: entertain, increase, wrench, carry, break, pick, illuminate, decorate, plug, contain, handle, operate
  - Matched via synonyms: decorate

### cutting open food objects (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: slit
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools**: blade, pen, broadax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: cube, cut, separate

### organizing collectibles (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: display
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: cell phone, ax, faucet, circular saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: hold, break, cut, change, separate, staple, control, operate, entertain, write, poke, grasp, store, increase, bore, repair, wash, pick, install, illuminate, display
  - Matched via synonyms: store

### setting tiles (❌ WRONG)
- **Required Affordance (pred)**: stick
- **Required Affordance (gold)**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: adjustable wrench
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain

### using tools (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: hold
- **Correct Tool**: seal
- **Predicted Tool**: penknife
- **Matching Tools**: seal, breast drill, core drill, box wrench, penknife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Soft_Deformable, IsFlexible
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, clean, break, pick, cut, poke, staple, grasp, screw, control, dry
  - Matched via synonyms: grasp, hold, pick

### maintaining floors (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: polish
- **Correct Tool**: rasp
- **Predicted Tool**: jackscrew
- **Matching Tools**: rasp, rake, jackscrew, flashlight
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile, Soft_Deformable
  - Deduced Affordances: break, pick, clean, eat, cut, dry
  - Matched via synonyms: clean

### plugging devices in (❌ WRONG)
- **Required Affordance (pred)**: plug
- **Required Affordance (gold)**: plug
- **Correct Tool**: bandsaw
- **Predicted Tool**: light switch
- **Matching Tools**: bandsaw, portable saw, corkscrew, beading plane, light switch
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: plug

### drying the dishes (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: pick, dry, clean

### ironing clothes (✅ CORRECT)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: abrading stone
- **Predicted Tool**: abrading stone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### clearing snow (❌ WRONG)
- **Required Affordance (pred)**: plow
- **Required Affordance (gold)**: plow
- **Correct Tool**: lister
- **Predicted Tool**: gangsaw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install

### serving ice cream (❌ WRONG)
- **Required Affordance (pred)**: scoop
- **Required Affordance (gold)**: scoop
- **Correct Tool**: garden trowel
- **Predicted Tool**: wateringcan
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasPointedTip, IsFlexible
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate

### drying washed dishes (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: hand towel
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask, HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: pick, dry, clean

### decorating table (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools**: curtain
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole, FurnitureRole
  - Tasks: LeisureTask, StorageTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: store, entertain, increase, hold, carry, break, pick, support, clean, illuminate, decorate, file, cool, comfort, contain, polish, dry
  - Matched via synonyms: decorate

### cleaning the fridge (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: clean
- **Correct Tool**: saber saw
- **Predicted Tool**: spray bottle
- **Matching Tools**: saber saw, spray bottle, spade bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: clean, wash

### organizing items (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: shelving unit
- **Predicted Tool**: shelving unit
- **Matching Tools**: shelving unit, portable saw, dirk
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy, HasContainer
  - Deduced Affordances: hold, wrench, break, file, wrap, plug, comfort, operate, support, decorate, cool, grasp, handle, store, increase, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: contain, store

### cooking an omelette (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: pan
- **Matching Tools**: pan, fork
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasContainer, Heated
  - Deduced Affordances: carry, pick, be_heated, mix, plug, contain, heat, operate
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
  - Qualities: Rigid, Lightweight, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, store, bore, repair, wash, pick, install
  - Matched via synonyms: write

### washing your face (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: circular saw
- **Matching Tools**: compass saw, parang, paper cutter, firmer chisel, circular saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: clean, wash

### fixing a toilet (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: trap and drain auger
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: IsFlexible, IsRotary, HasPointedTip
  - Deduced Affordances: write, hold, drill, bore, repair, wash, separate, install, change, clean, break, pick, cut, poke, staple, grasp, screw, control

### cutting an apple (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: switchblade
- **Predicted Tool**: switchblade
- **Matching Tools**: switchblade, electric hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: cube, cut, separate

### cleaning the mirror (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: bodkin
- **Matching Tools**: vaccum cleaner, bodkin, razor
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole, CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, clean, contain, handle, heat, operate
  - Matched via synonyms: clean

### throwing away toilet paper (✅ CORRECT)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: dispose
- **Correct Tool**: garbage can
- **Predicted Tool**: garbage can
- **Matching Tools**: garbage can, pitcher
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy, Rigid, HasContainer
  - Deduced Affordances: wrench, carry, break, wrap, support, be_heated, dispose, plug, grasp, handle, contain, operate
  - Matched via synonyms: dispose

### displaying a statue (✅ CORRECT)
- **Required Affordance (pred)**: display
- **Required Affordance (gold)**: support
- **Correct Tool**: side table
- **Predicted Tool**: side table
- **Matching Tools**: side table, painting
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask, LeisureTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, entertain, increase, hold, wrench, break, pick, operate, illuminate, support, decorate, plug, cool, file, handle, comfort, contain, polish
  - Matched via synonyms: illuminate

### sanding surfaces (✅ CORRECT)
- **Required Affordance (pred)**: smoothen
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: steel wool pad
- **Predicted Tool**: steel wool pad
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: HasAbrasiveSurface, Rigid, IsFlexible
  - Deduced Affordances: operate, plug, clean

### creating frost patterns as decoration (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: bill
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### cleaning pipes (❌ WRONG)
- **Required Affordance (pred)**: unclog
- **Required Affordance (gold)**: unclog
- **Correct Tool**: plunger
- **Predicted Tool**: keyhole saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Rigid, HasContainer, IsFlexible
  - Deduced Affordances: operate, plug, clean, contain

### removing skin from meat (❌ WRONG)
- **Required Affordance (pred)**: skin
- **Required Affordance (gold)**: skin
- **Correct Tool**: lochaber ax
- **Predicted Tool**: coping saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### changing an objects shape (❌ WRONG)
- **Required Affordance (pred)**: shape
- **Required Affordance (gold)**: shape
- **Correct Tool**: shaping tool
- **Predicted Tool**: graver
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### telling the time (✅ CORRECT)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: time
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: hold, break, cut, change, separate, staple, control, operate, entertain, write, poke, grasp, store, increase, bore, repair, wash, pick, install, illuminate, display

### opening a nut (✅ CORRECT)
- **Required Affordance (pred)**: crack
- **Required Affordance (gold)**: crack
- **Correct Tool**: stiletto
- **Predicted Tool**: stiletto
- **Matching Tools**: stiletto, food cup, compass saw, to go cup
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: break, crack

### placing objects down (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: grasp
- **Correct Tool**: sandblaster
- **Predicted Tool**: scriber
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasAbrasiveSurface
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, staple, screw, control, operate, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### surfing the internet (❌ WRONG)
- **Required Affordance (pred)**: operate
- **Required Affordance (gold)**: entertain
- **Correct Tool**: c d
- **Predicted Tool**: aluminumfoil
- **Matching Tools**: cigar cutter, aluminumfoil, coffee table
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: MaintenanceTask, WasteDisposalTask
  - Qualities: Toxic_Hazardous, Liquid, Flammable
  - Deduced Affordances: hold, clean, eat, cut, screw, grasp, pour

### transporting liquids (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: carry
- **Correct Tool**: mug
- **Predicted Tool**: mug
- **Matching Tools**: mug, bread knife, fridge
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: spread, hold, break, cut, file, carve, change, wrap, fix, plug, dice, operate, support, cool, grasp, store, repair, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: contain, store

### increasing beauty of the room (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: poster
- **Predicted Tool**: poster
- **Matching Tools**: poster
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: entertain, increase, carry, break, pick, illuminate, decorate, plug, grasp, operate
  - Matched via synonyms: decorate

### crushing ice (❌ WRONG)
- **Required Affordance (pred)**: crumble
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: common ax
- **Matching Tools**: pestle, bender, gang, common ax, bolt cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: break

### reheating soup (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: kettle
- **Predicted Tool**: kettle
- **Matching Tools**: kettle
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, HasContainer, Rigid, Electronic
  - Deduced Affordances: pick, mix, plug, contain, heat, operate
  - Matched via synonyms: heat

### hanging painting (✅ CORRECT)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: increase
- **Correct Tool**: counter top
- **Predicted Tool**: counter top
- **Matching Tools**: counter top
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: FoodPreparationTask, WorkStudyTask, MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, increase, hold, wrench, pick, support, clean, mix, decorate, plug, screw, grasp, handle, comfort, contain, operate
  - Matched via synonyms: support

### preparing meat (✅ CORRECT)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: carve
- **Correct Tool**: tableknife
- **Predicted Tool**: tableknife
- **Matching Tools**: tableknife, grapnel, wire cutter, shaver
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: carve, cut, dice

### storing clothes (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: stemmer
- **Matching Tools**: stemmer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: contain

### making a small hole (✅ CORRECT)
- **Required Affordance (pred)**: bore
- **Required Affordance (gold)**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: bradawl
- **Matching Tools**: bradawl, rounder, bulldog wrench, keychain
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasPointedTip, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: bore

### hanging cleaned laundry (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: gutter
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask, HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: pick, dry, clean

### using appliances (✅ CORRECT)
- **Required Affordance (pred)**: operate
- **Required Affordance (gold)**: operate
- **Correct Tool**: floorlamp
- **Predicted Tool**: floorlamp
- **Matching Tools**: floorlamp, shelving unit, comb, ram, head gasket
- **Correct Tool SOMA Features**:
  - Roles: LightingRole, FurnitureRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Rigid, Heavy
  - Deduced Affordances: store, entertain, increase, wrench, break, pick, support, illuminate, decorate, plug, grasp, handle, comfort, heat, operate, contain
  - Matched via synonyms: operate

### defrosting frozen food (❌ WRONG)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: dresser
- **Matching Tools**: dresser
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### connecting appliances (❌ WRONG)
- **Required Affordance (pred)**: plug
- **Required Affordance (gold)**: plug
- **Correct Tool**: pneumatic drill
- **Predicted Tool**: stillson wrench
- **Matching Tools**: pneumatic drill, spreader, stillson wrench, floorlamp, stemmer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, IsRotary, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: plug

### boiling water (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools**: coffee machine, water bottle
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy, HasContainer
  - Deduced Affordances: wrench, pick, mix, contain, handle, heat, operate
  - Matched via synonyms: heat

### washing dishes (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: brick trowel
- **Matching Tools**: vaccum cleaner, brick trowel, common ax, potato, dovetail plane
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole, CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: wrench, clean, contain, handle, heat, operate
  - Matched via synonyms: clean

### washing a fruit before cutting (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wash
- **Correct Tool**: bandsaw
- **Predicted Tool**: shiv
- **Matching Tools**: bandsaw, hammer, sparkplug wrench, posthole digger, shiv
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: clean, wash

### removing the peel from fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: peel
- **Required Affordance (gold)**: skin
- **Correct Tool**: adz
- **Predicted Tool**: adz
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### cleaning the toilet (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: portable saw
- **Predicted Tool**: spray bottle
- **Matching Tools**: portable saw, spray bottle, plexor.n.wn.medicine, drilling bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: clean, wash

### cutting items in halve (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: separate
- **Correct Tool**: stiletto
- **Predicted Tool**: gouge
- **Matching Tools**: stiletto, tack hammer, gouge, eolith
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: cube, cut, separate

### creating garnishes (✅ CORRECT)
- **Required Affordance (pred)**: carve
- **Required Affordance (gold)**: dice
- **Correct Tool**: steak knife
- **Predicted Tool**: steak knife
- **Matching Tools**: steak knife, rubber eraser, carpenter's square, coffee
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
  - Matched via synonyms: carve, cube, cut, dice, separate

### cutting meat (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: chop
- **Correct Tool**: claw hatchet
- **Predicted Tool**: barong
- **Matching Tools**: claw hatchet, rounder, barong
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### tracking events (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: mark
- **Correct Tool**: bradawl
- **Predicted Tool**: ball peen hammer
- **Matching Tools**: bradawl, twist bit, pipe wrench, cuttingtool, ball peen hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasPointedTip, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: write

### gardening (✅ CORRECT)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: dig
- **Correct Tool**: ditch spade
- **Predicted Tool**: ditch spade
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid, HasPointedTip, IsFlexible
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, contain

### adjusting device settings (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: control
- **Correct Tool**: handsaw
- **Predicted Tool**: common ax
- **Matching Tools**: handsaw, pointing trowel, tennis racket, common ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: control

### cooking a fried egg (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: cup
- **Predicted Tool**: cup
- **Matching Tools**: cup
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: spread, hold, break, cut, file, carve, change, wrap, fix, plug, dice, operate, support, cool, grasp, store, repair, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: be_heated

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: screw
- **Correct Tool**: screwdriver
- **Predicted Tool**: garbage can
- **Matching Tools**: arm chair, garbage can
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### opening packages (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: slit
- **Correct Tool**: blade
- **Predicted Tool**: hack
- **Matching Tools**: blade, star drill, power tool, hack, putty knife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: cube, cut, separate

### supporting a laptop (✅ CORRECT)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: support
- **Correct Tool**: footstool
- **Predicted Tool**: footstool
- **Matching Tools**: footstool
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: entertain, increase, break, pick, support, illuminate, decorate, plug, grasp, comfort, operate
  - Matched via synonyms: support

### arranging flowers (❌ WRONG)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: beautify
- **Correct Tool**: abrader
- **Predicted Tool**: arm chair
- **Matching Tools**: arm chair
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### cleaning fingernails (✅ CORRECT)
- **Required Affordance (pred)**: pick
- **Required Affordance (gold)**: file
- **Correct Tool**: blunt file
- **Predicted Tool**: blunt file
- **Matching Tools**: blunt file, bur, power saw, hack, winebottle
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: grasp, hold, pick

### repairing items (❌ WRONG)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: hammer
- **Correct Tool**: carpenter's hammer
- **Predicted Tool**: firmer chisel
- **Matching Tools**: carpenter's hammer, tennisracket, firmer chisel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: fix, repair

### repairing appliances (✅ CORRECT)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: screw
- **Correct Tool**: spiral ratchet screwdriver
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools**: spiral ratchet screwdriver, book, tennisracket
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary, HasPointedTip, Electronic
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: fix, repair

### preparing drinks (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: spread, hold, break, cut, file, carve, change, wrap, fix, plug, dice, operate, support, cool, grasp, store, repair, carry, pick, be_heated, dispose, contain, polish

### watching a movie (✅ CORRECT)
- **Required Affordance (pred)**: entertain
- **Required Affordance (gold)**: entertain
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: cell phone, camera, room decor
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: hold, break, cut, change, separate, staple, control, operate, entertain, write, poke, grasp, store, increase, bore, repair, wash, pick, install, illuminate, display
  - Matched via synonyms: entertain

### pouring liquids (✅ CORRECT)
- **Required Affordance (pred)**: pour
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools**: pitcher
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: spread, hold, break, cut, file, carve, change, wrap, fix, plug, dice, operate, support, cool, grasp, store, repair, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: spread

### smoothing surfaces (❌ WRONG)
- **Required Affordance (pred)**: smoothen
- **Required Affordance (gold)**: file
- **Correct Tool**: taper file
- **Predicted Tool**: food jar
- **Matching Tools**: food jar
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

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
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: hammer

### spreading icing on a cake (❌ WRONG)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: spread
- **Correct Tool**: pointing trowel
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasPointedTip, IsFlexible
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate

### tightening bolts (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: alligator wrench
- **Predicted Tool**: alligator wrench
- **Matching Tools**: alligator wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip, IsFlexible
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: wrench

### writing a letter (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: write
- **Correct Tool**: laptop
- **Predicted Tool**: spade
- **Matching Tools**: spade
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask, LeisureTask
  - Qualities: Electronic, Rigid, Lightweight, Fragile
  - Deduced Affordances: store, entertain, increase, break, pick, illuminate, plug, grasp, heat, operate

### breaking an egg (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: crack
- **Correct Tool**: bowie knife
- **Predicted Tool**: icepick
- **Matching Tools**: bowie knife, tamp, icepick, plane
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, hammer, write, clean, poke, grasp, handle, skin, bore, repair, wash, pick, install, contain
  - Matched via synonyms: break, crack

### putting objects on high shelf (✅ CORRECT)
- **Required Affordance (pred)**: lift
- **Required Affordance (gold)**: increase
- **Correct Tool**: desk
- **Predicted Tool**: desk
- **Matching Tools**: desk, kitchen knife
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, increase, wrench, pick, support, decorate, plug, grasp, handle, comfort, contain, operate
  - Matched via synonyms: support

### making a shopping list (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: write
- **Correct Tool**: desktop
- **Predicted Tool**: dog wrench
- **Matching Tools**: spud, dog wrench
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: store, wrench, pick, plug, grasp, handle, contain, heat, operate

### storing food (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: fish knife
- **Predicted Tool**: microwave
- **Matching Tools**: fish knife, microwave
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
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
  - Qualities: Electronic, Fragile
  - Deduced Affordances: entertain, increase, break, pick, illuminate, decorate, heat, operate
  - Matched via synonyms: illuminate

### trimming branches (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: saw
- **Correct Tool**: folding saw
- **Predicted Tool**: folding saw
- **Matching Tools**: folding saw, crosscut saw, sink, gutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: cut, separate

### repairing appliances (❌ WRONG)
- **Required Affordance (pred)**: fix
- **Required Affordance (gold)**: fix
- **Correct Tool**: crampon
- **Predicted Tool**: bore bit
- **Matching Tools**: crampon, openside plane, bore bit, o ring, rounder
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, LeisureTask
  - Qualities: Rigid, Sharp, HasPointedTip, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, hammer, entertain, write, clean, poke, grasp, handle, skin, increase, bore, repair, wash, pick, install, illuminate, contain
  - Matched via synonyms: fix, repair

### placing a very delicate artifact on a shelf (✅ CORRECT)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: increase
- **Correct Tool**: stool
- **Predicted Tool**: stool
- **Matching Tools**: stool
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, entertain, increase, wrench, break, pick, support, illuminate, decorate, plug, grasp, handle, comfort, contain, operate
  - Matched via synonyms: support

### reading a good night story (❌ WRONG)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: desktop
- **Predicted Tool**: armchair
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: store, wrench, pick, plug, grasp, handle, contain, heat, operate

### preparing a sliced apple (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cut
- **Correct Tool**: compass saw
- **Predicted Tool**: tap
- **Matching Tools**: compass saw, tap
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: cut, separate

### melting butter (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: heat
- **Correct Tool**: toaster
- **Predicted Tool**: toaster
- **Matching Tools**: toaster
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heated, Heavy, Rigid
  - Deduced Affordances: wrench, pick, mix, plug, contain, handle, heat, operate
  - Matched via synonyms: heat

### making firewood (✅ CORRECT)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: chop
- **Correct Tool**: fireman's ax
- **Predicted Tool**: fireman's ax
- **Matching Tools**: fireman's ax, bread knife, case knife, chisel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole, SafetyEquipmentRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### serving food (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: carry
- **Correct Tool**: vase
- **Predicted Tool**: water bottle
- **Matching Tools**: vase, window, water bottle
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole, StorageContainerRole
  - Tasks: StorageTask, LeisureTask
  - Qualities: Fragile, Rigid, HasContainer
  - Deduced Affordances: hold, break, file, wrap, plug, operate, entertain, support, decorate, cool, grasp, store, increase, carry, pick, illuminate, be_heated, dispose, contain, polish
  - Matched via synonyms: carry, support

### making breadcrumbs (❌ WRONG)
- **Required Affordance (pred)**: crumble
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: stiletto
- **Matching Tools**: battering ram, adz, dumbbell, tack hammer, stiletto
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: break

### making ice (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: counter top
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

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
  - Deduced Affordances: entertain, increase, break, pick, illuminate, grasp, dry

### fixing plumbing (❌ WRONG)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: spade bit
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### stabilising objects (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: hold
- **Correct Tool**: rib joint plier
- **Predicted Tool**: food cup
- **Matching Tools**: food cup
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasTeeth, IsFlexible
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### creating compost (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: peel
- **Correct Tool**: dirk
- **Predicted Tool**: base ball bat
- **Matching Tools**: dirk, drill, base ball bat
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, hammer, write, clean, poke, grasp, handle, skin, bore, repair, wash, pick, install, contain
  - Matched via synonyms: contain

### patching walls (❌ WRONG)
- **Required Affordance (pred)**: smoothen
- **Required Affordance (gold)**: fix
- **Correct Tool**: stamp
- **Predicted Tool**: bumper jack
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: DocumentRole
  - Tasks: 
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: repair, change, read, fix, plug, grasp, contain, beautify, operate

### opening packages (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: yataghan
- **Matching Tools**: bradawl, stillson wrench, yataghan, spud, broad hatchet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasPointedTip, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: cut, separate

### changing bicycle components (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: box wrench
- **Predicted Tool**: box wrench
- **Matching Tools**: box wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: wrench

### preparing coffee in a filter (❌ WRONG)
- **Required Affordance (pred)**: hold
- **Required Affordance (gold)**: tamp
- **Correct Tool**: tamp
- **Predicted Tool**: circular saw
- **Matching Tools**: tamp, rat tail file, pincer, remote control, circular saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: grasp, handle, hold, pick

### ironing clothes (❌ WRONG)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: press
- **Correct Tool**: stemmer
- **Predicted Tool**: cloth
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain

### painting walls (❌ WRONG)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: beautify
- **Correct Tool**: rat tail file
- **Predicted Tool**: vacuumcleaner
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### making toppings (❌ WRONG)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: bowie knife
- **Matching Tools**: pestle, bowie knife, battle ax, garden trowel, saw set
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: cut, separate

### having a meal (✅ CORRECT)
- **Required Affordance (pred)**: eat
- **Required Affordance (gold)**: eat
- **Correct Tool**: salt
- **Predicted Tool**: salt
- **Matching Tools**: salt
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Granular, Perishable
  - Deduced Affordances: pick, clean, eat, mix, cut, contain
  - Matched via synonyms: eat

### boiling water (❌ WRONG)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: plate
- **Predicted Tool**: laundryhamper
- **Matching Tools**: plate, lightbulb, laundryhamper
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: be_heated

### swapping out filters (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: change
- **Correct Tool**: rock bit
- **Predicted Tool**: rat tail file
- **Matching Tools**: rock bit, stool, rat tail file, plexor.n.wn.medicine, broadax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip, HasAbrasiveSurface
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: grasp, handle, hold, pick

### packing books for house shifting (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: dresser
- **Matching Tools**: dresser, handstamp, claw hatchet, axe
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer
  - Deduced Affordances: hold, wrench, break, file, wrap, plug, comfort, operate, support, decorate, cool, grasp, handle, store, increase, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: contain, store

### installing fixtures (❌ WRONG)
- **Required Affordance (pred)**: install
- **Required Affordance (gold)**: drill
- **Correct Tool**: router
- **Predicted Tool**: scrub plane
- **Matching Tools**: compass saw, scrub plane
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask, LeisureTask
  - Qualities: Electronic, Rigid, Lightweight
  - Deduced Affordances: store, entertain, increase, break, pick, illuminate, plug, grasp, heat, operate

### drying up spilled liquids (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: dry
- **Correct Tool**: kleenex
- **Predicted Tool**: kleenex
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: pick, dry, clean, grasp

### setting up bedding (❌ WRONG)
- **Required Affordance (pred)**: cover
- **Required Affordance (gold)**: comfort
- **Correct Tool**: ottoman
- **Predicted Tool**: to go cup
- **Matching Tools**: to go cup
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, StorageTask
  - Qualities: Heavy, Rigid, Soft_Deformable
  - Deduced Affordances: hold, wrench, break, file, plug, comfort, operate, dry, entertain, support, decorate, cool, handle, store, increase, pick, illuminate, contain, polish

### preparing food (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: pierce
- **Correct Tool**: punch plier
- **Predicted Tool**: tray
- **Matching Tools**: punch plier, tray, battle ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip, IsFlexible
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### cooking food (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: stoveburner
- **Predicted Tool**: stoveburner
- **Matching Tools**: stoveburner
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Electronic, Rigid
  - Deduced Affordances: pick, mix, plug, contain, heat, operate
  - Matched via synonyms: heat

### cleaning surfaces (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: polish
- **Correct Tool**: abrading stone
- **Predicted Tool**: yataghan
- **Matching Tools**: abrading stone, power saw, shear, yataghan, glue stick
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: clean, wash

### polishing metal objects (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: sandblaster
- **Predicted Tool**: pitcher
- **Matching Tools**: pitcher
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasAbrasiveSurface
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, staple, screw, control, operate, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### preparing spices (✅ CORRECT)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain

### processing grains (✅ CORRECT)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain

### operating gadgets (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: press
- **Correct Tool**: tamp
- **Predicted Tool**: cutter
- **Matching Tools**: tamp, smooth plane, cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: control

### making coffee powder (✅ CORRECT)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain

### pinning items on a wall (✅ CORRECT)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: poke
- **Correct Tool**: phillips screwdriver
- **Predicted Tool**: phillips screwdriver
- **Matching Tools**: phillips screwdriver, pitsaw, pitsaw, box wrench, chain saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: poke

### throwing away used soap bottle (✅ CORRECT)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: sink basin
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask, CleaningTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: pick, clean, plug, contain, operate

### checking the readiness of food (❌ WRONG)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: poke
- **Correct Tool**: screwdriver
- **Predicted Tool**: cigar cutter
- **Matching Tools**: screwdriver, cigar cutter, pipe cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: poke

### creating ventilation (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: slit
- **Correct Tool**: knife blade
- **Predicted Tool**: electric hammer
- **Matching Tools**: knife blade, trowel, barong, electric hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask, MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: control

### tilling soil (✅ CORRECT)
- **Required Affordance (pred)**: plow
- **Required Affordance (gold)**: plow
- **Correct Tool**: bull tongue
- **Predicted Tool**: bull tongue
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### storing dog treats (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: desk
- **Predicted Tool**: sidetable
- **Matching Tools**: desk, hand drill, sidetable
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, increase, wrench, pick, support, decorate, plug, grasp, handle, comfort, contain, operate
  - Matched via synonyms: contain, store

### opening packaging (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: break
- **Correct Tool**: folding saw
- **Predicted Tool**: bender
- **Matching Tools**: folding saw, bulldog wrench, bender, shovel, abrading stone
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: cut, separate

### preparing food (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: stemmer
- **Matching Tools**: stemmer, burin, handsaw, rammer, bread
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: cut, separate

### preparing meats (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cube
- **Correct Tool**: scalpel
- **Predicted Tool**: cap opener
- **Matching Tools**: scalpel, cap opener, posthole digger, plumber's snake, keyhole saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, HygieneTask
  - Qualities: Sharp, Rigid, HasBlade, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: cube, cut, separate

### crafting with wood (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: carve
- **Correct Tool**: barong
- **Predicted Tool**: gouge
- **Matching Tools**: barong, bullnose, salt, gouge
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: cube, cut, separate

### opening jars (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: grasp
- **Correct Tool**: scauper
- **Predicted Tool**: hatchet
- **Matching Tools**: scauper, bolt cutter, potato, core drill, hatchet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: grasp, hold, pick

### watching a movie (✅ CORRECT)
- **Required Affordance (pred)**: operate
- **Required Affordance (gold)**: comfort
- **Correct Tool**: chair
- **Predicted Tool**: chair
- **Matching Tools**: chair, hook wrench, towelholder, electric drill, desk
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, entertain, increase, wrench, break, pick, support, illuminate, decorate, plug, grasp, handle, comfort, contain, operate
  - Matched via synonyms: operate

### picking-up objects (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: grasp
- **Correct Tool**: carpenter's mallet
- **Predicted Tool**: ravehook
- **Matching Tools**: carpenter's mallet, gang, diningtable, ravehook, wire cutter
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: grasp, handle, hold, pick

### controlling devices (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: operate
- **Correct Tool**: handsaw
- **Predicted Tool**: stiletto
- **Matching Tools**: handsaw, tap wrench, jointer, paper cutter, stiletto
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: control

### cleaning up spills (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: pick, dry, clean

### polishing furniture (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: rub
- **Correct Tool**: fish knife
- **Predicted Tool**: room decor
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain

### lighting up a room (✅ CORRECT)
- **Required Affordance (pred)**: illuminate
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: lightbulb
- **Predicted Tool**: lightbulb
- **Matching Tools**: lightbulb
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Fragile
  - Deduced Affordances: entertain, increase, break, pick, illuminate, decorate, heat, operate
  - Matched via synonyms: illuminate

### cleaning dishes (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wash
- **Correct Tool**: stamping machine
- **Predicted Tool**: jack
- **Matching Tools**: stamping machine, jack, plexor.n.wn.medicine
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: clean, wash

### polishing furniture (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: abrader
- **Predicted Tool**: blunt file
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### preparing cleaning solutions (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: spread, hold, break, cut, file, carve, change, wrap, fix, plug, dice, operate, support, cool, grasp, store, repair, carry, pick, be_heated, dispose, contain, polish

### preparing vegetables (❌ WRONG)
- **Required Affordance (pred)**: chop
- **Required Affordance (gold)**: dice
- **Correct Tool**: dirk
- **Predicted Tool**: razor
- **Matching Tools**: dirk, spraybottle, razor, compass saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, hammer, write, clean, poke, grasp, handle, skin, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cube, cut, separate

### sorting items (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: pick
- **Correct Tool**: bottle
- **Predicted Tool**: notebook
- **Matching Tools**: bottle, coffee, notebook, cold chisel, watering can
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish
  - Matched via synonyms: grasp, hold, pick

### labeling items (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: mark
- **Correct Tool**: o ring
- **Predicted Tool**: spray bottle
- **Matching Tools**: o ring, folding saw, spray bottle, shaping tool
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: write

### changing bed sheets (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: change
- **Correct Tool**: ram
- **Predicted Tool**: drawer
- **Matching Tools**: ram, razor, toothpick, crosscut saw, drawer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: grasp, handle, hold, pick

### removing moisture (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: pick, dry, clean

### repairing electronics (✅ CORRECT)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools**: soldering iron, spokeshave
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: screw

### securing items (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: buffer
- **Matching Tools**: drum sander, buffer, buffer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: screw

### hanging a picture on a wall (✅ CORRECT)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: hammer
- **Correct Tool**: tack hammer
- **Predicted Tool**: tack hammer
- **Matching Tools**: tack hammer, torque wrench, burin, power tool
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: poke

### doing laundry (❌ WRONG)
- **Required Affordance (pred)**: wash
- **Required Affordance (gold)**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: showercurtain
- **Matching Tools**: compass saw, burin, showercurtain, monkey wrench, pin wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: clean, wash

### mounting hardware (✅ CORRECT)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: screw
- **Correct Tool**: spiral ratchet screwdriver
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools**: spiral ratchet screwdriver, chisel, straightedge
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary, HasPointedTip, Electronic
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: screw

### cleaning spilled milk (✅ CORRECT)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: sink basin
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask, CleaningTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: pick, clean, plug, contain, operate

### storing important documents (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: dresser
- **Matching Tools**: dresser, ottoman, clasp knife, trench knife, book
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer
  - Deduced Affordances: hold, wrench, break, file, wrap, plug, comfort, operate, support, decorate, cool, grasp, handle, store, increase, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: contain, store

### preparing food (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: eat
- **Correct Tool**: potato
- **Predicted Tool**: potato
- **Matching Tools**: potato, crank, creditcard, dumbbell, nailfile
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Perishable, Rigid
  - Deduced Affordances: pick, clean, eat, mix, cut, plug, contain, operate
  - Matched via synonyms: cut

### cleaning the shower head (❌ WRONG)
- **Required Affordance (pred)**: unclog
- **Required Affordance (gold)**: clean
- **Correct Tool**: towel
- **Predicted Tool**: vaccum cleaner
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole, BeddingRole
  - Tasks: CleaningTask, HygieneTask, SleepingTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: pick, dry, clean

### cleaning the blinds (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: clean
- **Correct Tool**: bandsaw
- **Predicted Tool**: plunger
- **Matching Tools**: bandsaw, plunger, lancet, drilling bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: clean, wash

### replacing light bulbs (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: change
- **Correct Tool**: signet
- **Predicted Tool**: clincher
- **Matching Tools**: signet, pitchfork, pruning saw, clincher, portable saw
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: entertain, increase, carry, break, pick, illuminate, decorate, plug, grasp, operate
  - Matched via synonyms: grasp, pick

### labelling items (✅ CORRECT)
- **Required Affordance (pred)**: mark
- **Required Affordance (gold)**: write
- **Correct Tool**: pencil
- **Predicted Tool**: pencil
- **Matching Tools**: pencil, garden tool, carpenter's mallet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Lightweight, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, store, bore, repair, wash, pick, install
  - Matched via synonyms: write

### serving a dish (❌ WRONG)
- **Required Affordance (pred)**: hold
- **Required Affordance (gold)**: carry
- **Correct Tool**: watering can
- **Predicted Tool**: catling
- **Matching Tools**: watering can, catling, opener, try square, combination plane
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: HasContainer, Rigid, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, contain
  - Matched via synonyms: grasp, hold, pick

### bending pipes (✅ CORRECT)
- **Required Affordance (pred)**: bend
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsFlexible, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### carrying items (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: grasp
- **Correct Tool**: soldering iron
- **Predicted Tool**: rock bit
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### keeping up to date (✅ CORRECT)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: laptop
- **Predicted Tool**: laptop
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask, LeisureTask
  - Qualities: Electronic, Rigid, Lightweight, Fragile
  - Deduced Affordances: store, entertain, increase, break, pick, illuminate, plug, grasp, heat, operate

### breaking up compacted soil (✅ CORRECT)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: plow
- **Correct Tool**: bull tongue
- **Predicted Tool**: bull tongue
- **Matching Tools**: bull tongue, scauper, graver, pincer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: poke

### applying spreads on bread (✅ CORRECT)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: spread
- **Correct Tool**: palette knife
- **Predicted Tool**: palette knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain

### picking up items (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: pick
- **Correct Tool**: baseballbat
- **Predicted Tool**: clipper
- **Matching Tools**: baseballbat, clipper, seal, saw, desklamp
- **Correct Tool SOMA Features**:
  - Roles: ToolRole, EntertainmentRole
  - Tasks: LeisureTask, MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, entertain, write, clean, poke, grasp, handle, increase, bore, repair, wash, pick, install, illuminate, contain
  - Matched via synonyms: grasp, handle, hold, pick

### carrying objects (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: lift
- **Correct Tool**: hayfork
- **Predicted Tool**: rammer
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasPointedTip, HasTeeth
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate

### being cooked (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: eat
- **Correct Tool**: bread
- **Predicted Tool**: bread
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Soft_Deformable
  - Deduced Affordances: pick, clean, eat, cut, dry

### carrying items (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: hold
- **Correct Tool**: clipper
- **Predicted Tool**: food box
- **Matching Tools**: food box, ottoman
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, IsRotary
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### removing isolation from wires (✅ CORRECT)
- **Required Affordance (pred)**: strip
- **Required Affordance (gold)**: strip
- **Correct Tool**: wire stripper
- **Predicted Tool**: wire stripper
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### distributing cleaning products (❌ WRONG)
- **Required Affordance (pred)**: pour
- **Required Affordance (gold)**: spread
- **Correct Tool**: tableknife
- **Predicted Tool**: fork
- **Matching Tools**: tableknife, fork
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: spread

### heating coffee (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools**: coffee machine
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy, HasContainer
  - Deduced Affordances: wrench, pick, mix, contain, handle, heat, operate
  - Matched via synonyms: heat

### shielding surfaces (❌ WRONG)
- **Required Affordance (pred)**: cover
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: set square
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### throwing away uneaten food (❌ WRONG)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: clean
- **Correct Tool**: tableknife
- **Predicted Tool**: coffeetable
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate

### storing clean utensils (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: desk
- **Predicted Tool**: desk
- **Matching Tools**: desk, paper cutter, dumbell, palette knife
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, increase, wrench, pick, support, decorate, plug, grasp, handle, comfort, contain, operate
  - Matched via synonyms: contain, store

### cleaning spilled milk (❌ WRONG)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: clean
- **Correct Tool**: jigsaw
- **Predicted Tool**: battering ram
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### organizing documents (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: staple
- **Correct Tool**: stapler
- **Predicted Tool**: stapler
- **Matching Tools**: stapler, khukurus, dado plane, gouge
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, store, bore, repair, wash, pick, install, contain
  - Matched via synonyms: contain, store

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: install
- **Correct Tool**: coping saw
- **Predicted Tool**: electric hammer
- **Matching Tools**: coping saw, gouge, electric hammer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: screw

### washing dishes (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wash
- **Correct Tool**: keyhole saw
- **Predicted Tool**: bit
- **Matching Tools**: keyhole saw, bit, shaver, dumbell
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: clean, wash

### grinding surfaces (❌ WRONG)
- **Required Affordance (pred)**: grind
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: dovetail plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsFlexible, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### accessing high shelves (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: lift
- **Correct Tool**: hayfork
- **Predicted Tool**: towelholder
- **Matching Tools**: towelholder
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasPointedTip, HasTeeth
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate

### making garnishes (✅ CORRECT)
- **Required Affordance (pred)**: carve
- **Required Affordance (gold)**: peel
- **Correct Tool**: linoleum knife
- **Predicted Tool**: linoleum knife
- **Matching Tools**: linoleum knife, screw wrench, trowel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: cube, cut, separate

### enhancing glass surfaces (❌ WRONG)
- **Required Affordance (pred)**: polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: flat file
- **Predicted Tool**: mug
- **Matching Tools**: dresser, mug
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### reheating soup (✅ CORRECT)
- **Required Affordance (pred)**: heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: microwave
- **Predicted Tool**: microwave
- **Matching Tools**: microwave
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy, Heated
  - Deduced Affordances: wrench, pick, mix, contain, handle, heat, operate
  - Matched via synonyms: heat

### being filled with a liquid (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: table knife
- **Predicted Tool**: crosscut saw
- **Matching Tools**: table knife, lochaber ax, crosscut saw
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
  - Matched via synonyms: contain

### wiping a surface clean (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: wipe
- **Correct Tool**: case knife
- **Predicted Tool**: jackscrew
- **Matching Tools**: sandblaster, trowel, jackscrew
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain

### reading instructions (✅ CORRECT)
- **Required Affordance (pred)**: read
- **Required Affordance (gold)**: read
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: hold, break, cut, change, separate, staple, control, operate, entertain, write, poke, grasp, store, increase, bore, repair, wash, pick, install, illuminate, display

### assembling furniture (✅ CORRECT)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: drill
- **Correct Tool**: star drill
- **Predicted Tool**: star drill
- **Matching Tools**: star drill, chamfer bit, bandsaw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip, HasAbrasiveSurface
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: screw

### applying butter (❌ WRONG)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: cut
- **Correct Tool**: twist bit
- **Predicted Tool**: surgical knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### decorating a room (❌ WRONG)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: beautify
- **Correct Tool**: steel wool pad
- **Predicted Tool**: drawer
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: HasAbrasiveSurface, Rigid, IsFlexible
  - Deduced Affordances: operate, plug, clean

### clearing the drain (✅ CORRECT)
- **Required Affordance (pred)**: pierce
- **Required Affordance (gold)**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: trap and drain auger
- **Matching Tools**: trap and drain auger, cigar cutter, pruning knife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: IsFlexible, IsRotary, HasPointedTip
  - Deduced Affordances: write, hold, drill, bore, repair, wash, separate, install, change, clean, break, pick, cut, poke, staple, grasp, screw, control
  - Matched via synonyms: poke

### fitting flexible piping (❌ WRONG)
- **Required Affordance (pred)**: bend
- **Required Affordance (gold)**: bend
- **Correct Tool**: saw set
- **Predicted Tool**: bit
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### decorating bed (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: decorate
- **Correct Tool**: room decor
- **Predicted Tool**: room decor
- **Matching Tools**: room decor
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Soft_Deformable
  - Deduced Affordances: entertain, increase, carry, break, pick, illuminate, decorate, plug, grasp, operate, dry
  - Matched via synonyms: decorate

### preparing drinks (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: mix
- **Correct Tool**: spoon
- **Predicted Tool**: spoon
- **Matching Tools**: spoon
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: mix

### managing lighting (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: control
- **Correct Tool**: electric hammer
- **Predicted Tool**: buffer
- **Matching Tools**: electric hammer, machete, pick, plane, buffer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: control

### eating dinner (❌ WRONG)
- **Required Affordance (pred)**: eat
- **Required Affordance (gold)**: support
- **Correct Tool**: stool
- **Predicted Tool**: bed
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, entertain, increase, wrench, break, pick, support, illuminate, decorate, plug, grasp, handle, comfort, contain, operate

### keeping sporting equipment (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: ottoman
- **Matching Tools**: box, circular saw, ottoman
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish
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
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: install

### preparing toppings (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: ripping chisel
- **Matching Tools**: battering ram, c d, ripping chisel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### sawing flooring planks (❌ WRONG)
- **Required Affordance (pred)**: saw
- **Required Affordance (gold)**: saw
- **Correct Tool**: pitsaw
- **Predicted Tool**: folding saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### cleaning as a home workout (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: exercise
- **Correct Tool**: basket ball
- **Predicted Tool**: scrub brush
- **Matching Tools**: scrub brush, dentist's drill, clincher
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: entertain, increase, break, pick, illuminate, plug, grasp, operate

### maintaining plumbing (❌ WRONG)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: repair
- **Correct Tool**: buffer
- **Predicted Tool**: fireman's ax
- **Matching Tools**: fireman's ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, IsRotary, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### protecting food (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: laundry hamper
- **Matching Tools**: drum sander, keyboard, laundry hamper
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: contain

### repairing books (❌ WRONG)
- **Required Affordance (pred)**: repair
- **Required Affordance (gold)**: staple
- **Correct Tool**: stapler
- **Predicted Tool**: glue stick
- **Matching Tools**: stapler, carriage wrench, lancet, glue stick, scauper
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, store, bore, repair, wash, pick, install, contain
  - Matched via synonyms: fix, repair

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: hammer
- **Correct Tool**: triphammer
- **Predicted Tool**: bore bit
- **Matching Tools**: triphammer, bore bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, Heated
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: screw

### cleaning the floor (❌ WRONG)
- **Required Affordance (pred)**: absorb
- **Required Affordance (gold)**: clean
- **Correct Tool**: power saw
- **Predicted Tool**: basket ball
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### measuring ingredients (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: scoop
- **Correct Tool**: slick
- **Predicted Tool**: hob
- **Matching Tools**: hob, jigsaw
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Liquid
  - Deduced Affordances: clean, pour

### hanging poster (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: increase
- **Correct Tool**: side table
- **Predicted Tool**: curtain
- **Matching Tools**: side table, slicer, curtain
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask, LeisureTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: store, entertain, increase, hold, wrench, break, pick, operate, illuminate, support, decorate, plug, cool, file, handle, comfort, contain, polish
  - Matched via synonyms: support

### preparing food (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: break
- **Correct Tool**: jigsaw
- **Predicted Tool**: steak knife
- **Matching Tools**: jigsaw, steak knife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### moving furniture (❌ WRONG)
- **Required Affordance (pred)**: lift
- **Required Affordance (gold)**: lift
- **Correct Tool**: pitchfork
- **Predicted Tool**: shelving unit
- **Matching Tools**: laundry hamper, shelving unit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, contain

### packing soil (❌ WRONG)
- **Required Affordance (pred)**: compress
- **Required Affordance (gold)**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: scraper
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain

### handling tools (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: operate
- **Correct Tool**: compass saw
- **Predicted Tool**: ram
- **Matching Tools**: compass saw, ram, riding mower, circular plane, rake
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: grasp, hold, pick

### baking pastries (❌ WRONG)
- **Required Affordance (pred)**: roll
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: slick
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### melting butter (❌ WRONG)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: catling
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### managing waste (❌ WRONG)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: contain
- **Correct Tool**: tray
- **Predicted Tool**: scraper
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate

### measuring ingredients (✅ CORRECT)
- **Required Affordance (pred)**: hold
- **Required Affordance (gold)**: dice
- **Correct Tool**: dagger
- **Predicted Tool**: dagger
- **Matching Tools**: dagger, pipe cutter, metal box, parang, graver
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: grasp, hold, pick

### showcasing decorations (✅ CORRECT)
- **Required Affordance (pred)**: display
- **Required Affordance (gold)**: display
- **Correct Tool**: calculator
- **Predicted Tool**: calculator
- **Matching Tools**: calculator, roach clip
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, store, bore, repair, wash, pick, install, display
  - Matched via synonyms: display

### dusting the statue (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: clean
- **Correct Tool**: power tool
- **Predicted Tool**: toilet paper
- **Matching Tools**: power tool, toilet paper
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
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
  - Qualities: Rigid, Heavy, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, contain

### fixing broken appliances (❌ WRONG)
- **Required Affordance (pred)**: repair
- **Required Affordance (gold)**: repair
- **Correct Tool**: chamfer plane
- **Predicted Tool**: tap wrench
- **Matching Tools**: chamfer plane, palette knife, tap wrench, adz
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: fix, repair

### mounting fixtures (❌ WRONG)
- **Required Affordance (pred)**: install
- **Required Affordance (gold)**: install
- **Correct Tool**: pruner
- **Predicted Tool**: parang
- **Matching Tools**: pruner, moldboard plow, parang
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, control, operate, write, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: install

### playing active games (✅ CORRECT)
- **Required Affordance (pred)**: entertain
- **Required Affordance (gold)**: exercise
- **Correct Tool**: basket ball
- **Predicted Tool**: basket ball
- **Matching Tools**: basket ball
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: entertain, increase, break, pick, illuminate, plug, grasp, operate
  - Matched via synonyms: entertain

### adjusting fixtures (✅ CORRECT)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: monkey wrench
- **Predicted Tool**: monkey wrench
- **Matching Tools**: monkey wrench, box wrench, bathtubbasin
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsFlexible
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: wrench

### throwing away uneaten food (❌ WRONG)
- **Required Affordance (pred)**: dispose
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: safe
- **Matching Tools**: safe
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask, CleaningTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: pick, clean, plug, contain, operate

### decorating pumpkins (❌ WRONG)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: carve
- **Correct Tool**: yataghan
- **Predicted Tool**: bathtubbasin
- **Matching Tools**: bathtubbasin
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install

### cutting wood (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: saw
- **Correct Tool**: pruning saw
- **Predicted Tool**: pruning saw
- **Matching Tools**: pruning saw, scraper, creditcard, hammer, socket wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask, MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### freezing food (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: bathtub
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### cleaning surfaces (❌ WRONG)
- **Required Affordance (pred)**: wipe
- **Required Affordance (gold)**: rub
- **Correct Tool**: table knife
- **Predicted Tool**: linoleum knife
- **Matching Tools**: pin wrench, linoleum knife, chain saw
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain

### making jewelery (❌ WRONG)
- **Required Affordance (pred)**: shape
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: kitchen knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### making ice cubes (❌ WRONG)
- **Required Affordance (pred)**: cool
- **Required Affordance (gold)**: cube
- **Correct Tool**: steak knife
- **Predicted Tool**: wine bottle
- **Matching Tools**: wine bottle
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain

### creating a drainage (❌ WRONG)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: poke
- **Correct Tool**: screwdriver
- **Predicted Tool**: air hammer
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### keeping food from going bad (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: microwave
- **Matching Tools**: drum sander, scythe, microwave, side table
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: contain

### measuring distances (❌ WRONG)
- **Required Affordance (pred)**: mark
- **Required Affordance (gold)**: mark
- **Correct Tool**: signet
- **Predicted Tool**: hayfork
- **Matching Tools**: hayfork, stemmer
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: entertain, increase, carry, break, pick, illuminate, decorate, plug, grasp, operate

### removing dirt from your teeth (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: stick
- **Correct Tool**: toothpick
- **Predicted Tool**: hand shovel
- **Matching Tools**: power tool, pencil, hand shovel
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, HygieneTask
  - Qualities: Sharp, Rigid, Lightweight, HasPointedTip
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, be_heated

### assembling furniture (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: bore
- **Correct Tool**: router
- **Predicted Tool**: hammer
- **Matching Tools**: chamfer plane, crown saw, hammer
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask, LeisureTask
  - Qualities: Electronic, Rigid, Lightweight
  - Deduced Affordances: store, entertain, increase, break, pick, illuminate, plug, grasp, heat, operate

### removing skin from fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: peel
- **Required Affordance (gold)**: peel
- **Correct Tool**: parer
- **Predicted Tool**: parer
- **Matching Tools**: parer
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, Lightweight, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
  - Matched via synonyms: peel, skin

### storing cereal box (✅ CORRECT)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools**: box, food cup, toiletpaperhanger, dumbbell
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish
  - Matched via synonyms: contain, store

### melting envelope wax (✅ CORRECT)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools**: coffee machine
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy, HasContainer
  - Deduced Affordances: wrench, pick, mix, contain, handle, heat, operate
  - Matched via synonyms: heat

### preparing soil (✅ CORRECT)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: dig
- **Correct Tool**: garden spade
- **Predicted Tool**: garden spade
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasPointedTip, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, contain

### removing stains (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: rub
- **Correct Tool**: tableknife
- **Predicted Tool**: hack
- **Matching Tools**: keyhole saw, electric drill, hack
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate

### cleaning a litter box (❌ WRONG)
- **Required Affordance (pred)**: scoop
- **Required Affordance (gold)**: scoop
- **Correct Tool**: trowel
- **Predicted Tool**: sinkbasin
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasPointedTip, IsFlexible
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate

### getting a book from a high shelf (❌ WRONG)
- **Required Affordance (pred)**: grasp
- **Required Affordance (gold)**: increase
- **Correct Tool**: arm chair
- **Predicted Tool**: reamer
- **Matching Tools**: arm chair, chisel, egg, soapbar, reamer
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Soft_Deformable
  - Deduced Affordances: entertain, increase, wrench, break, pick, support, illuminate, decorate, plug, comfort, handle, contain, operate, dry
  - Matched via synonyms: handle, pick

### fixing light bulb outside your house (❌ WRONG)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: increase
- **Correct Tool**: sofa
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools**: spiral ratchet screwdriver, pitsaw
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, SleepingTask
  - Qualities: Heavy, Soft_Deformable, Rigid
  - Deduced Affordances: entertain, increase, wrench, break, pick, support, illuminate, decorate, plug, comfort, handle, contain, operate, dry

### enjoying leisure time (❌ WRONG)
- **Required Affordance (pred)**: entertain
- **Required Affordance (gold)**: read
- **Correct Tool**: desktop
- **Predicted Tool**: handtowel
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: store, wrench, pick, plug, grasp, handle, contain, heat, operate

### preparing fruits and vegetables (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: cube
- **Correct Tool**: table knife
- **Predicted Tool**: table knife
- **Matching Tools**: table knife, allen wrench, remotecontrol
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask, FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
  - Matched via synonyms: carve, cube, cut, dice, separate

### carrying containers (❌ WRONG)
- **Required Affordance (pred)**: carry
- **Required Affordance (gold)**: handle
- **Correct Tool**: router
- **Predicted Tool**: dogbed
- **Matching Tools**: roomdecor, dogbed
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask, LeisureTask
  - Qualities: Electronic, Rigid, Lightweight
  - Deduced Affordances: store, entertain, increase, break, pick, illuminate, plug, grasp, heat, operate

### breaking apart food items (❌ WRONG)
- **Required Affordance (pred)**: break
- **Required Affordance (gold)**: break
- **Correct Tool**: bottle
- **Predicted Tool**: hand ax
- **Matching Tools**: bottle, o ring, hand ax, cigar cutter
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: store, hold, carry, break, pick, operate, wrap, support, be_heated, dispose, file, plug, cool, grasp, contain, polish
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
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, store, bore, repair, wash, pick, install, display
  - Matched via synonyms: display

### removing unhealthy plant parts (✅ CORRECT)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: skin
- **Correct Tool**: kitchen knife
- **Predicted Tool**: kitchen knife
- **Matching Tools**: kitchen knife, saw set, bore bit
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
  - Matched via synonyms: carve, cube, cut, dice, separate

### preparing cooking ingredients (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: chop
- **Correct Tool**: half hatchet
- **Predicted Tool**: butcher knife
- **Matching Tools**: half hatchet, bread, butcher knife, pruning shear
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: cut, separate

### removing old fixtures (❌ WRONG)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: hammer
- **Correct Tool**: scythe
- **Predicted Tool**: ram
- **Matching Tools**: scythe, ram
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Sharp, HasBlade, Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, peel, cube, fix, crack, staple, plug, control, operate, hammer, write, poke, grasp, handle, skin, bore, repair, wash, pick, install, contain
  - Matched via synonyms: wrench

### exercising (❌ WRONG)
- **Required Affordance (pred)**: exercise
- **Required Affordance (gold)**: exercise
- **Correct Tool**: tennis racket
- **Predicted Tool**: peppershaker
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole, EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, entertain, write, poke, grasp, increase, bore, repair, wash, pick, install, illuminate

### creating a drainage (❌ WRONG)
- **Required Affordance (pred)**: dig
- **Required Affordance (gold)**: pierce
- **Correct Tool**: punch
- **Predicted Tool**: hand drill
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid
  - Deduced Affordances: pick, clean, eat, cut, pour

### applying make-up (❌ WRONG)
- **Required Affordance (pred)**: spread
- **Required Affordance (gold)**: beautify
- **Correct Tool**: nailfile
- **Predicted Tool**: dogbed
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate

### using appliances with a button (❌ WRONG)
- **Required Affordance (pred)**: press
- **Required Affordance (gold)**: press
- **Correct Tool**: tamp
- **Predicted Tool**: scrub brush
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### opening packages (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: crack
- **Correct Tool**: parer
- **Predicted Tool**: slip joint plier
- **Matching Tools**: parer, slip joint plier, gutter, glue stick
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, Lightweight, HasBlade
  - Deduced Affordances: spread, hold, break, cut, carve, change, separate, wrap, peel, cube, fix, crack, plug, dice, operate, support, grasp, skin, repair, carry, pick, mix, be_heated, contain
  - Matched via synonyms: carve, cube, cut, dice, separate

### decreasing darkness (✅ CORRECT)
- **Required Affordance (pred)**: illuminate
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools**: curtain
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole, FurnitureRole
  - Tasks: LeisureTask, StorageTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: store, entertain, increase, hold, carry, break, pick, support, clean, illuminate, decorate, file, cool, comfort, contain, polish, dry
  - Matched via synonyms: illuminate

### combining cleaning solutions (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: mix
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools**: pestle
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: mix

### harvesting produce (✅ CORRECT)
- **Required Affordance (pred)**: pick
- **Required Affordance (gold)**: pick
- **Correct Tool**: garden rake
- **Predicted Tool**: garden rake
- **Matching Tools**: garden rake, gangsaw, moldboard plow, pot, wrench
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasTeeth
  - Deduced Affordances: write, hold, bore, repair, wash, separate, install, change, break, pick, cut, fix, plug, poke, staple, grasp, control, operate
  - Matched via synonyms: grasp, hold, pick

### reducing space in bin (❌ WRONG)
- **Required Affordance (pred)**: compress
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: bucksaw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, write, poke, grasp, bore, repair, wash, pick, install, mix, contain

### charging devices (❌ WRONG)
- **Required Affordance (pred)**: plug
- **Required Affordance (gold)**: plug
- **Correct Tool**: pneumatic drill
- **Predicted Tool**: box
- **Matching Tools**: pneumatic drill, keychain, box, dagger
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, IsRotary, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: plug

### cleaning a surface (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wipe
- **Correct Tool**: butter knife
- **Predicted Tool**: nailfile
- **Matching Tools**: nailfile, dog bed
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate

### loosening bolts (❌ WRONG)
- **Required Affordance (pred)**: wrench
- **Required Affordance (gold)**: wrench
- **Correct Tool**: brace wrench
- **Predicted Tool**: circular saw
- **Matching Tools**: circular saw, television
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### removing adhesives (❌ WRONG)
- **Required Affordance (pred)**: rub
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: dirk
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Rigid, HasHeatElement
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### personalising items (❌ WRONG)
- **Required Affordance (pred)**: engrave
- **Required Affordance (gold)**: engrave
- **Correct Tool**: scauper
- **Predicted Tool**: awl
- **Matching Tools**: scauper, bit, awl, jointer
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: write

### opening an envelope (✅ CORRECT)
- **Required Affordance (pred)**: slit
- **Required Affordance (gold)**: cut
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools**: blade, keychain, cup, bottle opener
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: cube, cut, separate

### managing schedules (✅ CORRECT)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: time
- **Correct Tool**: watch
- **Predicted Tool**: watch
- **Matching Tools**: watch, tennisracket, dumbbell, portable saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, control, operate, entertain, write, poke, grasp, store, increase, bore, repair, wash, pick, install, illuminate, display
  - Matched via synonyms: write

### mixing ingredients (✅ CORRECT)
- **Required Affordance (pred)**: mix
- **Required Affordance (gold)**: mix
- **Correct Tool**: butter knife
- **Predicted Tool**: butter knife
- **Matching Tools**: butter knife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: mix

### storing food (❌ WRONG)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: wrap
- **Correct Tool**: ball
- **Predicted Tool**: pallet
- **Matching Tools**: parer, pallet
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: entertain, increase, break, pick, illuminate, plug, grasp, operate

### serving cake (❌ WRONG)
- **Required Affordance (pred)**: hold
- **Required Affordance (gold)**: cut
- **Correct Tool**: cutter
- **Predicted Tool**: kitchen knife
- **Matching Tools**: cutter, cellphone, kitchen knife, candle, locking plier
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: grasp, hold, pick

### reheating coffee (❌ WRONG)
- **Required Affordance (pred)**: be_heated
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: desk lamp
- **Matching Tools**: pan, desk lamp
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasContainer, Heated
  - Deduced Affordances: carry, pick, be_heated, mix, plug, contain, heat, operate
  - Matched via synonyms: be_heated, heat

### using appliances (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: handle
- **Correct Tool**: drum sander
- **Predicted Tool**: toiletpaperhanger
- **Matching Tools**: drum sander, lawn mower, toiletpaperhanger
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, IsRotary
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: control

### screwing in screws (✅ CORRECT)
- **Required Affordance (pred)**: screw
- **Required Affordance (gold)**: screw
- **Correct Tool**: phillips screwdriver
- **Predicted Tool**: phillips screwdriver
- **Matching Tools**: phillips screwdriver, drill
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary, Lightweight
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: screw

### labelling belongings (❌ WRONG)
- **Required Affordance (pred)**: write
- **Required Affordance (gold)**: engrave
- **Correct Tool**: scauper
- **Predicted Tool**: spraybottle
- **Matching Tools**: scauper, drilling bit, spraybottle, pestle
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install
  - Matched via synonyms: write

### patching damages furniture (❌ WRONG)
- **Required Affordance (pred)**: repair
- **Required Affordance (gold)**: repair
- **Correct Tool**: chain saw
- **Predicted Tool**: hammer
- **Matching Tools**: chain saw, hammer, toiletpaperhanger, center bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic, IsRotary, Flammable
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: fix, repair

### hanging items on a wall (❌ WRONG)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: drill
- **Correct Tool**: drill
- **Predicted Tool**: spatula
- **Matching Tools**: spatula
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, IsRotary, HasPointedTip
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, drill, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain

### adjusting blinds (✅ CORRECT)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: bend
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: bender, garden trowel, hacksaw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsFlexible, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: control

### keeping dirty clothes (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: dresser
- **Matching Tools**: dresser, bricklayer's hammer, shovel
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer
  - Deduced Affordances: hold, wrench, break, file, wrap, plug, comfort, operate, support, decorate, cool, grasp, handle, store, increase, carry, pick, be_heated, dispose, contain, polish
  - Matched via synonyms: contain, store

### organizing documents (❌ WRONG)
- **Required Affordance (pred)**: store
- **Required Affordance (gold)**: file
- **Correct Tool**: taper file
- **Predicted Tool**: safe
- **Matching Tools**: spray bottle, coffee mug, safe
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### creating decorative art (✅ CORRECT)
- **Required Affordance (pred)**: decorate
- **Required Affordance (gold)**: engrave
- **Correct Tool**: graver
- **Predicted Tool**: graver
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: hold, break, cut, change, separate, peel, cube, fix, crack, staple, plug, screw, control, operate, write, clean, poke, grasp, skin, bore, repair, wash, pick, install

### choosing a comfortable seat (✅ CORRECT)
- **Required Affordance (pred)**: comfort
- **Required Affordance (gold)**: comfort
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools**: ottoman
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, StorageTask
  - Qualities: Heavy, Rigid, Soft_Deformable
  - Deduced Affordances: hold, wrench, break, file, plug, comfort, operate, dry, entertain, support, decorate, cool, handle, store, increase, pick, illuminate, contain, polish
  - Matched via synonyms: comfort

### installing shelves (✅ CORRECT)
- **Required Affordance (pred)**: install
- **Required Affordance (gold)**: bore
- **Correct Tool**: bucksaw
- **Predicted Tool**: bucksaw
- **Matching Tools**: bucksaw, ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: install

### hanging pictures (✅ CORRECT)
- **Required Affordance (pred)**: support
- **Required Affordance (gold)**: bore
- **Correct Tool**: straight flute
- **Predicted Tool**: straight flute
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasPointedTip, IsRotary
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, drill, clean, poke, grasp, bore, repair, wash, pick, install

### rolling out dough (❌ WRONG)
- **Required Affordance (pred)**: roll
- **Required Affordance (gold)**: roll
- **Correct Tool**: flashlight
- **Predicted Tool**: beading plane
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, LeisureTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, entertain, write, clean, poke, grasp, increase, bore, repair, wash, pick, install, illuminate

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
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: clean, wash

### removing stains (❌ WRONG)
- **Required Affordance (pred)**: clean
- **Required Affordance (gold)**: wipe
- **Correct Tool**: butter knife
- **Predicted Tool**: slouse
- **Matching Tools**: bradawl, slouse, hatchet
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate

### measuring liquids (✅ CORRECT)
- **Required Affordance (pred)**: contain
- **Required Affordance (gold)**: contain
- **Correct Tool**: butter knife
- **Predicted Tool**: butter knife
- **Matching Tools**: butter knife, pitchfork, wrench, cell phone
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, HasBlade
  - Deduced Affordances: carve, spread, repair, change, carry, break, wrap, support, pick, mix, be_heated, cut, fix, plug, grasp, dice, contain, operate
  - Matched via synonyms: contain

### preparing snacks (❌ WRONG)
- **Required Affordance (pred)**: cut
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: egg
- **Matching Tools**: pestle, flat file, cigar cutter, hayfork, egg
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, control, operate, hammer, write, poke, grasp, handle, bore, repair, wash, pick, install, mix, contain
  - Matched via synonyms: cut, separate

### listening to a song (✅ CORRECT)
- **Required Affordance (pred)**: operate
- **Required Affordance (gold)**: entertain
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: cell phone, fore plane, screw key, clincher
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask, WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: hold, break, cut, change, separate, staple, control, operate, entertain, write, poke, grasp, store, increase, bore, repair, wash, pick, install, illuminate, display
  - Matched via synonyms: operate

### adjusting cables (✅ CORRECT)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: bender, crown saw, coffee mug, crosscut saw
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsFlexible, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: grasp, hold, pick

### opening doors and cabinets (❌ WRONG)
- **Required Affordance (pred)**: handle
- **Required Affordance (gold)**: handle
- **Correct Tool**: two handed saw
- **Predicted Tool**: tire iron
- **Matching Tools**: two handed saw, rock bit, tire iron, roach clip, hand ax
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: hold, wrench, break, cut, change, separate, fix, plug, staple, screw, control, operate, hammer, write, clean, poke, grasp, handle, bore, repair, wash, pick, install, contain
  - Matched via synonyms: grasp, handle, hold, pick

### shaping wire (✅ CORRECT)
- **Required Affordance (pred)**: bend
- **Required Affordance (gold)**: bend
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsFlexible, HasBlade
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install

### operating appliances (❌ WRONG)
- **Required Affordance (pred)**: control
- **Required Affordance (gold)**: control
- **Correct Tool**: compass saw
- **Predicted Tool**: toiletpaperhanger
- **Matching Tools**: compass saw, bender, toiletpaperhanger, dagger
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasBlade, HasTeeth, IsFlexible
  - Deduced Affordances: hold, break, cut, change, separate, fix, plug, staple, screw, control, operate, write, clean, poke, grasp, bore, repair, wash, pick, install
  - Matched via synonyms: control

