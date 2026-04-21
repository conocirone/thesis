# Online Phase Evaluation Report — Tool Usage Task

Evaluation of the Neuro-Symbolic pipeline against the Robo-CSK-Benchmark tool_usage task.

- **Model**: `mistral-medium-latest`
- **Ablation mode**: `none`
- **Total Questions Tested**: 291
- **Accuracy**: 51.55%
- **Correct Predictions**: 150/291
- **Symbolic Recall** (correct tool in matching set): 253/291 = 86.9%
- **Affordance Prediction Accuracy (exact)**: 62.5%
- **Affordance Prediction Accuracy (with synonyms)**: 79.7%

### Match Diagnostics
| Metric | Count | % |
|---|---|---|
| Single symbolic match | 18 | 6.2% |
| Multiple symbolic matches (LLM tie-break) | 272 | 93.5% |
| No symbolic match | 1 | 0.3% |
| &nbsp;&nbsp;→ SOMA-hint pre-filter selected | 18 | 6.2% |
| &nbsp;&nbsp;→ LLM fallback | 1 | 0.3% |
| Matches gained via synonym expansion | 286 | — |

### Per-Affordance Accuracy
| Affordance | Correct | Total | Accuracy |
|------------|---------|-------|----------|
| absorb | 1 | 3 | 33.3% |
| be_heated | 5 | 5 | 100.0% |
| beautify | 0 | 4 | 0.0% |
| bend | 2 | 3 | 66.7% |
| bore | 1 | 3 | 33.3% |
| break | 0 | 3 | 0.0% |
| carry | 2 | 4 | 50.0% |
| carve | 2 | 3 | 66.7% |
| change | 0 | 3 | 0.0% |
| chop | 1 | 3 | 33.3% |
| clean | 2 | 11 | 18.2% |
| comfort | 2 | 3 | 66.7% |
| compress | 1 | 3 | 33.3% |
| contain | 1 | 4 | 25.0% |
| control | 1 | 3 | 33.3% |
| cool | 4 | 4 | 100.0% |
| cover | 0 | 3 | 0.0% |
| crack | 2 | 3 | 66.7% |
| crumble | 1 | 3 | 33.3% |
| crunch | 1 | 3 | 33.3% |
| cube | 2 | 3 | 66.7% |
| cut | 3 | 5 | 60.0% |
| decorate | 3 | 5 | 60.0% |
| dice | 1 | 4 | 25.0% |
| dig | 2 | 3 | 66.7% |
| display | 1 | 3 | 33.3% |
| dispose | 3 | 4 | 75.0% |
| drill | 2 | 3 | 66.7% |
| dry | 3 | 3 | 100.0% |
| eat | 3 | 3 | 100.0% |
| engrave | 1 | 3 | 33.3% |
| entertain | 2 | 3 | 66.7% |
| exercise | 0 | 3 | 0.0% |
| file | 3 | 3 | 100.0% |
| fix | 0 | 3 | 0.0% |
| flex | 3 | 3 | 100.0% |
| grasp | 3 | 4 | 75.0% |
| grind | 0 | 3 | 0.0% |
| hammer | 2 | 5 | 40.0% |
| handle | 0 | 3 | 0.0% |
| heat | 6 | 6 | 100.0% |
| hold | 0 | 3 | 0.0% |
| illuminate | 3 | 3 | 100.0% |
| increase | 3 | 7 | 42.9% |
| install | 0 | 3 | 0.0% |
| lift | 0 | 3 | 0.0% |
| mark | 2 | 3 | 66.7% |
| melt | 3 | 3 | 100.0% |
| mix | 2 | 3 | 66.7% |
| operate | 1 | 3 | 33.3% |
| peel | 3 | 3 | 100.0% |
| pick | 0 | 3 | 0.0% |
| pierce | 1 | 4 | 25.0% |
| plow | 0 | 3 | 0.0% |
| plug | 1 | 3 | 33.3% |
| poke | 2 | 3 | 66.7% |
| polish | 3 | 4 | 75.0% |
| pour | 3 | 3 | 100.0% |
| press | 1 | 3 | 33.3% |
| read | 3 | 4 | 75.0% |
| repair | 1 | 3 | 33.3% |
| roll | 1 | 2 | 50.0% |
| rub | 0 | 3 | 0.0% |
| saw | 1 | 3 | 33.3% |
| scoop | 1 | 3 | 33.3% |
| screw | 4 | 4 | 100.0% |
| separate | 2 | 2 | 100.0% |
| shape | 1 | 1 | 100.0% |
| skin | 1 | 3 | 33.3% |
| slit | 2 | 3 | 66.7% |
| smoothen | 2 | 3 | 66.7% |
| solder | 3 | 3 | 100.0% |
| spread | 2 | 3 | 66.7% |
| staple | 2 | 2 | 100.0% |
| stick | 0 | 1 | 0.0% |
| store | 8 | 9 | 88.9% |
| strip | 1 | 1 | 100.0% |
| support | 2 | 3 | 66.7% |
| tamp | 1 | 3 | 33.3% |
| time | 2 | 2 | 100.0% |
| unclog | 3 | 3 | 100.0% |
| wash | 1 | 5 | 20.0% |
| wipe | 0 | 3 | 0.0% |
| wrap | 0 | 2 | 0.0% |
| wrench | 3 | 4 | 75.0% |
| write | 3 | 4 | 75.0% |

## Test Cases Log

### making salsa (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dice
- **Affordance Candidates (top-3)**: dice, mix, cut
- **Required Affordance (gold)**: dice
- **Correct Tool**: machete
- **Predicted Tool**: kitchenknife
- **Matching Tools (symbolic)**: machete, kitchenknife, bandsaw, knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, Heavy, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, saw

### cleaning shower head (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: unclog
- **Affordance Candidates (top-3)**: unclog, increase, wash
- **Required Affordance (gold)**: increase
- **Correct Tool**: ottoman
- **Predicted Tool**: butterknife
- **Matching Tools (symbolic)**: ottoman, punch, butterknife, food can
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask, SleepingTask
  - Qualities: Heavy, Soft_Deformable
  - Deduced Affordances: heat, carry, comfort, cover, support, wrap, dry, repair, time, write, mix, wipe, store, hold, read, exercise, entertain, display
  - Augmented Affordances (role/task+ConceptNet): contain
  - Matched via synonyms: wipe

### painting walls (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, cover, smoothen
- **Required Affordance (gold)**: roll
- **Correct Tool**: food jar
- **Predicted Tool**: counter top
- **Matching Tools (symbolic)**: food jar, counter top, curtain
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, hammer, store, heat, entertain, read, wash, time, illuminate, write, clean, wrap, mix, cool, smoothen, dry
  - Matched via synonyms: smoothen, wrap

### protecting items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cover
- **Affordance Candidates (top-3)**: cover, wrap, contain
- **Required Affordance (gold)**: wrap
- **Correct Tool**: water bottle
- **Predicted Tool**: garbagecan
- **Matching Tools (symbolic)**: water bottle, garbagecan, two handed saw, stillson wrench, trepan
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight, HasContainer
  - Deduced Affordances: poke, heat, absorb, carry, decorate, wash, write, contain, clean, store, fix, melt, roll, hold, read, entertain, control, rub
  - Matched via synonyms: contain, store

### watering plants (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: carry
- **Affordance Candidates (top-3)**: carry, pour, contain
- **Required Affordance (gold)**: carry
- **Correct Tool**: plate
- **Predicted Tool**: plate
- **Matching Tools (symbolic)**: plate, tap, try square, spiral ratchet screwdriver
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: carry, contain, pour, store, support

### dividing food into portions (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: separate
- **Affordance Candidates (top-3)**: separate, cut, hold
- **Required Affordance (gold)**: separate
- **Correct Tool**: broad hatchet
- **Predicted Tool**: broad hatchet
- **Matching Tools (symbolic)**: broad hatchet
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, grasp, hold, saw

### storing fruits and vegetables (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, support, cool
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools (symbolic)**: box, metal box, winebottle, razorblade, spreader
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid
  - Deduced Affordances: heat, carry, decorate, wrap, wash, illuminate, mix, write, contain, clean, store, hold, read, dry
  - Matched via synonyms: carry, contain, store

### mending clothes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: fix
- **Affordance Candidates (top-3)**: fix, grasp, cut
- **Required Affordance (gold)**: fix
- **Correct Tool**: razor
- **Predicted Tool**: counterbore
- **Matching Tools (symbolic)**: razor, fork, lancet, counterbore, pruner
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Sharp, Rigid, Lightweight
  - Deduced Affordances: cut, wash, write, hold, mark, hammer, roll, clean, store, smoothen
  - Matched via synonyms: cut, hold

### decorating lobby (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: decorate
- **Affordance Candidates (top-3)**: decorate, beautify, display
- **Required Affordance (gold)**: decorate
- **Correct Tool**: statue
- **Predicted Tool**: butterknife
- **Matching Tools (symbolic)**: statue, dovetail plane, butterknife, coping saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, time, illuminate, hold, display
  - Matched via synonyms: display, illuminate

### cutting open food objects (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, slit, pierce
- **Required Affordance (gold)**: slit
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools (symbolic)**: broadax, blade
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### organizing collectibles (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: display
- **Affordance Candidates (top-3)**: display, store, support
- **Required Affordance (gold)**: display
- **Correct Tool**: cell phone
- **Predicted Tool**: circular saw
- **Matching Tools (symbolic)**: cell phone, circular saw, ax, faucet, houseplant
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: time, illuminate, press, break, write, mark, file, roll, contain, clean, control, entertain
  - Matched via synonyms: contain, illuminate

### setting tiles (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: tamp
- **Affordance Candidates (top-3)**: tamp, support, spread
- **Required Affordance (gold)**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: adjustable wrench
- **Matching Tools (symbolic)**: stemmer, crank handle, bolt cutter, adjustable wrench, crosscut saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: cut, cool, staple, heat, lift, wash, screw, saw, illuminate, write, time, stick, mark, hold, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, dice, mix
  - Matched via synonyms: lift, spread

### using tools (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: handle
- **Affordance Candidates (top-3)**: handle, operate, grasp
- **Required Affordance (gold)**: hold
- **Correct Tool**: seal
- **Predicted Tool**: box wrench
- **Matching Tools (symbolic)**: seal, breast drill, core drill, box wrench, penknife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: bore, heat, comfort, wash, write, illuminate, stick, hammer, control, store, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate
  - Matched via synonyms: control, operate

### maintaining floors (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, polish, smoothen
- **Required Affordance (gold)**: polish
- **Correct Tool**: rasp
- **Predicted Tool**: flashlight
- **Matching Tools (symbolic)**: rake, jackscrew, flashlight, rasp
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable, Lightweight
  - Deduced Affordances: poke, operate, contain, stick, hold, spread, heat, entertain, time, write, clean, melt, pour, cut, cover, wrap, mix, smoothen, dry
  - Matched via synonyms: clean, smoothen

### plugging devices in (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: plug
- **Affordance Candidates (top-3)**: plug, handle, operate
- **Required Affordance (gold)**: plug
- **Correct Tool**: bandsaw
- **Predicted Tool**: light switch
- **Matching Tools (symbolic)**: bandsaw, light switch, portable saw, corkscrew, beading plane
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, grasp, operate

### drying the dishes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: absorb
- **Affordance Candidates (top-3)**: absorb, dry, hold
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: hunting knife
- **Matching Tools (symbolic)**: strickle, toothpick, hunting knife, tack hammer
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: wipe, wash, clean, write
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog

### ironing clothes (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: smoothen
- **Affordance Candidates (top-3)**: smoothen, heat, handle
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: abrading stone
- **Predicted Tool**: abrading stone
- **Matching Tools (symbolic)**: abrading stone, twist bit, dogbed, coal shovel, wood chisel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: cut, operate, carry, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: file, hold, rub, smoothen

### clearing snow (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: plow
- **Affordance Candidates (top-3)**: plow, lift, support
- **Required Affordance (gold)**: plow
- **Correct Tool**: lister
- **Predicted Tool**: beading plane
- **Matching Tools (symbolic)**: dado plane, beading plane, gangsaw, table knife
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Toxic_Hazardous, Liquid
  - Deduced Affordances: heat, wash, write, wipe, mark, clean, entertain
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog

### serving ice cream (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: scoop
- **Affordance Candidates (top-3)**: scoop, carry, hold
- **Required Affordance (gold)**: scoop
- **Correct Tool**: garden trowel
- **Predicted Tool**: garden trowel
- **Matching Tools (symbolic)**: bath tub basin, garden trowel, wateringcan
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, illuminate, hold, mark, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: dig, hold, plow

### drying washed dishes (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dry
- **Affordance Candidates (top-3)**: dry, absorb, support
- **Required Affordance (gold)**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: hand towel
- **Matching Tools (symbolic)**: hand towel, cross bit, hunting knife, lettuce
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable
  - Deduced Affordances: polish, heat, absorb, cover, wash, write, break, stick, clean, hold, skin, dry
  - Matched via synonyms: absorb, dry

### decorating table (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: beautify
- **Affordance Candidates (top-3)**: beautify, display, support
- **Required Affordance (gold)**: decorate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools (symbolic)**: curtain, spoon, tap wrench, bender, showerglas
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: cool, heat, comfort, cover, decorate, wash, write, illuminate, stick, clean, hammer, control, store, entertain
  - Augmented Affordances (role/task+ConceptNet): beautify, increase
  - Matched via synonyms: beautify, decorate, illuminate

### cleaning the fridge (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wipe
- **Affordance Candidates (top-3)**: wipe, dispose, clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: saber saw
- **Predicted Tool**: spray bottle
- **Matching Tools (symbolic)**: saber saw, spray bottle, spade bit, showerhead, oven
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, wash

### organizing items (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: store
- **Affordance Candidates (top-3)**: store, contain, support
- **Required Affordance (gold)**: store
- **Correct Tool**: shelving unit
- **Predicted Tool**: shelving unit
- **Matching Tools (symbolic)**: shelving unit, portable saw, dirk, backsaw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole, FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, store, staple, heat, repair, press, entertain, display, wash, dry, time, illuminate, write, clean, cover, wrap, mix, read, exercise, support
  - Matched via synonyms: carry, contain, store, support

