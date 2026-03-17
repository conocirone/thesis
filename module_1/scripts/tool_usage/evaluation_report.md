# Online Phase Evaluation Report — Tool Usage Task

Evaluation of the Neuro-Symbolic pipeline against the Robo-CSK-Benchmark tool_usage task.

- **Total Questions Tested**: 50
- **Accuracy**: 44.00%
- **Correct Predictions**: 22/50

### Match Diagnostics
- Single match: 16 (32.0%)
- Multiple matches: 8 (16.0%)
- No match (random fallback): 26 (52.0%)

### Per-Affordance Accuracy
| Affordance | Correct | Total | Accuracy |
|------------|---------|-------|----------|
| absorb | 0 | 1 | 0.0% |
| be_heated | 2 | 2 | 100.0% |
| carry | 1 | 2 | 50.0% |
| carve | 1 | 1 | 100.0% |
| clean | 2 | 2 | 100.0% |
| compress | 0 | 1 | 0.0% |
| cool | 0 | 1 | 0.0% |
| crack | 0 | 1 | 0.0% |
| crunch | 0 | 1 | 0.0% |
| cut | 0 | 1 | 0.0% |
| decorate | 3 | 3 | 100.0% |
| dice | 0 | 1 | 0.0% |
| display | 1 | 1 | 100.0% |
| dispose | 1 | 1 | 100.0% |
| dry | 0 | 2 | 0.0% |
| entertain | 0 | 1 | 0.0% |
| fix | 0 | 1 | 0.0% |
| grasp | 0 | 1 | 0.0% |
| hold | 0 | 1 | 0.0% |
| increase | 2 | 2 | 100.0% |
| operate | 0 | 1 | 0.0% |
| pierce | 1 | 1 | 100.0% |
| plow | 0 | 1 | 0.0% |
| plug | 0 | 1 | 0.0% |
| polish | 0 | 1 | 0.0% |
| roll | 1 | 1 | 100.0% |
| scoop | 0 | 1 | 0.0% |
| separate | 1 | 1 | 100.0% |
| shape | 1 | 1 | 100.0% |
| skin | 0 | 1 | 0.0% |
| slit | 0 | 1 | 0.0% |
| smoothen | 0 | 2 | 0.0% |
| store | 1 | 2 | 50.0% |
| support | 1 | 1 | 100.0% |
| tamp | 0 | 1 | 0.0% |
| time | 1 | 1 | 100.0% |
| unclog | 1 | 2 | 50.0% |
| wash | 0 | 1 | 0.0% |
| wrap | 0 | 1 | 0.0% |
| write | 1 | 1 | 100.0% |

## Test Cases Log

### making salsa (❌ WRONG)
- **Required Affordance**: dice
- **Correct Tool**: machete
- **Predicted Tool**: kitchenknife
- **Matching Tools**: kitchenknife, knife
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: plug, separate, cut, change, bore, pick, fix, grasp, clean, poke, hold

### cleaning shower head (✅ CORRECT)
- **Required Affordance**: increase
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools**: ottoman
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Heavy
  - Deduced Affordances: comfort, support, increase, contain, illuminate

### painting walls (✅ CORRECT)
- **Required Affordance**: roll
- **Correct Tool**: food jar
- **Predicted Tool**: food jar
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: StorageContainerRole
  - Deduced Affordances: None

### protecting items (❌ WRONG)
- **Required Affordance**: wrap
- **Correct Tool**: water bottle
- **Predicted Tool**: stillson wrench
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight
  - Deduced Affordances: pick, contain

### watering plants (✅ CORRECT)
- **Required Affordance**: carry
- **Correct Tool**: plate
- **Predicted Tool**: plate
- **Matching Tools**: plate
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: support, be_heated, pick, carry, contain, grasp, wrap

### dividing food into portions (✅ CORRECT)
- **Required Affordance**: separate
- **Correct Tool**: broad hatchet
- **Predicted Tool**: broad hatchet
- **Matching Tools**: broad hatchet
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### storing fruits and vegetables (❌ WRONG)
- **Required Affordance**: store
- **Correct Tool**: box
- **Predicted Tool**: metal box
- **Matching Tools**: metal box
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: StorageContainerRole
  - Deduced Affordances: wrap, contain, roll