### cooking an omelette (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, mix, cut
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: pan
- **Matching Tools (symbolic)**: pan, fork, kirpan, common ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: chop, cut, cool, staple, heat, carry, lift, wash, screw, time, illuminate, break, store, hold, roll, melt, read, spread
  - Matched via synonyms: chop, cut, heat, melt

### keeping a journal (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: write
- **Affordance Candidates (top-3)**: write, store, handle
- **Required Affordance (gold)**: write
- **Correct Tool**: pencil
- **Predicted Tool**: pencil
- **Matching Tools (symbolic)**: pencil, cross bit, scoop, pipe wrench, saltshaker
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: staple, write, press, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: hold, mark, write

### washing your face (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, wash, rub
- **Required Affordance (gold)**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: circular saw
- **Matching Tools (symbolic)**: compass saw, parang, paper cutter, firmer chisel, circular saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, file, grind, rub, smoothen

### fixing a toilet (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: unclog
- **Affordance Candidates (top-3)**: unclog, wrench, screw
- **Required Affordance (gold)**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: trap and drain auger
- **Matching Tools (symbolic)**: trap and drain auger, folding saw, spraybottle, burr, expansion bit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsFlexible
  - Deduced Affordances: operate, carry, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, dry, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, screw

### cutting an apple (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, separate, peel
- **Required Affordance (gold)**: cut
- **Correct Tool**: switchblade
- **Predicted Tool**: switchblade
- **Matching Tools (symbolic)**: switchblade, hatchel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### cleaning the mirror (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wipe
- **Affordance Candidates (top-3)**: wipe, polish, clean
- **Required Affordance (gold)**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: razor
- **Matching Tools (symbolic)**: bodkin, razor, square, vaccum cleaner, desk lamp
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: staple, wash, plug, repair, illuminate, press, clean
  - Augmented Affordances (role/task+ConceptNet): wipe
  - Matched via synonyms: clean, wash, wipe

### throwing away toilet paper (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dispose
- **Affordance Candidates (top-3)**: dispose, contain, compress
- **Required Affordance (gold)**: dispose
- **Correct Tool**: garbage can
- **Predicted Tool**: garbage can
- **Matching Tools (symbolic)**: garbage can, bur, backsaw, pitcher
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, illuminate, dispose, scoop, store, rub
  - Matched via synonyms: dispose, store

### displaying a statue (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: support
- **Affordance Candidates (top-3)**: support, display, store
- **Required Affordance (gold)**: support
- **Correct Tool**: side table
- **Predicted Tool**: side table
- **Matching Tools (symbolic)**: side table, painting, bayonet, battle ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, store, staple, heat, press, entertain, display, wash, dry, time, illuminate, write, clean, cover, read, exercise, support
  - Matched via synonyms: carry, contain, display, illuminate, store, support

### sanding surfaces (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, smoothen, handle
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: steel wool pad
- **Predicted Tool**: screw wrench
- **Matching Tools (symbolic)**: screw wrench, lochaber ax, thinning shear, pot
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: wipe, wash, clean
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog

### creating frost patterns as decoration (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cool
- **Affordance Candidates (top-3)**: cool, beautify, control
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: drum sander
- **Matching Tools (symbolic)**: drum sander, triphammer, hammer, set square
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, cool, operate

### cleaning pipes (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: unclog
- **Affordance Candidates (top-3)**: unclog, wash, operate
- **Required Affordance (gold)**: unclog
- **Correct Tool**: plunger
- **Predicted Tool**: plunger
- **Matching Tools (symbolic)**: plunger, keyhole saw, cd
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Rigid
  - Deduced Affordances: wipe, wash, clean
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog
  - Matched via synonyms: clean, scrub, unclog, wash, wipe

### removing skin from meat (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: skin
- **Affordance Candidates (top-3)**: skin, cut, hold
- **Required Affordance (gold)**: skin
- **Correct Tool**: lochaber ax
- **Predicted Tool**: coping saw
- **Matching Tools (symbolic)**: lochaber ax, coping saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, grasp, hold, saw

### changing an objects shape (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: shape
- **Affordance Candidates (top-3)**: shape, bend, hammer
- **Required Affordance (gold)**: shape
- **Correct Tool**: shaping tool
- **Predicted Tool**: shaping tool
- **Matching Tools (symbolic)**: shaping tool, scauper, bricklayer's hammer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: hammer

### telling the time (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: read
- **Affordance Candidates (top-3)**: read, display, time
- **Required Affordance (gold)**: time
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools (symbolic)**: cell phone, plastic box, die, bevel, stiletto
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: time, illuminate, press, break, write, mark, file, roll, contain, clean, control, entertain
  - Matched via synonyms: illuminate, time

### opening a nut (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: crack
- **Affordance Candidates (top-3)**: crack, hold, press
- **Required Affordance (gold)**: crack
- **Correct Tool**: stiletto
- **Predicted Tool**: compass saw
- **Matching Tools (symbolic)**: stiletto, food cup, compass saw, to go cup, toothpaste
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: hold

### placing objects down (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grasp
- **Affordance Candidates (top-3)**: grasp, hold, support
- **Required Affordance (gold)**: grasp
- **Correct Tool**: sandblaster
- **Predicted Tool**: saber saw
- **Matching Tools (symbolic)**: sandblaster, scriber, saber saw, maul, burr
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Gas_Aerosol, HasAbrasiveSurface
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, grasp, hold, support

### surfing the internet (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: entertain
- **Affordance Candidates (top-3)**: entertain, operate, control
- **Required Affordance (gold)**: entertain
- **Correct Tool**: c d
- **Predicted Tool**: c d
- **Matching Tools (symbolic)**: c d, cigar cutter, aluminumfoil, coffee table
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: bore, illuminate, press, store, stick, read, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate
  - Matched via synonyms: entertain, operate

### transporting liquids (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, carry, hold
- **Required Affordance (gold)**: carry
- **Correct Tool**: mug
- **Predicted Tool**: mug
- **Matching Tools (symbolic)**: mug, bread knife, fridge, spud
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: carry, contain, hold, store, support

### increasing beauty of the room (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: decorate
- **Affordance Candidates (top-3)**: decorate, beautify, display
- **Required Affordance (gold)**: decorate
- **Correct Tool**: poster
- **Predicted Tool**: poster
- **Matching Tools (symbolic)**: poster, plow, crown saw, pitcher
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight
  - Deduced Affordances: cool, cover, decorate, illuminate, clean, store, entertain
  - Augmented Affordances (role/task+ConceptNet): beautify, increase
  - Matched via synonyms: beautify, decorate, illuminate

### crushing ice (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: crunch
- **Affordance Candidates (top-3)**: crunch, compress, cool
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: bolt cutter
- **Matching Tools (symbolic)**: common ax, bolt cutter, bender, gang
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix

### reheating soup (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, contain, operate
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: kettle
- **Predicted Tool**: kettle
- **Matching Tools (symbolic)**: kettle, punch, neolith, roach clip
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: EatingDrinkingTask
  - Qualities: Electronic, Heavy, Heated
  - Deduced Affordances: staple, plug, repair, illuminate, press, hold, entertain
  - Augmented Affordances (role/task+ConceptNet): be_heated, heat
  - Matched via synonyms: be_heated, heat

### hanging painting (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: lift
- **Affordance Candidates (top-3)**: lift, install, increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: counter top
- **Predicted Tool**: counter top
- **Matching Tools (symbolic)**: counter top, bill, dentist's drill
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: staple, heat, carry, lift, decorate, screw, wash, cover, support, illuminate, break, time, contain, hold, spread
  - Matched via synonyms: carry, lift, support

### preparing meat (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, break, carve
- **Required Affordance (gold)**: carve
- **Correct Tool**: tableknife
- **Predicted Tool**: tableknife
- **Matching Tools (symbolic)**: wire cutter, tableknife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: break, chop, crack, cut, saw

### storing clothes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: compress
- **Affordance Candidates (top-3)**: compress, contain, support
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: o ring
- **Matching Tools (symbolic)**: stemmer, nailfile, phillips screwdriver, o ring
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: cut, cool, staple, heat, lift, wash, screw, saw, illuminate, write, time, stick, mark, hold, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, dice, mix
  - Matched via synonyms: lift

### making a small hole (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, drill, poke
- **Required Affordance (gold)**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: rounder
- **Matching Tools (symbolic)**: rounder, bulldog wrench
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub

### hanging cleaned laundry (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dry
- **Affordance Candidates (top-3)**: dry, lift, grasp
- **Required Affordance (gold)**: dry
- **Correct Tool**: hand towel
- **Predicted Tool**: hand towel
- **Matching Tools (symbolic)**: hand towel, gutter, catling, saw set, screwdriver
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable
  - Deduced Affordances: polish, heat, absorb, cover, wash, write, break, stick, clean, hold, skin, dry
  - Matched via synonyms: absorb, dry, hold

### using appliances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: operate
- **Affordance Candidates (top-3)**: operate, handle, control
- **Required Affordance (gold)**: operate
- **Correct Tool**: floorlamp
- **Predicted Tool**: ram
- **Matching Tools (symbolic)**: shelving unit, comb, ram, head gasket
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, carry, comfort, decorate, illuminate, break, roll, read

### defrosting frozen food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, melt, heat
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron, dresser
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: heat

### connecting appliances (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: plug
- **Affordance Candidates (top-3)**: plug, handle, operate
- **Required Affordance (gold)**: plug
- **Correct Tool**: pneumatic drill
- **Predicted Tool**: pneumatic drill
- **Matching Tools (symbolic)**: pneumatic drill, spreader, stillson wrench, stemmer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, grasp, operate

### boiling water (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, contain, heat
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools (symbolic)**: coffee machine, water bottle, toiletpaperhanger
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: staple, heat, plug, repair, time, illuminate, press, hold, dry
  - Augmented Affordances (role/task+ConceptNet): be_heated, cut, mix
  - Matched via synonyms: be_heated, heat

### washing dishes (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, wash, hold
- **Required Affordance (gold)**: clean
- **Correct Tool**: vaccum cleaner
- **Predicted Tool**: vaccum cleaner
- **Matching Tools (symbolic)**: brick trowel, common ax, dovetail plane, vaccum cleaner, potato
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: staple, wash, plug, repair, illuminate, press, clean
  - Augmented Affordances (role/task+ConceptNet): wipe
  - Matched via synonyms: clean, wash, wipe

### washing a fruit before cutting (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, hold, pour
- **Required Affordance (gold)**: wash
- **Correct Tool**: bandsaw
- **Predicted Tool**: bandsaw
- **Matching Tools (symbolic)**: bandsaw, hammer, sparkplug wrench, posthole digger, shiv
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, grasp, pour, spread, wash

### removing the peel from fruits and vegetables (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: skin
- **Affordance Candidates (top-3)**: skin, peel, cut
- **Required Affordance (gold)**: skin
- **Correct Tool**: adz
- **Predicted Tool**: reamer
- **Matching Tools (symbolic)**: adz, reamer, sofa
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, saw

### cleaning the toilet (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, wipe, wash
- **Required Affordance (gold)**: clean
- **Correct Tool**: portable saw
- **Predicted Tool**: spray bottle
- **Matching Tools (symbolic)**: portable saw, spray bottle, plexor.n.wn.medicine
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean

### cutting items in halve (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, separate, slit
- **Required Affordance (gold)**: separate
- **Correct Tool**: stiletto
- **Predicted Tool**: stiletto
- **Matching Tools (symbolic)**: stiletto, gouge, tack hammer, eolith
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### creating garnishes (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: dice
- **Affordance Candidates (top-3)**: dice, cut, peel
- **Required Affordance (gold)**: dice
- **Correct Tool**: steak knife
- **Predicted Tool**: steak knife
- **Matching Tools (symbolic)**: steak knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise
  - Matched via synonyms: chop, cut, peel, saw, skin

### cutting meat (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, separate, chop
- **Required Affordance (gold)**: chop
- **Correct Tool**: claw hatchet
- **Predicted Tool**: barong
- **Matching Tools (symbolic)**: claw hatchet, barong
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, saw

### tracking events (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mark
- **Affordance Candidates (top-3)**: mark, write, time
- **Required Affordance (gold)**: mark
- **Correct Tool**: bradawl
- **Predicted Tool**: bradawl
- **Matching Tools (symbolic)**: bradawl, twist bit, pipe wrench, cuttingtool, ball peen hammer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: mark, time

### gardening (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dig
- **Affordance Candidates (top-3)**: dig, pick, carry
- **Required Affordance (gold)**: dig
- **Correct Tool**: ditch spade
- **Predicted Tool**: ditch spade
- **Matching Tools (symbolic)**: pot, ditch spade, power drill
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, dig, grasp, hold, support

### adjusting device settings (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: control
- **Affordance Candidates (top-3)**: control, operate, press
- **Required Affordance (gold)**: control
- **Correct Tool**: handsaw
- **Predicted Tool**: handsaw
- **Matching Tools (symbolic)**: handsaw, pointing trowel, tennis racket, common ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: operate

### cooking a fried egg (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, contain, handle
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: cup
- **Predicted Tool**: cup
- **Matching Tools (symbolic)**: cup, hayfork, hand drill, toilet paper, counterbore
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: contain, heat, hold, melt, store

### assembling furniture (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: screw
- **Affordance Candidates (top-3)**: screw, hammer, grasp
- **Required Affordance (gold)**: screw
- **Correct Tool**: screwdriver
- **Predicted Tool**: screwdriver
- **Matching Tools (symbolic)**: screwdriver, plastic box, secateur, arm chair
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: hold, screw

### opening packages (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, cut, slit
- **Required Affordance (gold)**: slit
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools (symbolic)**: blade, star drill, hack, power tool, putty knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### supporting a laptop (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: support
- **Affordance Candidates (top-3)**: support, hold, comfort
- **Required Affordance (gold)**: support
- **Correct Tool**: footstool
- **Predicted Tool**: footstool
- **Matching Tools (symbolic)**: footstool, round file, socket wrench, neolith
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: carry, decorate, plug, contain, stick, hold, staple, heat, screw, roll, entertain, display, comfort, lift, dry, time, illuminate, break, cut, cover, read, support
  - Augmented Affordances (role/task+ConceptNet): increase
  - Matched via synonyms: carry, comfort, hold, lift, support

### arranging flowers (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: beautify
- **Affordance Candidates (top-3)**: beautify, grasp, contain
- **Required Affordance (gold)**: beautify
- **Correct Tool**: abrader
- **Predicted Tool**: arm chair
- **Matching Tools (symbolic)**: basket ball, opener, creditcard, abrader, arm chair
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: cut, operate, carry, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: hold

### cleaning fingernails (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, file, wash
- **Required Affordance (gold)**: file
- **Correct Tool**: blunt file
- **Predicted Tool**: blunt file
- **Matching Tools (symbolic)**: blunt file, bur, power saw, hack, winebottle
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, file, grind, rub, smoothen

### repairing items (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: fix
- **Affordance Candidates (top-3)**: fix, screw, handle
- **Required Affordance (gold)**: hammer
- **Correct Tool**: carpenter's hammer
- **Predicted Tool**: carpenter's hammer
- **Matching Tools (symbolic)**: carpenter's hammer, tennisracket, firmer chisel, tissuebox, dresser
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: fix, grasp, hold, repair, screw

### repairing appliances (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: fix
- **Affordance Candidates (top-3)**: fix, screw, operate
- **Required Affordance (gold)**: screw
- **Correct Tool**: spiral ratchet screwdriver
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools (symbolic)**: spiral ratchet screwdriver, tennisracket, coffee machine
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: fix, operate, screw

### preparing drinks (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mix
- **Affordance Candidates (top-3)**: mix, pour, scoop
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools (symbolic)**: pitcher, phillips screwdriver, punch plier, watering can
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: HasContainer, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: mix, pour

### watching a movie (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: comfort
- **Affordance Candidates (top-3)**: comfort, entertain, control
- **Required Affordance (gold)**: entertain
- **Correct Tool**: cell phone
- **Predicted Tool**: camera
- **Matching Tools (symbolic)**: cell phone, clasp knife, kirpan, camera, room decor
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: time, illuminate, press, break, write, mark, file, roll, contain, clean, control, entertain
  - Matched via synonyms: control, entertain

### pouring liquids (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pour
- **Affordance Candidates (top-3)**: pour, contain, grasp
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools (symbolic)**: pitcher, float, buffer, spiral ratchet screwdriver, flat tip screwdriver
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: HasContainer, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: contain, hold, pour, store

### smoothing surfaces (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: smoothen
- **Affordance Candidates (top-3)**: smoothen, polish, rub
- **Required Affordance (gold)**: file
- **Correct Tool**: taper file
- **Predicted Tool**: taper file
- **Matching Tools (symbolic)**: taper file, broadax, food jar
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface, Heavy
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: file, grind, rub, smoothen

### hammering nails (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: hammer
- **Affordance Candidates (top-3)**: hammer, grasp, install
- **Required Affordance (gold)**: hammer
- **Correct Tool**: carpenter's hammer
- **Predicted Tool**: carpenter's hammer
- **Matching Tools (symbolic)**: carpenter's hammer, chain wrench, statue, buffer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: fix, grasp, hammer, hold, repair

### spreading icing on a cake (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, grasp, smoothen
- **Required Affordance (gold)**: spread
- **Correct Tool**: pointing trowel
- **Predicted Tool**: pestle
- **Matching Tools (symbolic)**: plumber's snake, pointing trowel, pestle, stamp, break seal
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: file, grasp, grind, hold, pour, rub, smoothen, spread

### tightening bolts (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wrench
- **Affordance Candidates (top-3)**: wrench, grasp, screw
- **Required Affordance (gold)**: wrench
- **Correct Tool**: alligator wrench
- **Predicted Tool**: alligator wrench
- **Matching Tools (symbolic)**: alligator wrench, beading plane, burr, wire stripper, hand mower
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, screw

### writing a letter (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: write
- **Affordance Candidates (top-3)**: write, hold, support
- **Required Affordance (gold)**: write
- **Correct Tool**: laptop
- **Predicted Tool**: laptop
- **Matching Tools (symbolic)**: laptop, toilet paper, spade, can opener, soda can
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy, Fragile
  - Deduced Affordances: cool, staple, heat, plug, repair, time, illuminate, press, write, contain, mark, file, hold, control, store, entertain, spread
  - Matched via synonyms: hold, mark, write

### breaking an egg (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: crack
- **Affordance Candidates (top-3)**: crack, separate, hold
- **Required Affordance (gold)**: crack
- **Correct Tool**: bowie knife
- **Predicted Tool**: bowie knife
- **Matching Tools (symbolic)**: bowie knife, icepick, tamp, plane, dogbed
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, hold, saw

### putting objects on high shelf (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: lift
- **Affordance Candidates (top-3)**: lift, increase, support
- **Required Affordance (gold)**: increase
- **Correct Tool**: desk
- **Predicted Tool**: kitchen knife
- **Matching Tools (symbolic)**: desk, kitchen knife, chisel, circular saw, linoleum knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cool, staple, cover, decorate, time, illuminate, contain, mark, store, hold, read, entertain, support
  - Matched via synonyms: support

### making a shopping list (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: write
- **Affordance Candidates (top-3)**: write, store, mark
- **Required Affordance (gold)**: write
- **Correct Tool**: desktop
- **Predicted Tool**: alarmclock
- **Matching Tools (symbolic)**: desktop, alarmclock, dog wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid, Electronic
  - Deduced Affordances: cool, staple, cover, decorate, screw, repair, time, illuminate, write, contain, mark, file, store, hold, read, entertain, support
  - Matched via synonyms: contain, mark, store, write

### storing food (WRONG)
- **Selection method**: llm_fallback
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, wrap, store
- **Required Affordance (gold)**: contain
- **Correct Tool**: fish knife
- **Predicted Tool**: microwave
- **Matching Tools (symbolic)**: None
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise

### increasing brightness of the room (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: illuminate
- **Affordance Candidates (top-3)**: illuminate, control, increase
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: lightbulb
- **Predicted Tool**: lightbulb
- **Matching Tools (symbolic)**: lightbulb
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Fragile, Lightweight
  - Deduced Affordances: bore, heat, carry, comfort, dig, illuminate, press, store, mark, roll, read, smoothen, entertain
  - Matched via synonyms: illuminate

### trimming branches (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: saw
- **Affordance Candidates (top-3)**: saw, grasp, hold
- **Required Affordance (gold)**: saw
- **Correct Tool**: folding saw
- **Predicted Tool**: crosscut saw
- **Matching Tools (symbolic)**: folding saw, crosscut saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, hold, saw

### repairing appliances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: fix
- **Affordance Candidates (top-3)**: fix, screw, wrench
- **Required Affordance (gold)**: fix
- **Correct Tool**: crampon
- **Predicted Tool**: bore bit
- **Matching Tools (symbolic)**: crampon, openside plane, bore bit, o ring, rounder
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: fix, repair, screw

### placing a very delicate artifact on a shelf (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: lift
- **Affordance Candidates (top-3)**: lift, hold, increase
- **Required Affordance (gold)**: increase
- **Correct Tool**: stool
- **Predicted Tool**: slip joint plier
- **Matching Tools (symbolic)**: stool, bullnose, edger, compass saw, slip joint plier
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy
  - Deduced Affordances: staple, cover, decorate, time, illuminate, contain, hold, support
  - Matched via synonyms: hold, support

### reading a good night story (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: read
- **Affordance Candidates (top-3)**: read, handle, entertain
- **Required Affordance (gold)**: read
- **Correct Tool**: desktop
- **Predicted Tool**: armchair
- **Matching Tools (symbolic)**: desktop, wateringcan, pruning knife, dining table, armchair
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid, Electronic
  - Deduced Affordances: cool, staple, cover, decorate, screw, repair, time, illuminate, write, contain, mark, file, store, hold, read, entertain, support
  - Matched via synonyms: entertain, hold, read

### preparing a sliced apple (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, separate, wash
- **Required Affordance (gold)**: cut
- **Correct Tool**: compass saw
- **Predicted Tool**: compass saw
- **Matching Tools (symbolic)**: compass saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, cut, saw

### melting butter (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: heat
- **Affordance Candidates (top-3)**: heat, be_heated, melt
- **Required Affordance (gold)**: heat
- **Correct Tool**: toaster
- **Predicted Tool**: toaster
- **Matching Tools (symbolic)**: toaster, stemmer, palette knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy, Heated
  - Deduced Affordances: cut, staple, heat, wash, plug, repair, time, illuminate, press, hold, dry
  - Augmented Affordances (role/task+ConceptNet): be_heated, mix
  - Matched via synonyms: be_heated, heat

### making firewood (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: chop
- **Affordance Candidates (top-3)**: chop, separate, carry
- **Required Affordance (gold)**: chop
- **Correct Tool**: fireman's ax
- **Predicted Tool**: fireman's ax
- **Matching Tools (symbolic)**: fireman's ax, bread knife, case knife, chisel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, cut, saw, support

### serving food (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: carry
- **Affordance Candidates (top-3)**: carry, hold, grasp
- **Required Affordance (gold)**: carry
- **Correct Tool**: vase
- **Predicted Tool**: water bottle
- **Matching Tools (symbolic)**: vase, window, water bottle, shaping tool, egg
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile, Rigid
  - Deduced Affordances: time, hold, mark, display
  - Matched via synonyms: hold

### making breadcrumbs (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: crumble
- **Affordance Candidates (top-3)**: crumble, grind, dry
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: adz
- **Matching Tools (symbolic)**: adz, stiletto, battering ram, dumbbell, tack hammer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: break, file, grind, rub, smoothen

### making ice (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cool
- **Affordance Candidates (top-3)**: cool, contain, store
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: drum sander
- **Matching Tools (symbolic)**: drum sander, counter top, battering ram, croupier's rake
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: contain, cool, store

### decorating wall (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: beautify
- **Affordance Candidates (top-3)**: beautify, display, install
- **Required Affordance (gold)**: decorate
- **Correct Tool**: teddy bear
- **Predicted Tool**: scoop
- **Matching Tools (symbolic)**: teddy bear, cap opener, scoop, wood chisel, pointing trowel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: bore, heat, comfort, wash, write, illuminate, stick, hammer, control, store, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate
  - Matched via synonyms: display, illuminate

### fixing plumbing (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: wrench
- **Affordance Candidates (top-3)**: wrench, solder, flex
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: bend, solder

### stabilising objects (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: support
- **Affordance Candidates (top-3)**: support, hold, fix
- **Required Affordance (gold)**: hold
- **Correct Tool**: rib joint plier
- **Predicted Tool**: food cup
- **Matching Tools (symbolic)**: rib joint plier, abrading stone, food cup, hatchel, bolo
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, fix, grasp, hold, repair, support

### creating compost (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: peel
- **Affordance Candidates (top-3)**: peel, separate, mix
- **Required Affordance (gold)**: peel
- **Correct Tool**: dirk
- **Predicted Tool**: dirk
- **Matching Tools (symbolic)**: dirk, folding saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### patching walls (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, smoothen, fix
- **Required Affordance (gold)**: fix
- **Correct Tool**: stamp
- **Predicted Tool**: buffer
- **Matching Tools (symbolic)**: bumper jack, buffer, ripsaw
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: staple, carry, time, write, store, mark, hold, roll, read, entertain

### opening packages (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, slit, break
- **Required Affordance (gold)**: pierce
- **Correct Tool**: bradawl
- **Predicted Tool**: bradawl
- **Matching Tools (symbolic)**: bradawl, yataghan, broad hatchet
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### changing bicycle components (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wrench
- **Affordance Candidates (top-3)**: wrench, handle, screw
- **Required Affordance (gold)**: wrench
- **Correct Tool**: box wrench
- **Predicted Tool**: box wrench
- **Matching Tools (symbolic)**: box wrench, palette knife, paper box, glass cutter, pin wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, screw

### preparing coffee in a filter (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: tamp
- **Affordance Candidates (top-3)**: tamp, pour, contain
- **Required Affordance (gold)**: tamp
- **Correct Tool**: tamp
- **Predicted Tool**: tamp
- **Matching Tools (symbolic)**: tamp, rat tail file, pincer, remote control, circular saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: cut, wash, write, hold, mark, hammer, roll, clean, store, smoothen
  - Matched via synonyms: store

### ironing clothes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: smoothen
- **Affordance Candidates (top-3)**: smoothen, heat, handle
- **Required Affordance (gold)**: press
- **Correct Tool**: stemmer
- **Predicted Tool**: bumper jack
- **Matching Tools (symbolic)**: stemmer, soapbottle, bumper jack, toiletpaperhanger
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: cut, cool, staple, heat, lift, wash, screw, saw, illuminate, write, time, stick, mark, hold, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, dice, mix
  - Matched via synonyms: heat, hold

### painting walls (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, cover, smoothen
- **Required Affordance (gold)**: beautify
- **Correct Tool**: rat tail file
- **Predicted Tool**: allen wrench
- **Matching Tools (symbolic)**: rat tail file, allen wrench, tomato
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: cut, operate, carry, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: file, pour, rub, smoothen, spread

### making toppings (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: crunch
- **Affordance Candidates (top-3)**: crunch, crumble, cut
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: pestle
- **Matching Tools (symbolic)**: bowie knife, battle ax, pestle, garden trowel, saw set
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix
  - Matched via synonyms: carve, chop, cut, dice