### mending clothes (❌ WRONG)
- **Required Affordance**: fix
- **Correct Tool**: razor
- **Predicted Tool**: lancet
- **Matching Tools**: lancet, counterbore, pruner
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: separate, carve, cut, crack, change, pick, cube, mix, dice, grasp, break, skin, repair, hold, peel

### decorating lobby (✅ CORRECT)
- **Required Affordance**: decorate
- **Correct Tool**: statue
- **Predicted Tool**: statue
- **Matching Tools**: statue
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile
  - Deduced Affordances: pick, decorate

### cutting open food objects (❌ WRONG)
- **Required Affordance**: slit
- **Correct Tool**: blade
- **Predicted Tool**: alarmclock
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: separate, carve, cut, crack, change, pick, cube, mix, dice, grasp, break, skin, repair, hold, peel

### organizing collectibles (✅ CORRECT)
- **Required Affordance**: display
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: cell phone
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: grasp, display

### setting tiles (❌ WRONG)
- **Required Affordance**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: adjustable wrench
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight
  - Deduced Affordances: grasp

### using tools (❌ WRONG)
- **Required Affordance**: hold
- **Correct Tool**: seal
- **Predicted Tool**: penknife
- **Matching Tools**: breast drill, core drill, box wrench, penknife
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Fragile, Rigid
  - Deduced Affordances: pick

### maintaining floors (❌ WRONG)
- **Required Affordance**: polish
- **Correct Tool**: rasp
- **Predicted Tool**: rake
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: separate, carve, cut, crack, change, pick, cube, mix, dice, grasp, break, skin, repair, hold, peel

### plugging devices in (❌ WRONG)
- **Required Affordance**: plug
- **Correct Tool**: bandsaw
- **Predicted Tool**: beading plane
- **Matching Tools**: bandsaw, portable saw, beading plane
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### drying the dishes (❌ WRONG)
- **Required Affordance**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: hunting knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: None

### ironing clothes (❌ WRONG)
- **Required Affordance**: smoothen
- **Correct Tool**: abrading stone
- **Predicted Tool**: twist bit
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Fragile
  - Deduced Affordances: plug, separate, cut, change, bore, pick, fix, clean, poke, hold

### clearing snow (❌ WRONG)
- **Required Affordance**: plow
- **Correct Tool**: lister
- **Predicted Tool**: table knife
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid
  - Deduced Affordances: grasp, wrap

### serving ice cream (❌ WRONG)
- **Required Affordance**: scoop
- **Correct Tool**: garden trowel
- **Predicted Tool**: lightswitch
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: pick

### drying washed dishes (❌ WRONG)
- **Required Affordance**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: cross bit
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: clean

### decorating table (✅ CORRECT)
- **Required Affordance**: decorate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools**: curtain
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: decorate

### cleaning the fridge (✅ CORRECT)
- **Required Affordance**: clean
- **Correct Tool**: saber saw
- **Predicted Tool**: saber saw
- **Matching Tools**: saber saw, spade bit
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### organizing items (✅ CORRECT)
- **Required Affordance**: store
- **Correct Tool**: shelving unit
- **Predicted Tool**: shelving unit
- **Matching Tools**: shelving unit
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: store, roll, pick, contain, wrap

### cooking an omelette (✅ CORRECT)
- **Required Affordance**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: pan
- **Matching Tools**: pan, fork
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid
  - Deduced Affordances: be_heated, heat, pick

### keeping a journal (✅ CORRECT)
- **Required Affordance**: write
- **Correct Tool**: pencil
- **Predicted Tool**: pencil
- **Matching Tools**: pencil
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: grasp, write, pick

### washing your face (❌ WRONG)
- **Required Affordance**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: paper cutter
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### fixing a toilet (❌ WRONG)
- **Required Affordance**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: folding saw
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### cutting an apple (❌ WRONG)
- **Required Affordance**: cut
- **Correct Tool**: switchblade
- **Predicted Tool**: electric hammer
- **Matching Tools**: electric hammer, hatchel
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Sharp, Rigid
  - Deduced Affordances: grasp, pick, hold

### cleaning the mirror (✅ CORRECT)
- **Required Affordance**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: vaccum cleaner
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: None