### having a meal (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: eat
- **Affordance Candidates (top-3)**: eat, grasp, cut
- **Required Affordance (gold)**: eat
- **Correct Tool**: salt
- **Predicted Tool**: salt
- **Matching Tools (symbolic)**: salt, combination plane, alligator wrench, laptop
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight
  - Deduced Affordances: chop, cut, heat, operate, cover, wash, support, time, press, stick, hold, roll, melt, read, smoothen, skin, rub
  - Matched via synonyms: chop, cut, hold

### boiling water (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, heat, contain
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: plate
- **Predicted Tool**: plate
- **Matching Tools (symbolic)**: plate, tamp, lightbulb, toiletpaper, laundryhamper
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: contain, heat, melt, store

### swapping out filters (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: separate
- **Affordance Candidates (top-3)**: separate, install, grasp
- **Required Affordance (gold)**: change
- **Correct Tool**: rock bit
- **Predicted Tool**: broadax
- **Matching Tools (symbolic)**: broadax
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, fix, grasp, hold, repair, saw

### packing books for house shifting (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: store
- **Affordance Candidates (top-3)**: store, wrap, support
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: dresser
- **Matching Tools (symbolic)**: dresser, claw hatchet, axe
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, store, staple, heat, repair, press, entertain, display, wash, dry, time, illuminate, write, clean, cover, wrap, mix, read, exercise, support
  - Matched via synonyms: carry, contain, cover, store, support, wrap

### installing fixtures (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: drill
- **Affordance Candidates (top-3)**: drill, screw, install
- **Required Affordance (gold)**: drill
- **Correct Tool**: router
- **Predicted Tool**: compass saw
- **Matching Tools (symbolic)**: compass saw, scrub plane
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: heat, plug, time, illuminate, press, write, mark, file, control, entertain, spread

### drying up spilled liquids (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: absorb
- **Affordance Candidates (top-3)**: absorb, dry, wipe
- **Required Affordance (gold)**: dry
- **Correct Tool**: kleenex
- **Predicted Tool**: kleenex
- **Matching Tools (symbolic)**: kleenex, butter knife, tennisracket
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: WasteRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable
  - Deduced Affordances: clean, write
  - Matched via synonyms: clean

### setting up bedding (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: comfort
- **Affordance Candidates (top-3)**: comfort, handle, beautify
- **Required Affordance (gold)**: comfort
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools (symbolic)**: ottoman, tabletopdecor, to go cup, hedge trimmer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask, SleepingTask
  - Qualities: Heavy, Soft_Deformable
  - Deduced Affordances: heat, carry, comfort, cover, support, wrap, dry, repair, time, write, mix, wipe, store, hold, read, exercise, entertain, display
  - Augmented Affordances (role/task+ConceptNet): contain
  - Matched via synonyms: comfort, hold

### preparing food (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, mix, peel
- **Required Affordance (gold)**: pierce
- **Correct Tool**: punch plier
- **Predicted Tool**: battle ax
- **Matching Tools (symbolic)**: battle ax
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, saw

### cooking food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: heat
- **Affordance Candidates (top-3)**: heat, mix, chop
- **Required Affordance (gold)**: heat
- **Correct Tool**: stoveburner
- **Predicted Tool**: stoveburner
- **Matching Tools (symbolic)**: stoveburner, dibble, apple, egg, plumber's snake
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy, Electronic
  - Deduced Affordances: cut, staple, heat, wash, plug, repair, time, illuminate, press, hold, dry
  - Augmented Affordances (role/task+ConceptNet): be_heated, mix
  - Matched via synonyms: be_heated, cut, heat, mix

### cleaning surfaces (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, wipe, polish
- **Required Affordance (gold)**: polish
- **Correct Tool**: abrading stone
- **Predicted Tool**: abrading stone
- **Matching Tools (symbolic)**: abrading stone, power saw, shear, yataghan, glue stick
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: cut, operate, carry, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: file, rub, smoothen

### polishing metal objects (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, smoothen, handle
- **Required Affordance (gold)**: polish
- **Correct Tool**: sandblaster
- **Predicted Tool**: sandblaster
- **Matching Tools (symbolic)**: sandblaster, monkey wrench, pitcher, bolt cutter, tap wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Gas_Aerosol, HasAbrasiveSurface
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: file, grasp, grind, hold, rub, smoothen

### preparing spices (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grind
- **Affordance Candidates (top-3)**: grind, crunch, scoop
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pipe cutter
- **Matching Tools (symbolic)**: laundryhamper, pipe cutter, kitchen knife
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix

### processing grains (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: grind
- **Affordance Candidates (top-3)**: grind, contain, store
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: cigar cutter
- **Matching Tools (symbolic)**: cigar cutter
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix

### operating gadgets (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: press
- **Affordance Candidates (top-3)**: press, handle, control
- **Required Affordance (gold)**: press
- **Correct Tool**: tamp
- **Predicted Tool**: smooth plane
- **Matching Tools (symbolic)**: tamp, roomdecor, smooth plane, cutter, breadknife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: cut, wash, write, hold, mark, hammer, roll, clean, store, smoothen
  - Matched via synonyms: hold

### making coffee powder (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grind
- **Affordance Candidates (top-3)**: grind, contain, store
- **Required Affordance (gold)**: grind
- **Correct Tool**: pestle
- **Predicted Tool**: pincer
- **Matching Tools (symbolic)**: signet, pincer, instant noodle
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix

### pinning items on a wall (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, poke, hold
- **Required Affordance (gold)**: poke
- **Correct Tool**: phillips screwdriver
- **Predicted Tool**: phillips screwdriver
- **Matching Tools (symbolic)**: chain saw, phillips screwdriver, pitsaw, pitsaw, box wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: hold

### throwing away used soap bottle (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dispose
- **Affordance Candidates (top-3)**: dispose, grasp, contain
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: sink basin
- **Matching Tools (symbolic)**: sink basin, steak knife, square, houseplant, mallet
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: HygieneTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: staple, heat, decorate, wash, illuminate, contain, hold, store, dry
  - Matched via synonyms: contain, hold, store

### checking the readiness of food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, poke, lift
- **Required Affordance (gold)**: poke
- **Correct Tool**: screwdriver
- **Predicted Tool**: screwdriver
- **Matching Tools (symbolic)**: pipe cutter, screwdriver
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: carry

### creating ventilation (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, slit, cut
- **Required Affordance (gold)**: slit
- **Correct Tool**: knife blade
- **Predicted Tool**: electric hammer
- **Matching Tools (symbolic)**: knife blade, barong, trowel, electric hammer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise
  - Matched via synonyms: chop, cut, saw

### tilling soil (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: plow
- **Affordance Candidates (top-3)**: plow, dig, separate
- **Required Affordance (gold)**: plow
- **Correct Tool**: bull tongue
- **Predicted Tool**: openside plane
- **Matching Tools (symbolic)**: openside plane, drill, folding saw
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable
  - Deduced Affordances: cut, heat, wrap, time, press, contain, clean, stick, hold, melt, pour, smoothen
  - Matched via synonyms: cut

### storing dog treats (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, store, cover
- **Required Affordance (gold)**: store
- **Correct Tool**: desk
- **Predicted Tool**: sidetable
- **Matching Tools (symbolic)**: desk, clipper, tennisracket, hand drill, sidetable
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cool, staple, cover, decorate, time, illuminate, contain, mark, store, hold, read, entertain, support
  - Matched via synonyms: contain, cover, store

### opening packaging (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: break
- **Affordance Candidates (top-3)**: break, cut, pierce
- **Required Affordance (gold)**: break
- **Correct Tool**: folding saw
- **Predicted Tool**: bulldog wrench
- **Matching Tools (symbolic)**: folding saw, bulldog wrench, bender, shovel, abrading stone
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### preparing food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: chop
- **Affordance Candidates (top-3)**: chop, mix, peel
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: stemmer
- **Matching Tools (symbolic)**: handsaw, stemmer, burin
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: cut, cool, staple, heat, lift, wash, screw, saw, illuminate, write, time, stick, mark, hold, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, dice, mix
  - Matched via synonyms: carve, chop, cut, dice, mix, saw

### preparing meats (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, separate, chop
- **Required Affordance (gold)**: cube
- **Correct Tool**: scalpel
- **Predicted Tool**: scalpel
- **Matching Tools (symbolic)**: keyhole saw, scalpel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### crafting with wood (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: carve
- **Affordance Candidates (top-3)**: carve, saw, smoothen
- **Required Affordance (gold)**: carve
- **Correct Tool**: barong
- **Predicted Tool**: gouge
- **Matching Tools (symbolic)**: barong, bullnose, gouge
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, file, rub, saw, smoothen

### opening jars (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grasp
- **Affordance Candidates (top-3)**: grasp, handle, press
- **Required Affordance (gold)**: grasp
- **Correct Tool**: scauper
- **Predicted Tool**: scauper
- **Matching Tools (symbolic)**: scauper, bolt cutter, potato, core drill, hatchet
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: ToolRole, Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold

### watching a movie (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: comfort
- **Affordance Candidates (top-3)**: comfort, entertain, control
- **Required Affordance (gold)**: comfort
- **Correct Tool**: chair
- **Predicted Tool**: desk
- **Matching Tools (symbolic)**: hook wrench, towelholder, electric drill, desk
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, cover, decorate, time, illuminate, contain, hold, support

### picking-up objects (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grasp
- **Affordance Candidates (top-3)**: grasp, handle, lift
- **Required Affordance (gold)**: grasp
- **Correct Tool**: carpenter's mallet
- **Predicted Tool**: carpenter's mallet
- **Matching Tools (symbolic)**: carpenter's mallet, gang, diningtable, ravehook, wire cutter
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, grasp, hold, support

### controlling devices (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: control
- **Affordance Candidates (top-3)**: control, operate, handle
- **Required Affordance (gold)**: operate
- **Correct Tool**: handsaw
- **Predicted Tool**: tap wrench
- **Matching Tools (symbolic)**: handsaw, tap wrench, jointer, paper cutter, stiletto
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, operate

### cleaning up spills (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: absorb
- **Affordance Candidates (top-3)**: absorb, dispose, wipe
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: sponge
- **Matching Tools (symbolic)**: sponge, kri, alligator wrench, shampoo, drill
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: wipe, wash, clean, write
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog
  - Matched via synonyms: clean, scrub, unclog, wash, wipe

### polishing furniture (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, polish, smoothen
- **Required Affordance (gold)**: rub
- **Correct Tool**: fish knife
- **Predicted Tool**: drilling bit
- **Matching Tools (symbolic)**: drilling bit
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise

### lighting up a room (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: illuminate
- **Affordance Candidates (top-3)**: illuminate, control, install
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: lightbulb
- **Predicted Tool**: lightbulb
- **Matching Tools (symbolic)**: lightbulb
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Fragile, Lightweight
  - Deduced Affordances: bore, heat, carry, comfort, dig, illuminate, press, store, mark, roll, read, smoothen, entertain
  - Matched via synonyms: illuminate

### cleaning dishes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, wash, dry
- **Required Affordance (gold)**: wash
- **Correct Tool**: stamping machine
- **Predicted Tool**: plexor.n.wn.medicine
- **Matching Tools (symbolic)**: stamping machine, jack, footstool, ball, plexor.n.wn.medicine
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, dry, wash

### polishing furniture (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, smoothen, polish
- **Required Affordance (gold)**: smoothen
- **Correct Tool**: abrader
- **Predicted Tool**: abrader
- **Matching Tools (symbolic)**: abrader, blunt file, chain tong
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Rigid
  - Deduced Affordances: cut, operate, carry, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: file, rub, smoothen

### preparing cleaning solutions (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mix
- **Affordance Candidates (top-3)**: mix, pour, contain
- **Required Affordance (gold)**: pour
- **Correct Tool**: pitcher
- **Predicted Tool**: pitcher
- **Matching Tools (symbolic)**: pitcher, poniard, poleax, jack, fore plane
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: HasContainer, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, control, store, heat, support, fix, entertain, comfort, wash, break, melt, pour, absorb, mix, read, exercise, dry
  - Matched via synonyms: contain, mix, pour, store

### preparing vegetables (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, peel, separate
- **Required Affordance (gold)**: dice
- **Correct Tool**: dirk
- **Predicted Tool**: razor
- **Matching Tools (symbolic)**: dirk, compass saw, razor
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### sorting items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pick
- **Affordance Candidates (top-3)**: pick, handle, store
- **Required Affordance (gold)**: pick
- **Correct Tool**: bottle
- **Predicted Tool**: cold chisel
- **Matching Tools (symbolic)**: bottle, coffee, notebook, cold chisel, watering can
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, hammer, store, heat, entertain, read, wash, time, illuminate, write, clean, wrap, mix, cool, smoothen, dry
  - Matched via synonyms: contain, hold, store

### labeling items (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: write
- **Affordance Candidates (top-3)**: write, mark, engrave
- **Required Affordance (gold)**: mark
- **Correct Tool**: o ring
- **Predicted Tool**: o ring
- **Matching Tools (symbolic)**: o ring, lightbulb, folding saw, shaping tool
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Soft_Deformable
  - Deduced Affordances: operate, carry, decorate, stick, hold, control, store, spread, screw, fix, roll, entertain, display, dry, write, break, clean, wrap, mix, mark, rub
  - Matched via synonyms: mark, write

### changing bed sheets (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: separate
- **Affordance Candidates (top-3)**: separate, cover, smoothen
- **Required Affordance (gold)**: change
- **Correct Tool**: ram
- **Predicted Tool**: razor
- **Matching Tools (symbolic)**: crosscut saw, razor
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, file, grind, rub, saw, smoothen

### removing moisture (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: absorb
- **Affordance Candidates (top-3)**: absorb, dry, wipe
- **Required Affordance (gold)**: absorb
- **Correct Tool**: sponge
- **Predicted Tool**: soapbottle
- **Matching Tools (symbolic)**: sponge, steak knife, soapbottle, peppershaker, potato
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: wipe, wash, clean, write
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog
  - Matched via synonyms: clean, scrub, unclog, wash, wipe

### repairing electronics (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: solder
- **Affordance Candidates (top-3)**: solder, operate, repair
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron, rasp, keyboard, instant noodle, spokeshave
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, fix, operate, repair, solder

### securing items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cover
- **Affordance Candidates (top-3)**: cover, stick, support
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: buffer
- **Matching Tools (symbolic)**: drum sander, die, buffer, buffer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: carry, lift, support

### hanging a picture on a wall (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: drill
- **Affordance Candidates (top-3)**: drill, screw, lift
- **Required Affordance (gold)**: hammer
- **Correct Tool**: tack hammer
- **Predicted Tool**: power tool
- **Matching Tools (symbolic)**: torque wrench, burin, tack hammer, butterknife, power tool
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, drill, screw, support

### doing laundry (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wash
- **Affordance Candidates (top-3)**: wash, dry, store
- **Required Affordance (gold)**: wash
- **Correct Tool**: compass saw
- **Predicted Tool**: showercurtain
- **Matching Tools (symbolic)**: compass saw, burin, monkey wrench, pin wrench, showercurtain
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, store

### mounting hardware (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: screw
- **Affordance Candidates (top-3)**: screw, hold, drill
- **Required Affordance (gold)**: screw
- **Correct Tool**: spiral ratchet screwdriver
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools (symbolic)**: spiral ratchet screwdriver, stemmer, chisel, straightedge
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: hold, screw

### cleaning spilled milk (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: absorb
- **Affordance Candidates (top-3)**: absorb, dispose, wipe
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: curtain
- **Matching Tools (symbolic)**: curtain, sink basin, compass saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: HygieneTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: staple, heat, decorate, wash, illuminate, contain, hold, store, dry
  - Matched via synonyms: dry, wash

### storing important documents (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: store
- **Affordance Candidates (top-3)**: store, contain, cover
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: dresser
- **Matching Tools (symbolic)**: dresser, ottoman, book
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, store, staple, heat, repair, press, entertain, display, wash, dry, time, illuminate, write, clean, cover, wrap, mix, read, exercise, support
  - Matched via synonyms: contain, cover, store, wrap

### preparing food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, mix, peel
- **Required Affordance (gold)**: eat
- **Correct Tool**: potato
- **Predicted Tool**: potato
- **Matching Tools (symbolic)**: potato, crank, nailfile
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Rigid
  - Deduced Affordances: chop, cut, heat, lift, wash, screw, support, spread, press, stick, hold, roll, melt, pour, smoothen, rub
  - Matched via synonyms: chop, cut

### cleaning the shower head (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: unclog
- **Affordance Candidates (top-3)**: unclog, wash, rub
- **Required Affordance (gold)**: clean
- **Correct Tool**: towel
- **Predicted Tool**: head gasket
- **Matching Tools (symbolic)**: towel, camera, head gasket, binder, vaccum cleaner
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable
  - Deduced Affordances: polish, heat, absorb, cover, wash, write, break, stick, clean, hold, skin, dry
  - Matched via synonyms: clean, polish, wash

### cleaning the blinds (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, wipe, dry
- **Required Affordance (gold)**: clean
- **Correct Tool**: bandsaw
- **Predicted Tool**: plunger
- **Matching Tools (symbolic)**: bandsaw, plunger, lancet, drilling bit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, dry, file, grind, smoothen, wash

### replacing light bulbs (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: screw
- **Affordance Candidates (top-3)**: screw, grasp, wrench
- **Required Affordance (gold)**: change
- **Correct Tool**: signet
- **Predicted Tool**: pitchfork
- **Matching Tools (symbolic)**: signet, pitchfork, pruning saw, clincher, portable saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: staple, write, press, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: hold

### labelling items (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mark
- **Affordance Candidates (top-3)**: mark, stick, write
- **Required Affordance (gold)**: write
- **Correct Tool**: pencil
- **Predicted Tool**: pencil
- **Matching Tools (symbolic)**: pencil, garden tool, carpenter's mallet
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: staple, write, press, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: mark, write

### serving a dish (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: carry
- **Affordance Candidates (top-3)**: carry, hold, contain
- **Required Affordance (gold)**: carry
- **Correct Tool**: watering can
- **Predicted Tool**: opener
- **Matching Tools (symbolic)**: watering can, catling, opener, try square, combination plane
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: cool, hold, mark
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: hold

### bending pipes (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: flex
- **Affordance Candidates (top-3)**: flex, bend, handle
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools (symbolic)**: bender, toothpaste, tile cutter, bodkin, glass cutter
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: carry, plug, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, smoothen, entertain, grasp, display, comfort, lift, wash, dry, illuminate, write, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Augmented Affordances (role/task+ConceptNet): fix
  - Matched via synonyms: bend, grasp

### carrying items (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grasp
- **Affordance Candidates (top-3)**: grasp, lift, carry
- **Required Affordance (gold)**: grasp
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron, rock bit, ripping chisel, surgical knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: carry, grasp, lift, support

### keeping up to date (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: read
- **Affordance Candidates (top-3)**: read, mark, control
- **Required Affordance (gold)**: read
- **Correct Tool**: laptop
- **Predicted Tool**: laptop
- **Matching Tools (symbolic)**: laptop, latchstring, watering can, openside plane, t square
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy, Fragile
  - Deduced Affordances: cool, staple, heat, plug, repair, time, illuminate, press, write, contain, mark, file, hold, control, store, entertain, spread
  - Matched via synonyms: control, mark, write

### breaking up compacted soil (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: plow
- **Affordance Candidates (top-3)**: plow, dig, pierce
- **Required Affordance (gold)**: plow
- **Correct Tool**: bull tongue
- **Predicted Tool**: scauper
- **Matching Tools (symbolic)**: scauper, pincer
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable
  - Deduced Affordances: cut, heat, wrap, time, press, contain, clean, stick, hold, melt, pour, smoothen

### applying spreads on bread (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, grasp, hold
- **Required Affordance (gold)**: spread
- **Correct Tool**: palette knife
- **Predicted Tool**: palette knife
- **Matching Tools (symbolic)**: palette knife, hunting knife, chain saw, abrader, counterbore
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Sharp
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise
  - Matched via synonyms: hold, spread

### picking up items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grasp
- **Affordance Candidates (top-3)**: grasp, lift, hold
- **Required Affordance (gold)**: pick
- **Correct Tool**: baseballbat
- **Predicted Tool**: saw
- **Matching Tools (symbolic)**: baseballbat, clipper, saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, decorate, time, illuminate, break, hold, mark, roll, control, read, entertain
  - Matched via synonyms: hold

### carrying objects (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: lift
- **Affordance Candidates (top-3)**: lift, carry, grasp
- **Required Affordance (gold)**: lift
- **Correct Tool**: hayfork
- **Predicted Tool**: rammer
- **Matching Tools (symbolic)**: hayfork, rammer, designedspade, kettle
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, Lightweight, HasPointedTip
  - Deduced Affordances: write, hold, mark, clean, roll, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: hold

### being cooked (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, contain, change
- **Required Affordance (gold)**: eat
- **Correct Tool**: bread
- **Predicted Tool**: bread
- **Matching Tools (symbolic)**: bread, footstool, razor
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight, Soft_Deformable
  - Deduced Affordances: cut, poke, heat, operate, wrap, time, write, press, contain, clean, stick, hold, melt, pour, entertain, smoothen
  - Matched via synonyms: contain, heat, melt

### carrying items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: carry
- **Affordance Candidates (top-3)**: carry, hold, lift
- **Required Affordance (gold)**: hold
- **Correct Tool**: clipper
- **Predicted Tool**: food box
- **Matching Tools (symbolic)**: clipper, carpenter's hammer, food box, icepick, ottoman
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: cut, wash, hold, mark, hammer, store, smoothen
  - Matched via synonyms: hold

### removing isolation from wires (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: strip
- **Affordance Candidates (top-3)**: strip, cut, handle
- **Required Affordance (gold)**: strip
- **Correct Tool**: wire stripper
- **Predicted Tool**: wire stripper
- **Matching Tools (symbolic)**: wire stripper, pruning saw, garden tool, food bag, alligator wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Sharp
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, hold, saw

### distributing cleaning products (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, pour, rub
- **Required Affordance (gold)**: spread
- **Correct Tool**: tableknife
- **Predicted Tool**: tableknife
- **Matching Tools (symbolic)**: tableknife, laptop, hook wrench, pump type plier
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: spread

### heating coffee (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, heat, contain
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools (symbolic)**: coffee machine, clincher, bread, carpenter's square
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: staple, heat, plug, repair, time, illuminate, press, hold, dry
  - Augmented Affordances (role/task+ConceptNet): be_heated, cut, mix
  - Matched via synonyms: be_heated, heat

### shielding surfaces (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cover
- **Affordance Candidates (top-3)**: cover, support, hold
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: auger
- **Matching Tools (symbolic)**: drum sander, star drill, power tool, auger
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: carry, grasp, lift, support

### throwing away uneaten food (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dispose
- **Affordance Candidates (top-3)**: dispose, clean, contain
- **Required Affordance (gold)**: clean
- **Correct Tool**: tableknife
- **Predicted Tool**: coffeetable
- **Matching Tools (symbolic)**: tableknife, coffeetable, eolith
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: wash

### storing clean utensils (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: store
- **Affordance Candidates (top-3)**: store, contain, support
- **Required Affordance (gold)**: store
- **Correct Tool**: desk
- **Predicted Tool**: desk
- **Matching Tools (symbolic)**: desk, paper cutter, croupier's rake, palette knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cool, staple, cover, decorate, time, illuminate, contain, mark, store, hold, read, entertain, support
  - Matched via synonyms: contain, store, support

### cleaning spilled milk (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: absorb
- **Affordance Candidates (top-3)**: absorb, wipe, dispose
- **Required Affordance (gold)**: clean
- **Correct Tool**: jigsaw
- **Predicted Tool**: ladle
- **Matching Tools (symbolic)**: jigsaw, ladle, grapnel, lancet, battering ram
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, dry, wash

### organizing documents (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: staple
- **Affordance Candidates (top-3)**: staple, handle, mark
- **Required Affordance (gold)**: staple
- **Correct Tool**: stapler
- **Predicted Tool**: stapler
- **Matching Tools (symbolic)**: stapler, khukurus, dado plane, crank, gouge
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cool, staple, write, press, illuminate, hold, mark, file, control, store, entertain
  - Matched via synonyms: hold, mark, staple, write

### assembling furniture (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: screw
- **Affordance Candidates (top-3)**: screw, bore, hold
- **Required Affordance (gold)**: install
- **Correct Tool**: coping saw
- **Predicted Tool**: electric hammer
- **Matching Tools (symbolic)**: coping saw, tissuebox, gouge, electric hammer, wine bottle
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: drill, grasp, hold, screw

### washing dishes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wash
- **Affordance Candidates (top-3)**: wash, clean, dry
- **Required Affordance (gold)**: wash
- **Correct Tool**: keyhole saw
- **Predicted Tool**: bit
- **Matching Tools (symbolic)**: bit, shaver, side table
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Sharp, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub

### grinding surfaces (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grind
- **Affordance Candidates (top-3)**: grind, smoothen, polish
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools (symbolic)**: spiral ratchet screwdriver, bender, dovetail plane
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: carry, plug, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, smoothen, entertain, grasp, display, comfort, lift, wash, dry, illuminate, write, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Augmented Affordances (role/task+ConceptNet): fix
  - Matched via synonyms: file, grind, smoothen

### accessing high shelves (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: increase
- **Affordance Candidates (top-3)**: increase, lift, support
- **Required Affordance (gold)**: lift
- **Correct Tool**: hayfork
- **Predicted Tool**: axe
- **Matching Tools (symbolic)**: scissors, axe, towelholder
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, Lightweight, HasPointedTip
  - Deduced Affordances: write, hold, mark, clean, roll, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow

### making garnishes (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: dice
- **Affordance Candidates (top-3)**: dice, peel, cut
- **Required Affordance (gold)**: peel
- **Correct Tool**: linoleum knife
- **Predicted Tool**: linoleum knife
- **Matching Tools (symbolic)**: linoleum knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### enhancing glass surfaces (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: polish
- **Affordance Candidates (top-3)**: polish, rub, clean
- **Required Affordance (gold)**: polish
- **Correct Tool**: flat file
- **Predicted Tool**: flat file
- **Matching Tools (symbolic)**: flat file, dresser, mug, folding saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: HasAbrasiveSurface, Lightweight
  - Deduced Affordances: operate, carry, decorate, screw, dry, spread, mix, write, hold, mark, clean, roll, control, store, entertain, rub
  - Matched via synonyms: clean, rub

### reheating soup (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, contain, operate
- **Required Affordance (gold)**: heat
- **Correct Tool**: microwave
- **Predicted Tool**: microwave
- **Matching Tools (symbolic)**: microwave, die, bread, watch
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: staple, heat, plug, repair, time, illuminate, press, hold, dry
  - Augmented Affordances (role/task+ConceptNet): be_heated, cut, mix
  - Matched via synonyms: be_heated, heat

### being filled with a liquid (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, hold, store
- **Required Affordance (gold)**: contain
- **Correct Tool**: table knife
- **Predicted Tool**: cigar cutter
- **Matching Tools (symbolic)**: table knife, lochaber ax, crosscut saw, cigar cutter, flat file
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: hold

### wiping a surface clean (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wipe
- **Affordance Candidates (top-3)**: wipe, clean, rub
- **Required Affordance (gold)**: wipe
- **Correct Tool**: case knife
- **Predicted Tool**: sandblaster
- **Matching Tools (symbolic)**: sandblaster, jackscrew, case knife, shelvingunit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise
  - Matched via synonyms: wash

### reading instructions (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: read
- **Affordance Candidates (top-3)**: read, display, hold
- **Required Affordance (gold)**: read
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools (symbolic)**: cell phone, electric drill, hedge trimmer, garden spade, rock bit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: time, illuminate, press, break, write, mark, file, roll, contain, clean, control, entertain
  - Matched via synonyms: illuminate