### throwing away toilet paper (✅ CORRECT)
- **Required Affordance**: dispose
- **Correct Tool**: garbage can
- **Predicted Tool**: garbage can
- **Matching Tools**: garbage can
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy
  - Deduced Affordances: dispose, contain

### displaying a statue (✅ CORRECT)
- **Required Affordance**: support
- **Correct Tool**: side table
- **Predicted Tool**: side table
- **Matching Tools**: side table
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: support, contain, increase, store

### sanding surfaces (❌ WRONG)
- **Required Affordance**: smoothen
- **Correct Tool**: steel wool pad
- **Predicted Tool**: pot
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Granular, Fragile
  - Deduced Affordances: None

### creating frost patterns as decoration (❌ WRONG)
- **Required Affordance**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: bill
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### cleaning pipes (✅ CORRECT)
- **Required Affordance**: unclog
- **Correct Tool**: plunger
- **Predicted Tool**: plunger
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### removing skin from meat (❌ WRONG)
- **Required Affordance**: skin
- **Correct Tool**: lochaber ax
- **Predicted Tool**: teddybear
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### changing an objects shape (✅ CORRECT)
- **Required Affordance**: shape
- **Correct Tool**: shaping tool
- **Predicted Tool**: shaping tool
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### telling the time (✅ CORRECT)
- **Required Affordance**: time
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic
  - Deduced Affordances: grasp, display

### opening a nut (❌ WRONG)
- **Required Affordance**: crack
- **Correct Tool**: stiletto
- **Predicted Tool**: toothpaste
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Sharp, Lightweight
  - Deduced Affordances: repair

### placing objects down (❌ WRONG)
- **Required Affordance**: grasp
- **Correct Tool**: sandblaster
- **Predicted Tool**: scriber
- **Matching Tools**: sandblaster, scriber, saber saw, maul
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: separate, cut, drill, change, bore, hammer, clean, wrench, lift, grasp, screw, hold, staple, pick, break, fix, poke, saw, plug, control, handle, install, operate, repair

### surfing the internet (❌ WRONG)
- **Required Affordance**: entertain
- **Correct Tool**: c d
- **Predicted Tool**: dogbed
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable
  - Deduced Affordances: pick, eat, cut

### transporting liquids (❌ WRONG)
- **Required Affordance**: carry
- **Correct Tool**: mug
- **Predicted Tool**: spud
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight
  - Deduced Affordances: support, be_heated, pick, contain, break, grasp

### increasing beauty of the room (✅ CORRECT)
- **Required Affordance**: decorate
- **Correct Tool**: poster
- **Predicted Tool**: poster
- **Matching Tools**: poster
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: pick, decorate

### crushing ice (❌ WRONG)
- **Required Affordance**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: bolt cutter
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: None

### reheating soup (✅ CORRECT)
- **Required Affordance**: be_heated
- **Correct Tool**: kettle
- **Predicted Tool**: kettle
- **Matching Tools**: kettle
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy
  - Deduced Affordances: be_heated, heat, pick

### hanging painting (✅ CORRECT)
- **Required Affordance**: increase
- **Correct Tool**: counter top
- **Predicted Tool**: counter top
- **Matching Tools**: counter top
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: support, contain, increase, store

### preparing meat (✅ CORRECT)
- **Required Affordance**: carve
- **Correct Tool**: tableknife
- **Predicted Tool**: tableknife
- **Matching Tools**: tableknife
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: separate, carve, cut, crack, change, pick, cube, mix, dice, grasp, break, skin, repair, hold, peel

### storing clothes (❌ WRONG)
- **Required Affordance**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: nailfile
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight
  - Deduced Affordances: grasp

### making a small hole (✅ CORRECT)
- **Required Affordance**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: bradawl
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: plug, separate, cut, change, bore, pick, fix, grasp, clean, poke, hold

### hanging cleaned laundry (❌ WRONG)
- **Required Affordance**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: screwdriver
- **Matching Tools**: None
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Washable
  - Deduced Affordances: clean

### using appliances (❌ WRONG)
- **Required Affordance**: operate
- **Correct Tool**: floorlamp
- **Predicted Tool**: ram
- **Matching Tools**: ram
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LightingRole
  - Qualities: Heavy, Rigid
  - Deduced Affordances: None