### assembling furniture (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: bore
- **Affordance Candidates (top-3)**: bore, screw, hammer
- **Required Affordance (gold)**: drill
- **Correct Tool**: star drill
- **Predicted Tool**: star drill
- **Matching Tools (symbolic)**: star drill, chamfer bit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: drill, hammer, screw

### applying butter (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: spread
- **Affordance Candidates (top-3)**: spread, cut, melt
- **Required Affordance (gold)**: cut
- **Correct Tool**: twist bit
- **Predicted Tool**: surgical knife
- **Matching Tools (symbolic)**: twist bit, bolt cutter, surgical knife, fireman's ax, shelvingunit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: cut, pour, saw, spread

### decorating a room (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: beautify
- **Affordance Candidates (top-3)**: beautify, decorate, display
- **Required Affordance (gold)**: beautify
- **Correct Tool**: steel wool pad
- **Predicted Tool**: drawer
- **Matching Tools (symbolic)**: drawer, axe
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Rigid, HasAbrasiveSurface
  - Deduced Affordances: wipe, wash, clean
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog

### clearing the drain (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: unclog
- **Affordance Candidates (top-3)**: unclog, wash, separate
- **Required Affordance (gold)**: unclog
- **Correct Tool**: trap and drain auger
- **Predicted Tool**: trap and drain auger
- **Matching Tools (symbolic)**: trap and drain auger, cigar cutter, pruning knife, paper box, food jar
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsFlexible
  - Deduced Affordances: operate, carry, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, dry, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, cut, saw

### fitting flexible piping (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: bend
- **Affordance Candidates (top-3)**: bend, grasp, flex
- **Required Affordance (gold)**: bend
- **Correct Tool**: saw set
- **Predicted Tool**: bit
- **Matching Tools (symbolic)**: saw set, circular plane, bit, scraper, pruning saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold

### decorating bed (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: beautify
- **Affordance Candidates (top-3)**: beautify, decorate, cover
- **Required Affordance (gold)**: decorate
- **Correct Tool**: room decor
- **Predicted Tool**: room decor
- **Matching Tools (symbolic)**: room decor, carpenter's square, dry battery
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight
  - Deduced Affordances: cool, cover, decorate, illuminate, clean, store, entertain
  - Augmented Affordances (role/task+ConceptNet): beautify, increase
  - Matched via synonyms: beautify, cover, decorate

### preparing drinks (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mix
- **Affordance Candidates (top-3)**: mix, pour, scoop
- **Required Affordance (gold)**: mix
- **Correct Tool**: spoon
- **Predicted Tool**: spoon
- **Matching Tools (symbolic)**: spoon, garden trowel, scriber, power saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: poke, heat, comfort, decorate, screw, write, break, mix, hold, fix, melt, roll, read, exercise, entertain, support
  - Matched via synonyms: mix

### managing lighting (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: control
- **Affordance Candidates (top-3)**: control, handle, illuminate
- **Required Affordance (gold)**: control
- **Correct Tool**: electric hammer
- **Predicted Tool**: plane
- **Matching Tools (symbolic)**: electric hammer, plane, machete, pick, buffer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, display, grasp, illuminate, operate

### eating dinner (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: eat
- **Affordance Candidates (top-3)**: eat, support, grasp
- **Required Affordance (gold)**: support
- **Correct Tool**: stool
- **Predicted Tool**: bed
- **Matching Tools (symbolic)**: stool, jigsaw, compass saw, spade bit, bed
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy
  - Deduced Affordances: staple, cover, decorate, time, illuminate, contain, hold, support
  - Matched via synonyms: hold, support

### keeping sporting equipment (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: store
- **Affordance Candidates (top-3)**: store, support, contain
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools (symbolic)**: box, ottoman, straight razor, circular saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid
  - Deduced Affordances: heat, carry, decorate, wrap, wash, illuminate, mix, write, contain, clean, store, hold, read, dry
  - Matched via synonyms: carry, contain, store

### setting up appliances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: install
- **Affordance Candidates (top-3)**: install, plug, operate
- **Required Affordance (gold)**: install
- **Correct Tool**: two handed saw
- **Predicted Tool**: rammer
- **Matching Tools (symbolic)**: two handed saw, broad hatchet, rammer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: fix, operate, repair

### preparing toppings (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: crumble
- **Affordance Candidates (top-3)**: crumble, dice, spread
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: battering ram
- **Matching Tools (symbolic)**: ripping chisel, battering ram, c d
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: break, cut, pour, saw, spread

### sawing flooring planks (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: saw
- **Affordance Candidates (top-3)**: saw, shape, handle
- **Required Affordance (gold)**: saw
- **Correct Tool**: pitsaw
- **Predicted Tool**: folding saw
- **Matching Tools (symbolic)**: folding saw, pitsaw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, grasp, hold, saw

### cleaning as a home workout (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: exercise
- **Affordance Candidates (top-3)**: exercise, clean, rub
- **Required Affordance (gold)**: exercise
- **Correct Tool**: basket ball
- **Predicted Tool**: clincher
- **Matching Tools (symbolic)**: clincher, scrub brush, box
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable
  - Deduced Affordances: bore, heat, comfort, wash, write, illuminate, stick, hammer, control, store, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate
  - Matched via synonyms: wash

### maintaining plumbing (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: repair
- **Affordance Candidates (top-3)**: repair, unclog, wrench
- **Required Affordance (gold)**: repair
- **Correct Tool**: buffer
- **Predicted Tool**: buffer
- **Matching Tools (symbolic)**: buffer, fireman's ax, apple, rubber eraser
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: clean, fix, repair

### protecting food (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cover
- **Affordance Candidates (top-3)**: cover, store, contain
- **Required Affordance (gold)**: cover
- **Correct Tool**: drum sander
- **Predicted Tool**: laundry hamper
- **Matching Tools (symbolic)**: drum sander, buffer, gasket, laundry hamper
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: contain, store

### repairing books (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: staple
- **Affordance Candidates (top-3)**: staple, stick, smoothen
- **Required Affordance (gold)**: staple
- **Correct Tool**: stapler
- **Predicted Tool**: stapler
- **Matching Tools (symbolic)**: stapler, carriage wrench, lancet, glue stick, scauper
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: cool, staple, write, press, illuminate, hold, mark, file, control, store, entertain
  - Matched via synonyms: file, staple

### assembling furniture (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: bore
- **Affordance Candidates (top-3)**: bore, screw, wrench
- **Required Affordance (gold)**: hammer
- **Correct Tool**: triphammer
- **Predicted Tool**: bore bit
- **Matching Tools (symbolic)**: bore bit, corkscrew, pitchfork
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: drill, screw

### cleaning the floor (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: clean
- **Affordance Candidates (top-3)**: clean, wipe, dry
- **Required Affordance (gold)**: clean
- **Correct Tool**: power saw
- **Predicted Tool**: power saw
- **Matching Tools (symbolic)**: power saw, basket ball, ottoman
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, dry, wash

### measuring ingredients (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, scoop, pour
- **Required Affordance (gold)**: scoop
- **Correct Tool**: slick
- **Predicted Tool**: jigsaw
- **Matching Tools (symbolic)**: scriber, jigsaw
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Liquid
  - Deduced Affordances: heat, wash, wipe, clean, entertain
  - Augmented Affordances (role/task+ConceptNet): scrub, unclog

### hanging poster (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: increase
- **Affordance Candidates (top-3)**: increase, lift, mark
- **Required Affordance (gold)**: increase
- **Correct Tool**: side table
- **Predicted Tool**: side table
- **Matching Tools (symbolic)**: side table, slicer, curtain, lawn mower, pipe wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, store, staple, heat, press, entertain, display, wash, dry, time, illuminate, write, clean, cover, read, exercise, support
  - Matched via synonyms: carry, support, write

### preparing food (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, mix, peel
- **Required Affordance (gold)**: break
- **Correct Tool**: jigsaw
- **Predicted Tool**: steak knife
- **Matching Tools (symbolic)**: jigsaw, steak knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: cut, mix, saw

### moving furniture (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: lift
- **Affordance Candidates (top-3)**: lift, carry, support
- **Required Affordance (gold)**: lift
- **Correct Tool**: pitchfork
- **Predicted Tool**: laundry hamper
- **Matching Tools (symbolic)**: pitchfork, pipe wrench, laundry hamper, shelving unit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, GardeningTask
  - Qualities: Heavy, Rigid, Sharp, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, cool, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Augmented Affordances (role/task+ConceptNet): plow
  - Matched via synonyms: carry, support

### packing soil (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: tamp
- **Affordance Candidates (top-3)**: tamp, press, smoothen
- **Required Affordance (gold)**: tamp
- **Correct Tool**: stemmer
- **Predicted Tool**: scraper
- **Matching Tools (symbolic)**: scraper
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: cut, cool, staple, heat, lift, wash, screw, saw, illuminate, write, time, stick, mark, hold, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, dice, mix

### handling tools (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: grasp
- **Affordance Candidates (top-3)**: grasp, operate, control
- **Required Affordance (gold)**: operate
- **Correct Tool**: compass saw
- **Predicted Tool**: compass saw
- **Matching Tools (symbolic)**: compass saw, ram, riding mower, circular plane, rake
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, operate

### baking pastries (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: heat
- **Affordance Candidates (top-3)**: heat, shape, mix
- **Required Affordance (gold)**: crumble
- **Correct Tool**: battering ram
- **Predicted Tool**: slick
- **Matching Tools (symbolic)**: slick
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub

### melting butter (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: heat
- **Affordance Candidates (top-3)**: heat, be_heated, melt
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron, catling, bull tongue, circular saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: heat

### managing waste (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, dispose, compress
- **Required Affordance (gold)**: contain
- **Correct Tool**: tray
- **Predicted Tool**: arm chair
- **Matching Tools (symbolic)**: arm chair
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight
  - Deduced Affordances: poke, heat, comfort, decorate, screw, write, break, mix, hold, fix, melt, roll, read, exercise, entertain, support

### measuring ingredients (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, scoop, pour
- **Required Affordance (gold)**: dice
- **Correct Tool**: dagger
- **Predicted Tool**: metal box
- **Matching Tools (symbolic)**: metal box, dagger, pipe cutter, parang, graver
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: pour, spread

### showcasing decorations (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: display
- **Affordance Candidates (top-3)**: display, support, decorate
- **Required Affordance (gold)**: display
- **Correct Tool**: calculator
- **Predicted Tool**: power tool
- **Matching Tools (symbolic)**: calculator, power tool, roach clip, set square, parang
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: staple, screw, time, illuminate, press, write, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: illuminate

### dusting the statue (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, clean, polish
- **Required Affordance (gold)**: clean
- **Correct Tool**: power tool
- **Predicted Tool**: toilet paper
- **Matching Tools (symbolic)**: power tool, toilet paper, food cup, alarm clock
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, file, grind, smoothen, wash

### finding buried treasures (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dig
- **Affordance Candidates (top-3)**: dig, pick, separate
- **Required Affordance (gold)**: dig
- **Correct Tool**: shovel
- **Predicted Tool**: shovel
- **Matching Tools (symbolic)**: shovel, bumper jack, pitcher, chain saw, file
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, illuminate, hold, mark, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: cut, dig, hold, plow

### fixing broken appliances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: repair
- **Affordance Candidates (top-3)**: repair, screw, wrench
- **Required Affordance (gold)**: repair
- **Correct Tool**: chamfer plane
- **Predicted Tool**: tap wrench
- **Matching Tools (symbolic)**: chamfer plane, palette knife, tap wrench, adz
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: fix, repair, screw

### mounting fixtures (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: drill
- **Affordance Candidates (top-3)**: drill, screw, hold
- **Required Affordance (gold)**: install
- **Correct Tool**: pruner
- **Predicted Tool**: basket ball
- **Matching Tools (symbolic)**: pruner, book, moldboard plow, basket ball, parang
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: hold, screw

### playing active games (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: exercise
- **Affordance Candidates (top-3)**: exercise, entertain, handle
- **Required Affordance (gold)**: exercise
- **Correct Tool**: basket ball
- **Predicted Tool**: pin wrench
- **Matching Tools (symbolic)**: shovel, pin wrench, twist bit
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable
  - Deduced Affordances: bore, heat, comfort, wash, write, illuminate, stick, hammer, control, store, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate
  - Matched via synonyms: entertain

### adjusting fixtures (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wrench
- **Affordance Candidates (top-3)**: wrench, screw, handle
- **Required Affordance (gold)**: wrench
- **Correct Tool**: monkey wrench
- **Predicted Tool**: box wrench
- **Matching Tools (symbolic)**: monkey wrench, stiletto, surgical knife, box wrench, bathtubbasin
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, screw

### throwing away uneaten food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dispose
- **Affordance Candidates (top-3)**: dispose, contain, clean
- **Required Affordance (gold)**: dispose
- **Correct Tool**: sink basin
- **Predicted Tool**: sink basin
- **Matching Tools (symbolic)**: sink basin, safe, plate, case knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: HygieneTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: staple, heat, decorate, wash, illuminate, contain, hold, store, dry
  - Matched via synonyms: contain, store, wash

### decorating pumpkins (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: carve
- **Affordance Candidates (top-3)**: carve, cut, shape
- **Required Affordance (gold)**: carve
- **Correct Tool**: yataghan
- **Predicted Tool**: yataghan
- **Matching Tools (symbolic)**: yataghan, sawmill
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### cutting wood (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, saw, hold
- **Required Affordance (gold)**: saw
- **Correct Tool**: pruning saw
- **Predicted Tool**: pruning saw
- **Matching Tools (symbolic)**: pruning saw, scraper
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask, GardeningTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, cool, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Augmented Affordances (role/task+ConceptNet): plow
  - Matched via synonyms: cut, grasp, hold, saw

### freezing food (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cool
- **Affordance Candidates (top-3)**: cool, contain, store
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: drum sander
- **Matching Tools (symbolic)**: drum sander, seal, garden spade, bathtub, rounder
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: contain, cool, store

### cleaning surfaces (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, wipe, polish
- **Required Affordance (gold)**: rub
- **Correct Tool**: table knife
- **Predicted Tool**: pin wrench
- **Matching Tools (symbolic)**: table knife, pin wrench, kitchenknife, linoleum knife, chain saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: wash

### making jewelery (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: solder
- **Affordance Candidates (top-3)**: solder, shape, engrave
- **Required Affordance (gold)**: solder
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron, instant noodle, kitchen knife, crosscut saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: mark, solder, write

### making ice cubes (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cool
- **Affordance Candidates (top-3)**: cool, contain, store
- **Required Affordance (gold)**: cube
- **Correct Tool**: steak knife
- **Predicted Tool**: wine bottle
- **Matching Tools (symbolic)**: steak knife, locking plier, wine bottle
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise
  - Matched via synonyms: cool

### creating a drainage (WRONG)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, dig, poke
- **Required Affordance (gold)**: poke
- **Correct Tool**: screwdriver
- **Predicted Tool**: air hammer
- **Matching Tools (symbolic)**: air hammer
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub

### keeping food from going bad (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cool
- **Affordance Candidates (top-3)**: cool, contain, store
- **Required Affordance (gold)**: cool
- **Correct Tool**: drum sander
- **Predicted Tool**: drum sander
- **Matching Tools (symbolic)**: drum sander, scythe, side table
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: contain, cool, store

### measuring distances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: handle
- **Affordance Candidates (top-3)**: handle, mark, increase
- **Required Affordance (gold)**: mark
- **Correct Tool**: signet
- **Predicted Tool**: hayfork
- **Matching Tools (symbolic)**: signet, hayfork, stemmer, sofa, shelvingunit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: staple, write, press, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: hold, mark, write

### removing dirt from your teeth (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: stick
- **Affordance Candidates (top-3)**: stick, rub, clean
- **Required Affordance (gold)**: stick
- **Correct Tool**: toothpick
- **Predicted Tool**: pencil
- **Matching Tools (symbolic)**: power tool, pencil, showerdoor
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Sharp
  - Deduced Affordances: poke, heat, comfort, screw, dig, write, break, hold, entertain, support

### assembling furniture (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: screw
- **Affordance Candidates (top-3)**: screw, drill, hold
- **Required Affordance (gold)**: bore
- **Correct Tool**: router
- **Predicted Tool**: chamfer plane
- **Matching Tools (symbolic)**: chamfer plane, crown saw, stapler, hammer
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: heat, plug, time, illuminate, press, write, mark, file, control, entertain, spread

### removing skin from fruits and vegetables (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: peel
- **Affordance Candidates (top-3)**: peel, cut, separate
- **Required Affordance (gold)**: peel
- **Correct Tool**: parer
- **Predicted Tool**: parer
- **Matching Tools (symbolic)**: parer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, Lightweight, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, roll, lift, wash, break, scoop, cut, mix, read, exercise, dry
  - Matched via synonyms: chop, cut, peel, saw, skin

### storing cereal box (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, support, store
- **Required Affordance (gold)**: store
- **Correct Tool**: box
- **Predicted Tool**: box
- **Matching Tools (symbolic)**: box, food cup, toiletpaperhanger, die
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid
  - Deduced Affordances: heat, carry, decorate, wrap, wash, illuminate, mix, write, contain, clean, store, hold, read, dry
  - Matched via synonyms: carry, contain, store

### melting envelope wax (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: heat
- **Affordance Candidates (top-3)**: heat, be_heated, spread
- **Required Affordance (gold)**: heat
- **Correct Tool**: coffee machine
- **Predicted Tool**: coffee machine
- **Matching Tools (symbolic)**: coffee machine, shampoo, sidetable
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy
  - Deduced Affordances: staple, heat, plug, repair, time, illuminate, press, hold, dry
  - Augmented Affordances (role/task+ConceptNet): be_heated, cut, mix
  - Matched via synonyms: be_heated, heat

### preparing soil (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: dig
- **Affordance Candidates (top-3)**: dig, break, tamp
- **Required Affordance (gold)**: dig
- **Correct Tool**: garden spade
- **Predicted Tool**: scauper
- **Matching Tools (symbolic)**: garden spade, scauper
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, illuminate, hold, mark, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: dig, plow

### removing stains (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, wipe, clean
- **Required Affordance (gold)**: rub
- **Correct Tool**: tableknife
- **Predicted Tool**: hack
- **Matching Tools (symbolic)**: electric drill, tableknife, keyhole saw, food can, hack
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: wash

### cleaning a litter box (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: scoop
- **Affordance Candidates (top-3)**: scoop, dispose, clean
- **Required Affordance (gold)**: scoop
- **Correct Tool**: trowel
- **Predicted Tool**: pointing trowel
- **Matching Tools (symbolic)**: trowel, pointing trowel, sinkbasin, spud
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, illuminate, hold, mark, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: dig, plow

### getting a book from a high shelf (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: increase
- **Affordance Candidates (top-3)**: increase, grasp, lift
- **Required Affordance (gold)**: increase
- **Correct Tool**: arm chair
- **Predicted Tool**: arm chair
- **Matching Tools (symbolic)**: arm chair, chisel, egg, soapbar, reamer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, plug, contain, stick, hold, staple, heat, screw, roll, entertain, display, comfort, lift, dry, time, illuminate, break, cut, cover, read, support
  - Augmented Affordances (role/task+ConceptNet): increase
  - Matched via synonyms: carry, hold, increase, lift, support

### fixing light bulb outside your house (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: increase
- **Affordance Candidates (top-3)**: increase, screw, wrench
- **Required Affordance (gold)**: increase
- **Correct Tool**: sofa
- **Predicted Tool**: spiral ratchet screwdriver
- **Matching Tools (symbolic)**: sofa, spiral ratchet screwdriver, pitsaw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask, SleepingTask
  - Qualities: Heavy, Soft_Deformable
  - Deduced Affordances: cut, heat, carry, comfort, lift, decorate, wash, plug, cover, time, dry, stick, hold, hammer, control, read, entertain, support
  - Augmented Affordances (role/task+ConceptNet): increase
  - Matched via synonyms: increase

### enjoying leisure time (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: entertain
- **Affordance Candidates (top-3)**: entertain, comfort, read
- **Required Affordance (gold)**: read
- **Correct Tool**: desktop
- **Predicted Tool**: desktop
- **Matching Tools (symbolic)**: desktop, spokeshave, food box, fork
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid, Electronic
  - Deduced Affordances: cool, staple, cover, decorate, screw, repair, time, illuminate, write, contain, mark, file, store, hold, read, entertain, support
  - Matched via synonyms: entertain, read

### preparing fruits and vegetables (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, peel, wash
- **Required Affordance (gold)**: cube
- **Correct Tool**: table knife
- **Predicted Tool**: table knife
- **Matching Tools (symbolic)**: table knife, allen wrench, handtowel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: chop, cut, peel, saw, skin, wash

### carrying containers (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: hold
- **Affordance Candidates (top-3)**: hold, lift, grasp
- **Required Affordance (gold)**: handle
- **Correct Tool**: router
- **Predicted Tool**: alligator wrench
- **Matching Tools (symbolic)**: alligator wrench, roomdecor, punch, dogbed
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight
  - Deduced Affordances: heat, plug, time, illuminate, press, write, mark, file, control, entertain, spread

### breaking apart food items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: break
- **Affordance Candidates (top-3)**: break, crack, separate
- **Required Affordance (gold)**: break
- **Correct Tool**: bottle
- **Predicted Tool**: hand ax
- **Matching Tools (symbolic)**: hand ax, cigar cutter, o ring, potato
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer
  - Deduced Affordances: carry, decorate, contain, hold, hammer, store, heat, entertain, read, wash, time, illuminate, write, clean, wrap, mix, cool, smoothen, dry

### presenting information (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: display
- **Affordance Candidates (top-3)**: display, illuminate, write
- **Required Affordance (gold)**: display
- **Correct Tool**: calculator
- **Predicted Tool**: calculator
- **Matching Tools (symbolic)**: calculator, toaster, flat tip screwdriver, linoleum knife, knife blade
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: staple, screw, time, illuminate, press, write, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: illuminate, mark, write

### removing unhealthy plant parts (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: separate
- **Affordance Candidates (top-3)**: separate, cut, skin
- **Required Affordance (gold)**: skin
- **Correct Tool**: kitchen knife
- **Predicted Tool**: kitchen knife
- **Matching Tools (symbolic)**: kitchen knife, saw set
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, heat, screw, peel, dig, saw, lift, wash, break, scoop, cut, mix, mark, cool, exercise
  - Matched via synonyms: chop, cut, peel, saw, skin

### preparing cooking ingredients (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: chop
- **Affordance Candidates (top-3)**: chop, peel, dice
- **Required Affordance (gold)**: chop
- **Correct Tool**: half hatchet
- **Predicted Tool**: butcher knife
- **Matching Tools (symbolic)**: half hatchet, butcher knife, pruning shear
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: cut, saw

### removing old fixtures (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wrench
- **Affordance Candidates (top-3)**: wrench, hammer, drill
- **Required Affordance (gold)**: hammer
- **Correct Tool**: scythe
- **Predicted Tool**: chisel
- **Matching Tools (symbolic)**: scythe, ram, chisel
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: drill, hammer

### exercising (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: exercise
- **Affordance Candidates (top-3)**: exercise, grasp, support
- **Required Affordance (gold)**: exercise
- **Correct Tool**: tennis racket
- **Predicted Tool**: adz
- **Matching Tools (symbolic)**: safe, adz, peppershaker
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: bore, poke, decorate, illuminate, break, store, stick, roll, read, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate

### creating a drainage (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pierce
- **Affordance Candidates (top-3)**: pierce, poke, dig
- **Required Affordance (gold)**: pierce
- **Correct Tool**: punch
- **Predicted Tool**: hand drill
- **Matching Tools (symbolic)**: hand drill, butcher knife, broad hatchet, hook wrench
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable
  - Deduced Affordances: cut, heat, wrap, time, write, contain, clean, stick, hold, melt, pour, cool, smoothen, skin, spread

### applying make-up (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: beautify
- **Affordance Candidates (top-3)**: beautify, spread, smoothen
- **Required Affordance (gold)**: beautify
- **Correct Tool**: nailfile
- **Predicted Tool**: handstamp
- **Matching Tools (symbolic)**: nailfile, handstamp, ravehook, corkscrew
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: HasAbrasiveSurface, Lightweight, Rigid
  - Deduced Affordances: cut, wash, write, hold, mark, hammer, roll, clean, store, smoothen
  - Matched via synonyms: smoothen

### using appliances with a button (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: press
- **Affordance Candidates (top-3)**: press, operate, handle
- **Required Affordance (gold)**: press
- **Correct Tool**: tamp
- **Predicted Tool**: tamp
- **Matching Tools (symbolic)**: tamp, edger, knife blade, pillow
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Rigid
  - Deduced Affordances: cut, wash, write, hold, mark, hammer, roll, clean, store, smoothen
  - Matched via synonyms: hold

### opening packages (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: slit
- **Affordance Candidates (top-3)**: slit, pierce, break
- **Required Affordance (gold)**: crack
- **Correct Tool**: parer
- **Predicted Tool**: parer
- **Matching Tools (symbolic)**: parer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid, Lightweight, HasBlade
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, roll, lift, wash, break, scoop, cut, mix, read, exercise, dry
  - Matched via synonyms: break, chop, crack, cut, saw

### decreasing darkness (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: illuminate
- **Affordance Candidates (top-3)**: illuminate, control, install
- **Required Affordance (gold)**: illuminate
- **Correct Tool**: curtain
- **Predicted Tool**: curtain
- **Matching Tools (symbolic)**: curtain, portable saw, float, cap opener
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight
  - Deduced Affordances: cool, heat, comfort, cover, decorate, wash, write, illuminate, stick, clean, hammer, control, store, entertain
  - Augmented Affordances (role/task+ConceptNet): beautify, increase
  - Matched via synonyms: control, illuminate

### combining cleaning solutions (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mix
- **Affordance Candidates (top-3)**: mix, contain, pour
- **Required Affordance (gold)**: mix
- **Correct Tool**: pestle
- **Predicted Tool**: water bottle
- **Matching Tools (symbolic)**: pestle, water bottle
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix
  - Matched via synonyms: mix, spread

### harvesting produce (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: pick
- **Affordance Candidates (top-3)**: pick, separate, grasp
- **Required Affordance (gold)**: pick
- **Correct Tool**: garden rake
- **Predicted Tool**: gangsaw
- **Matching Tools (symbolic)**: garden rake, gangsaw, moldboard plow, pot, wrench
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Heavy, Rigid, HasTeeth
  - Deduced Affordances: staple, illuminate, hold, mark, cool
  - Augmented Affordances (role/task+ConceptNet): cut, dig, plow
  - Matched via synonyms: cut, hold

### reducing space in bin (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: compress
- **Affordance Candidates (top-3)**: compress, contain, store
- **Required Affordance (gold)**: compress
- **Correct Tool**: stemmer
- **Predicted Tool**: bucksaw
- **Matching Tools (symbolic)**: comb, bucksaw, desktop, remote control
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Sharp
  - Deduced Affordances: cut, cool, staple, heat, lift, wash, screw, saw, illuminate, write, time, stick, mark, hold, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, dice, mix

### charging devices (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: plug
- **Affordance Candidates (top-3)**: plug, operate, control
- **Required Affordance (gold)**: plug
- **Correct Tool**: pneumatic drill
- **Predicted Tool**: alarm clock
- **Matching Tools (symbolic)**: pneumatic drill, alarm clock, dagger
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, operate

### cleaning a surface (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wipe
- **Affordance Candidates (top-3)**: wipe, rub, polish
- **Required Affordance (gold)**: wipe
- **Correct Tool**: butter knife
- **Predicted Tool**: dog bed
- **Matching Tools (symbolic)**: nailfile, butter knife, stoveburner, sofa, dog bed
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, Sharp
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: wash

### loosening bolts (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wrench
- **Affordance Candidates (top-3)**: wrench, handle, control
- **Required Affordance (gold)**: wrench
- **Correct Tool**: brace wrench
- **Predicted Tool**: brace wrench
- **Matching Tools (symbolic)**: brace wrench, crank, spade bit, circular saw, television
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, operate

### removing adhesives (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: heat
- **Affordance Candidates (top-3)**: heat, strip, wipe
- **Required Affordance (gold)**: melt
- **Correct Tool**: soldering iron
- **Predicted Tool**: soldering iron
- **Matching Tools (symbolic)**: soldering iron, broadax, maul
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Electronic, HasHeatElement
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, heat, wash

### personalising items (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: engrave
- **Affordance Candidates (top-3)**: engrave, mark, decorate
- **Required Affordance (gold)**: engrave
- **Correct Tool**: scauper
- **Predicted Tool**: awl
- **Matching Tools (symbolic)**: scauper, bit, awl, rasp, jointer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: ToolRole, Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: mark

### opening an envelope (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: slit
- **Affordance Candidates (top-3)**: slit, cut, separate
- **Required Affordance (gold)**: cut
- **Correct Tool**: blade
- **Predicted Tool**: blade
- **Matching Tools (symbolic)**: blade, bottle opener
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: cut, saw

### managing schedules (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: time
- **Affordance Candidates (top-3)**: time, write, display
- **Required Affordance (gold)**: time
- **Correct Tool**: watch
- **Predicted Tool**: watch
- **Matching Tools (symbolic)**: watch, tennisracket, egg, dumbbell, portable saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: staple, screw, time, illuminate, press, write, hold, mark, file, roll, clean, control, entertain
  - Matched via synonyms: illuminate, mark, time, write

### mixing ingredients (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mix
- **Affordance Candidates (top-3)**: mix, pour, hold
- **Required Affordance (gold)**: mix
- **Correct Tool**: butter knife
- **Predicted Tool**: butter knife
- **Matching Tools (symbolic)**: butter knife, binder, awl, dresser, guitar pick
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, Sharp
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: hold, mix, spread

### storing food (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, store, wrap
- **Required Affordance (gold)**: wrap
- **Correct Tool**: ball
- **Predicted Tool**: pallet
- **Matching Tools (symbolic)**: pallet, ball, dry battery
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable
  - Deduced Affordances: bore, heat, comfort, wash, write, illuminate, stick, hammer, control, store, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): display, operate
  - Matched via synonyms: store

### serving cake (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, carry, lift
- **Required Affordance (gold)**: cut
- **Correct Tool**: cutter
- **Predicted Tool**: kitchen knife
- **Matching Tools (symbolic)**: cutter, kitchen knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: carry, cut, saw

### reheating coffee (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: be_heated
- **Affordance Candidates (top-3)**: be_heated, heat, contain
- **Required Affordance (gold)**: be_heated
- **Correct Tool**: pan
- **Predicted Tool**: pan
- **Matching Tools (symbolic)**: pan, tap wrench, footstool, power saw
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy
  - Deduced Affordances: chop, cut, cool, staple, heat, carry, lift, wash, screw, time, illuminate, break, store, hold, roll, melt, read, spread
  - Matched via synonyms: heat, melt, store

### using appliances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: operate
- **Affordance Candidates (top-3)**: operate, handle, control
- **Required Affordance (gold)**: handle
- **Correct Tool**: drum sander
- **Predicted Tool**: lawn mower
- **Matching Tools (symbolic)**: drum sander, lawn mower, toiletpaperhanger, paper box, bath tub basin
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface, Electronic
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: control, grasp, operate

### screwing in screws (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: screw
- **Affordance Candidates (top-3)**: screw, grasp, tamp
- **Required Affordance (gold)**: screw
- **Correct Tool**: phillips screwdriver
- **Predicted Tool**: phillips screwdriver
- **Matching Tools (symbolic)**: phillips screwdriver, drill, guitar pick, cap opener, shaver
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, IsRotary
  - Deduced Affordances: cut, operate, carry, screw, saw, spread, time, hold, mark, file, fix, pour, read, smoothen, entertain, rub
  - Matched via synonyms: hold, screw

### labelling belongings (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: mark
- **Affordance Candidates (top-3)**: mark, write, stick
- **Required Affordance (gold)**: engrave
- **Correct Tool**: scauper
- **Predicted Tool**: drilling bit
- **Matching Tools (symbolic)**: scauper, drilling bit, pestle
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: ToolRole, Heavy, Rigid
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: mark

### patching damages furniture (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: fix
- **Affordance Candidates (top-3)**: fix, smoothen, hold
- **Required Affordance (gold)**: repair
- **Correct Tool**: chain saw
- **Predicted Tool**: hammer
- **Matching Tools (symbolic)**: chain saw, hammer, toiletpaperhanger, center bit
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth, Electronic, Sharp
  - Deduced Affordances: operate, carry, plug, contain, stick, hammer, hold, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: file, fix, grasp, grind, hold, repair, smoothen

### hanging items on a wall (CORRECT)
- **Selection method**: symbolic_single
- **Required Affordance (pred)**: bore
- **Affordance Candidates (top-3)**: bore, support, lift
- **Required Affordance (gold)**: drill
- **Correct Tool**: drill
- **Predicted Tool**: drill
- **Matching Tools (symbolic)**: drill
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, drill, support

### adjusting blinds (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: flex
- **Affordance Candidates (top-3)**: flex, grasp, control
- **Required Affordance (gold)**: bend
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools (symbolic)**: bender, garden trowel, hacksaw, food jar, breadknife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: carry, plug, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, smoothen, entertain, grasp, display, comfort, lift, wash, dry, illuminate, write, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Augmented Affordances (role/task+ConceptNet): fix
  - Matched via synonyms: bend, control, grasp

### keeping dirty clothes (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: store
- **Affordance Candidates (top-3)**: store, contain, compress
- **Required Affordance (gold)**: store
- **Correct Tool**: dresser
- **Predicted Tool**: dresser
- **Matching Tools (symbolic)**: dresser, bricklayer's hammer, hand tool, cap
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: carry, decorate, contain, hold, store, staple, heat, repair, press, entertain, display, wash, dry, time, illuminate, write, clean, cover, wrap, mix, read, exercise, support
  - Matched via synonyms: contain, press, store

### organizing documents (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: staple
- **Affordance Candidates (top-3)**: staple, store, file
- **Required Affordance (gold)**: file
- **Correct Tool**: taper file
- **Predicted Tool**: taper file
- **Matching Tools (symbolic)**: taper file, coffee mug, safe, hunting knife
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, HasAbrasiveSurface, Heavy
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: file, grind, rub, smoothen, staple, store

### creating decorative art (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: engrave
- **Affordance Candidates (top-3)**: engrave, shape, polish
- **Required Affordance (gold)**: engrave
- **Correct Tool**: graver
- **Predicted Tool**: graver
- **Matching Tools (symbolic)**: graver, laundryhamper, ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip
  - Deduced Affordances: operate, carry, plug, stick, hold, spread, staple, screw, saw, fix, entertain, time, pour, cut, mark, file, read, smoothen, rub
  - Matched via synonyms: file, mark, rub, smoothen

### choosing a comfortable seat (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: comfort
- **Affordance Candidates (top-3)**: comfort, support, hold
- **Required Affordance (gold)**: comfort
- **Correct Tool**: ottoman
- **Predicted Tool**: ottoman
- **Matching Tools (symbolic)**: ottoman, power mower, garden spade, buffer
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: StorageTask, SleepingTask
  - Qualities: Heavy, Soft_Deformable
  - Deduced Affordances: heat, carry, comfort, cover, support, wrap, dry, repair, time, write, mix, wipe, store, hold, read, exercise, entertain, display
  - Augmented Affordances (role/task+ConceptNet): contain
  - Matched via synonyms: carry, comfort, hold, support

### installing shelves (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: bore
- **Affordance Candidates (top-3)**: bore, screw, support
- **Required Affordance (gold)**: bore
- **Correct Tool**: bucksaw
- **Predicted Tool**: bucksaw
- **Matching Tools (symbolic)**: bucksaw, drawer, ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: carry, drill, screw, support

### hanging pictures (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: bore
- **Affordance Candidates (top-3)**: bore, hold, support
- **Required Affordance (gold)**: bore
- **Correct Tool**: straight flute
- **Predicted Tool**: set square
- **Matching Tools (symbolic)**: jack plane, set square, stamp
- **Correct tool in symbolic match**: No
- **Correct Tool SOMA Features**:
  - Roles: Rigid, Lightweight
  - Tasks: LeisureTask
  - Qualities: MusicalInstrumentRole
  - Deduced Affordances: None

### rolling out dough (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: roll
- **Affordance Candidates (top-3)**: roll, shape, smoothen
- **Required Affordance (gold)**: roll
- **Correct Tool**: flashlight
- **Predicted Tool**: flashlight
- **Matching Tools (symbolic)**: flashlight, beading plane, hedge trimmer, rasp
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Lightweight, Rigid
  - Deduced Affordances: operate, carry, decorate, plug, contain, hold, control, store, spread, cool, heat, screw, dig, saw, fix, roll, entertain, display, lift, wash, dry, time, illuminate, break, write, clean, pour, cut, bend, solder, mix, mark, file, read, smoothen, support
  - Matched via synonyms: file, roll, smoothen

### washing your face (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: wash
- **Affordance Candidates (top-3)**: wash, clean, rub
- **Required Affordance (gold)**: clean
- **Correct Tool**: electric hammer
- **Predicted Tool**: bolt cutter
- **Matching Tools (symbolic)**: electric hammer, bolt cutter, pruning saw, ice ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: operate, carry, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, display, lift, wash, dry, time, illuminate, write, clean, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Matched via synonyms: clean, file, grind, smoothen, wash

### removing stains (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: rub
- **Affordance Candidates (top-3)**: rub, wipe, wash
- **Required Affordance (gold)**: wipe
- **Correct Tool**: butter knife
- **Predicted Tool**: bradawl
- **Matching Tools (symbolic)**: butter knife, bradawl, slouse, hatchet
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, Sharp
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: wash

### measuring liquids (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: contain
- **Affordance Candidates (top-3)**: contain, hold, lift
- **Required Affordance (gold)**: contain
- **Correct Tool**: butter knife
- **Predicted Tool**: butter knife
- **Matching Tools (symbolic)**: butter knife, pitchfork, weeder, wrench, cell phone
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Rigid, Sharp
  - Deduced Affordances: chop, carry, decorate, crack, stick, hold, skin, spread, cool, heat, screw, peel, dig, saw, fix, comfort, lift, wash, break, melt, scoop, cut, mix, read, exercise, support
  - Matched via synonyms: carry, hold, lift, support

### preparing snacks (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: cut
- **Affordance Candidates (top-3)**: cut, crumble, dice
- **Required Affordance (gold)**: crunch
- **Correct Tool**: pestle
- **Predicted Tool**: cigar cutter
- **Matching Tools (symbolic)**: cigar cutter, pestle, hayfork, egg
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid
  - Deduced Affordances: staple, heat, lift, wash, screw, time, illuminate, write, hold, mark, entertain, spread
  - Augmented Affordances (role/task+ConceptNet): carve, chop, cut, dice, mix
  - Matched via synonyms: carve, chop, cut, dice

### listening to a song (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: entertain
- **Affordance Candidates (top-3)**: entertain, operate, control
- **Required Affordance (gold)**: entertain
- **Correct Tool**: cell phone
- **Predicted Tool**: cell phone
- **Matching Tools (symbolic)**: cell phone, fore plane, screw key, clincher
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight, Fragile
  - Deduced Affordances: time, illuminate, press, break, write, mark, file, roll, contain, clean, control, entertain
  - Matched via synonyms: control, entertain

### adjusting cables (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: flex
- **Affordance Candidates (top-3)**: flex, grasp, bend
- **Required Affordance (gold)**: flex
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools (symbolic)**: bender, crown saw, coffee mug, crosscut saw, window
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: carry, plug, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, smoothen, entertain, grasp, display, comfort, lift, wash, dry, illuminate, write, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Augmented Affordances (role/task+ConceptNet): fix
  - Matched via synonyms: bend, grasp

### opening doors and cabinets (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: handle
- **Affordance Candidates (top-3)**: handle, grasp, operate
- **Required Affordance (gold)**: handle
- **Correct Tool**: two handed saw
- **Predicted Tool**: tire iron
- **Matching Tools (symbolic)**: two handed saw, rock bit, tire iron, roach clip, hand ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, operate

### shaping wire (CORRECT)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: bend
- **Affordance Candidates (top-3)**: bend, flex, grasp
- **Required Affordance (gold)**: bend
- **Correct Tool**: bender
- **Predicted Tool**: bender
- **Matching Tools (symbolic)**: bender, drawknife, pipe wrench, spreader, ax
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Rigid
  - Deduced Affordances: carry, plug, contain, hammer, control, store, spread, cool, staple, heat, screw, grind, repair, saw, dig, smoothen, entertain, grasp, display, comfort, lift, wash, dry, illuminate, write, pour, cut, bend, solder, mix, drill, mark, file, read, exercise, support
  - Augmented Affordances (role/task+ConceptNet): fix
  - Matched via synonyms: bend, grasp

### operating appliances (WRONG)
- **Selection method**: llm_tiebreak
- **Required Affordance (pred)**: control
- **Affordance Candidates (top-3)**: control, handle, press
- **Required Affordance (gold)**: control
- **Correct Tool**: compass saw
- **Predicted Tool**: bender
- **Matching Tools (symbolic)**: bender, compass saw, toiletpaperhanger, dagger, toilet paper
- **Correct tool in symbolic match**: Yes
- **Correct Tool SOMA Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth
  - Deduced Affordances: operate, carry, hold, hammer, store, spread, staple, support, screw, grind, repair, saw, dig, fix, smoothen, entertain, grasp, time, illuminate, break, clean, pour, cut, drill, mark, file, read, exercise, rub
  - Matched via synonyms: grasp, hold, operate

