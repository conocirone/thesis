# Online Phase Evaluation Report

Evaluation of the Neuro-Symbolic pipeline against unseen objects from Robo-CSK-Benchmark.

- **Total Objects Tested**: 654
- **Any-Hit Accuracy**: 83.64%
- **Mean Reciprocal Rank (MRR)**: 0.5637

### Metrics at K
| Metric | k=1 | k=3 | k=5 |
|--------|-----|-----|-----|
| Precision | 0.4572 | 0.3800 | 0.3564 |
| Recall | 0.1184 | 0.1900 | 0.2230 |
| Avg Precision (AP) | 0.4557 | 0.4986 | 0.4782 |

## Test Cases Log
### cracker box (✅ HIT)
- **Ground Truth**: hallway, living_room, storage_room, dining_room, bedroom, closet, kitchen, home_office, pantry, laundry_room, bathroom, garage
- **Clingo Deduced**: shelf, home_office, dining_room, bedroom, bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Granular, Lightweight

### sidewalk chalk (✅ HIT)
- **Ground Truth**: living_room, bathroom, home_office, storage_room, bedroom, pantry, kitchen, hallway, laundry_room, garage, closet, dining_room
- **Clingo Deduced**: playroom, library, bedroom, drawer, bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Granular, Lightweight

### ham (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, bedroom, garden, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### spice (✅ HIT)
- **Ground Truth**: cabinet, pantry, shelf
- **Clingo Deduced**: living_room, bedroom, closet, library, garage, storage_room, table, cabinet, fridge, pantry, bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular

### gun (❌ MISS)
- **Ground Truth**: closet
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasPointedTip

### colored wood blocks (✅ HIT)
- **Ground Truth**: closet, living_room, bedroom, bathroom, dining_room, pantry, hallway, home_office, laundry_room, storage_room, kitchen, garage
- **Clingo Deduced**: bedroom, closet, kitchen, trash, bathroom, garage, library, hallway, home_office, living_room, pantry, storage_room, cabinet, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Granular, Lightweight, Rigid

### figurine (✅ HIT)
- **Ground Truth**: cabinet, shelf
- **Clingo Deduced**: bedroom, playroom, library, drawer, bed, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### dryer (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garage, storage_room, bedroom, living_room, fridge, library
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### tea pods (✅ HIT)
- **Ground Truth**: closet, pantry, living_room, hallway, laundry_room, bathroom, bedroom, dining_room, kitchen, storage_room, home_office, garage
- **Clingo Deduced**: kitchen, pantry, bathroom, bedroom, shelf, storage_room, cabinet, garden, library, closet, drawer, fridge, garage, living_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### breakfast (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, pantry, fridge, closet, bathroom, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### shoe box (✅ HIT)
- **Ground Truth**: living_room, home_office, dining_room, laundry_room, bathroom, storage_room, kitchen, garage, hallway, pantry, closet, bedroom
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, HasContainer

### plunger (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: garage, bathroom, bedroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### cube storage box (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, kitchen, home_office, hallway, garage, storage_room, closet, dining_room, pantry, living_room, bathroom
- **Clingo Deduced**: cabinet, closet, garage, fridge, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### lotion (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, bathroom, cabinet, sink, garage, garden, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Perishable

### shirt (✅ HIT)
- **Ground Truth**: closet, drawer, cabinet
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### refrigerator (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, garage, bedroom, fridge, library, pantry
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: RequiresCooling, Electronic, Heavy

### statuette (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: living_room, bedroom, library, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### gelatin box (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, hallway, living_room, closet, dining_room, kitchen, pantry, bathroom, laundry_room, storage_room
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### mat (✅ HIT)
- **Ground Truth**: bathroom, living_room
- **Clingo Deduced**: bedroom, dining_room, bathroom, closet, garage, storage_room, bed, garden, hallway, kitchen, library, living_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight

### basketball (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: playroom, garage, drawer, library, bed, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### trinket (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: bed, drawer, storage_room, garage, fridge, garden, table, bedroom, closet, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Fragile

### light bulb (✅ HIT)
- **Ground Truth**: living_room, kitchen, pantry, closet, laundry_room, hallway, bedroom, garage, dining_room, storage_room, bathroom, home_office
- **Clingo Deduced**: bedroom, table, storage_room, garage, garden, drawer, fridge, hallway, kitchen, shelf
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### mini soccer ball (✅ HIT)
- **Ground Truth**: hallway, home_office, living_room, storage_room, garage, pantry, laundry_room, closet, dining_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: playroom, drawer, bed, garage, library, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### coat (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: closet, drawer, bed, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### sofa (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: living_room, bedroom, storage_room, kitchen, garden, garage, closet, library, table, dining_room, hallway, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### alarmclock (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, garage, bathroom, closet, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### sorting toy (✅ HIT)
- **Ground Truth**: bedroom, garage, laundry_room, hallway, pantry, closet, bathroom, home_office, living_room, kitchen, dining_room, storage_room
- **Clingo Deduced**: bed, drawer, storage_room, library, garage, shelf, bedroom, cabinet, living_room, closet, playroom, garden, kitchen
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### dispensing closure (✅ HIT)
- **Ground Truth**: home_office, laundry_room, storage_room, living_room, pantry, bedroom, hallway, kitchen, dining_room, garage, bathroom, closet
- **Clingo Deduced**: bedroom, closet, shelf, bed, fridge, drawer, garage, garden, kitchen, laundry_room, pantry, table, cabinet, dining_room, storage_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer

### magnifying glass (✅ HIT)
- **Ground Truth**: dining_room, storage_room, living_room, hallway, bathroom, bedroom, home_office, kitchen, garage, pantry, laundry_room, closet
- **Clingo Deduced**: garage, drawer, bedroom, living_room, bathroom, music_room, fridge, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Electronic

### mustard bottle (✅ HIT)
- **Ground Truth**: home_office, pantry, hallway, laundry_room, living_room, closet, bedroom, bathroom, storage_room, kitchen, garage, dining_room
- **Clingo Deduced**: kitchen, pantry, drawer, bedroom, garage, fridge, cabinet, shelf, storage_room, table, bathroom, garden, library, trash, bed, closet, home_office, laundry_room, dining_room, living_room
- **LLM Extracted Features**:
  - Roles: ConsumableRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Liquid, HasContainer, Lightweight

### artichoke (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### backpack (✅ HIT)
- **Ground Truth**: hallway, laundry_room, dining_room, bedroom, closet, bathroom, living_room, pantry, storage_room, kitchen, garage, home_office
- **Clingo Deduced**: bedroom, closet, table, garage, storage_room, drawer, kitchen, pantry, trash, fridge, shelf, library, bed, garden, hallway, home_office, laundry_room, living_room, bathroom, cabinet, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid, HasContainer

### dustpan and brush (✅ HIT)
- **Ground Truth**: bedroom, dining_room, bathroom, home_office, laundry_room, living_room, hallway, pantry, storage_room, kitchen, closet, garage
- **Clingo Deduced**: kitchen, bathroom, storage_room, closet, living_room, bedroom, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Fragile, Rigid, HasContainer

### apple (✅ HIT)
- **Ground Truth**: kitchen, storage_room, living_room, home_office, bathroom, bedroom, garage, laundry_room, hallway, pantry, dining_room, closet
- **Clingo Deduced**: kitchen, storage_room, garden, bedroom, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### olive (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, bathroom, garden, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sugar (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### pitcher base (✅ HIT)
- **Ground Truth**: living_room, garage, hallway, laundry_room, bathroom, bedroom, home_office, pantry, closet, storage_room, dining_room, kitchen
- **Clingo Deduced**: cabinet, fridge, closet, garage, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### spoon rest (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, pantry, living_room, home_office, kitchen, closet, hallway, dining_room, garage, bathroom, storage_room
- **Clingo Deduced**: kitchen, drawer, cabinet, sink, storage_room, table, garden, living_room, pantry, bedroom, shelf
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, HasContainer

### slip (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: bathroom, kitchen, living_room, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Fragile, Lightweight

### sanitary pads (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bedroom, closet, hallway, dining_room, garage, pantry, living_room, storage_room, bathroom, kitchen
- **Clingo Deduced**: bedroom, closet, storage_room, library, kitchen, bathroom, bed, garden, hallway, sink, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Fragile, Soft_Deformable, Washable

### sink (✅ HIT)
- **Ground Truth**: kitchen, bathroom, laundry_room
- **Clingo Deduced**: bathroom, kitchen, bedroom, garden, library, closet, garage, hallway, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: HygieneTask
  - Qualities: Heavy, Rigid

### scarf (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### cake pan (✅ HIT)
- **Ground Truth**: storage_room, bedroom, laundry_room, hallway, pantry, kitchen, dining_room, living_room, garage, bathroom, closet, home_office
- **Clingo Deduced**: kitchen, drawer, pantry, living_room, garden, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy

### fondant (✅ HIT)
- **Ground Truth**: living_room, storage_room, laundry_room, home_office, kitchen, dining_room, closet, bedroom, hallway, pantry, garage, bathroom
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### remotecontrol (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, living_room, table, shelf, drawer, library, playroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### soap dish (✅ HIT)
- **Ground Truth**: closet, hallway, living_room, storage_room, dining_room, bathroom, garage, bedroom, laundry_room, pantry, kitchen, home_office
- **Clingo Deduced**: bedroom, sink, storage_room, garage, library, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Rigid, HasContainer

### candlestick (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, living_room, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LightingRole
  - Qualities: Heavy, Rigid, HasHeatElement

### bedroom (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### dresser (✅ HIT)
- **Ground Truth**: bedroom, living_room, bathroom, drawer
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### crisp (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### candle holder (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, bedroom, garage, home_office, storage_room, hallway, bathroom, closet, pantry, living_room, dining_room
- **Clingo Deduced**: bedroom, drawer, storage_room, fridge, garden, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### screwdriver (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: drawer, shelf, closet, living_room, music_room, sink, storage_room, table, kitchen, bathroom, bedroom, fridge, garage, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight, IsRotary

### rib (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, bedroom, garden, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### foot (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### peg and hammer toy (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, hallway, garage, home_office, dining_room, living_room, kitchen, bathroom, pantry, closet, storage_room
- **Clingo Deduced**: playroom, bedroom, drawer, library, bed, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### pouch (✅ HIT)
- **Ground Truth**: pantry
- **Clingo Deduced**: bedroom, drawer, storage_room, garage, kitchen, table, closet, fridge, laundry_room, shelf, bed, garden, home_office, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Soft_Deformable, HasContainer

### movie dvd (✅ HIT)
- **Ground Truth**: home_office, bedroom, pantry, laundry_room, garage, storage_room, living_room, kitchen, dining_room, closet, hallway, bathroom
- **Clingo Deduced**: bedroom, drawer, library, playroom, bed, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### underpants (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: drawer, closet, library, bed, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### encyclopedia (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: table, drawer, shelf, bed, fridge, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### tweed (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, closet, garage, library, table, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Rigid, Fragile

### storeroom (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: shelf, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: 

### floorlamp (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, home_office, garage, drawer, fridge, hallway, kitchen, shelf
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, HasHeatElement

### chair (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### laundry box (✅ HIT)
- **Ground Truth**: living_room, home_office, dining_room, laundry_room, bathroom, storage_room, kitchen, garage, hallway, pantry, closet, bedroom
- **Clingo Deduced**: closet, cabinet, garage, fridge, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### condom (✅ HIT)
- **Ground Truth**: bathroom, bedroom
- **Clingo Deduced**: library, bathroom, storage_room, bedroom, cabinet, kitchen, sink, trash, shelf, bed, closet, drawer, garage, garden, hallway, living_room, pantry, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable, Toxic_Hazardous

### mint (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, pantry, shelf, bedroom, bathroom, storage_room, cabinet, garden, library, closet, drawer, fridge, garage, living_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### candy bar (✅ HIT)
- **Ground Truth**: bedroom, pantry, bathroom, laundry_room, living_room, hallway, storage_room, closet, kitchen, dining_room, garage, home_office
- **Clingo Deduced**: kitchen, storage_room, bedroom, garden, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### headphone (✅ HIT)
- **Ground Truth**: laundry_room, storage_room, bedroom, living_room, closet, dining_room, kitchen, hallway, pantry, garage, home_office, bathroom
- **Clingo Deduced**: bedroom, drawer, bed, library, cabinet, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Electronic

### toothbrush holder (✅ HIT)
- **Ground Truth**: pantry, bedroom, living_room, kitchen, storage_room, bathroom, dining_room, closet, hallway, garage, laundry_room, home_office
- **Clingo Deduced**: bedroom, storage_room, library, sink, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Rigid

### bacon (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, pantry, storage_room, bathroom, library, fridge, garden, table, closet
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Fragile

### vacuum (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: living_room, storage_room, garage, kitchen, bathroom, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy

### electronic cable (❌ MISS)
- **Ground Truth**: garage, living_room, storage_room, kitchen, home_office, pantry, bedroom, closet, bathroom, dining_room, hallway, laundry_room
- **Clingo Deduced**: drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Lightweight

### pastry (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### large marker (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, pantry, living_room, kitchen, dining_room, hallway, bathroom, home_office, closet, garage, storage_room
- **Clingo Deduced**: library, shelf, drawer, closet, kitchen, bedroom, fridge, garage, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile, Rigid

### instant camera (✅ HIT)
- **Ground Truth**: kitchen, living_room, garage, bedroom, dining_room, laundry_room, home_office, hallway, bathroom, pantry, storage_room, closet
- **Clingo Deduced**: table, shelf, living_room, bedroom, drawer, library, playroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### pear (✅ HIT)
- **Ground Truth**: bathroom, laundry_room, closet, bedroom, hallway, living_room, storage_room, dining_room, home_office, garage, pantry, kitchen
- **Clingo Deduced**: kitchen, storage_room, garden, bedroom, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### toy animal (✅ HIT)
- **Ground Truth**: kitchen, living_room, laundry_room, home_office, bedroom, storage_room, bathroom, garage, hallway, dining_room, pantry, closet
- **Clingo Deduced**: bed, drawer, storage_room, garage, library, shelf, bedroom, cabinet, living_room, closet, playroom, garden, kitchen
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### ashtray (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, kitchen, fridge, garage, library, table, trash, garden, pantry
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy, Rigid, HasContainer

### cracker (✅ HIT)
- **Ground Truth**: pantry
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### monitor (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, garage, bathroom, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### chocolate (✅ HIT)
- **Ground Truth**: storage_room, dining_room, laundry_room, hallway, bathroom, kitchen, pantry, home_office, bedroom, living_room, closet, garage
- **Clingo Deduced**: pantry, fridge, bedroom, bathroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### file sorter (✅ HIT)
- **Ground Truth**: laundry_room, pantry, living_room, bathroom, garage, home_office, dining_room, hallway, kitchen, bedroom, storage_room, closet
- **Clingo Deduced**: shelf, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: 

### pasta (✅ HIT)
- **Ground Truth**: pantry
- **Clingo Deduced**: kitchen, pantry, fridge, cabinet, bathroom, shelf, storage_room, bedroom, closet, garden, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Granular

### mattress (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, living_room, storage_room, kitchen, garden, closet, garage, hallway, library, bathroom, table, drawer
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: SleepingTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### bat (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garage, drawer, living_room, bedroom, fridge, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Fragile, Rigid

### junk (✅ HIT)
- **Ground Truth**: storage_room, bed, table, drawer
- **Clingo Deduced**: storage_room, cabinet, living_room, bedroom, bathroom, closet, drawer, fridge, garage, garden, kitchen, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Fragile, Heavy

### mail (✅ HIT)
- **Ground Truth**: fridge, table
- **Clingo Deduced**: drawer, table, shelf, bed, fridge, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### stoveknob (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, laundry_room, garage, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Heated, Rigid

### pantry (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: shelf, dining_room, garden
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### foam brick (✅ HIT)
- **Ground Truth**: dining_room, bathroom, bedroom, living_room, hallway, storage_room, laundry_room, kitchen, pantry, home_office, garage, closet
- **Clingo Deduced**: bedroom, closet, bathroom, library, garden, living_room, garage, music_room, drawer, hallway, home_office, kitchen, shelf, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid, Soft_Deformable

### face moisturizer (✅ HIT)
- **Ground Truth**: living_room, bedroom, home_office, kitchen, bathroom, hallway, pantry, dining_room, laundry_room, storage_room, garage, closet
- **Clingo Deduced**: bathroom, bedroom, closet, trash, garden, kitchen, pantry, storage_room
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Perishable

### salt shaker (✅ HIT)
- **Ground Truth**: bathroom, living_room, garage, closet, pantry, bedroom, hallway, kitchen, storage_room, laundry_room, dining_room, home_office
- **Clingo Deduced**: kitchen, cabinet, drawer, bathroom, bedroom
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### paint (✅ HIT)
- **Ground Truth**: shelf, cabinet
- **Clingo Deduced**: storage_room, home_office, kitchen, garden, library, trash, garage, pantry, sink, bathroom, drawer, fridge, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Toxic_Hazardous, Flammable

### anti slip tape (✅ HIT)
- **Ground Truth**: bathroom, storage_room, hallway, bedroom, pantry, laundry_room, home_office, dining_room, living_room, closet, kitchen, garage
- **Clingo Deduced**: garage, kitchen, closet, pantry, bedroom
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: MaintenanceTask
  - Qualities: IsFlexible, HasAbrasiveSurface

### router (✅ HIT)
- **Ground Truth**: dining_room, hallway, garage, laundry_room, bedroom, pantry, home_office, kitchen, living_room, storage_room, bathroom, closet, library
- **Clingo Deduced**: bedroom, garage, fridge
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### heavy master chef can (✅ HIT)
- **Ground Truth**: hallway, storage_room, bedroom, dining_room, garage, living_room, bathroom, laundry_room, pantry, closet, kitchen, home_office
- **Clingo Deduced**: kitchen, garage, bedroom, bathroom, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### nail (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: drawer, garage, pantry, closet, living_room, bedroom, cabinet, fridge, storage_room, table, kitchen
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip

### battery (❌ MISS)
- **Ground Truth**: dining_room, garage, pantry, living_room, hallway, bedroom, laundry_room, closet, storage_room, home_office, kitchen, bathroom
- **Clingo Deduced**: table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### saucepan (✅ HIT)
- **Ground Truth**: cabinet, kitchen
- **Clingo Deduced**: kitchen, living_room, garage, bathroom, garden, drawer, pantry, bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy, Rigid

### condiment (✅ HIT)
- **Ground Truth**: bedroom, home_office, pantry, hallway, living_room, storage_room, laundry_room, dining_room, kitchen, garage, bathroom, closet, fridge, table
- **Clingo Deduced**: pantry, fridge, bathroom, bedroom, garage, kitchen, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid

### plate (✅ HIT)
- **Ground Truth**: kitchen, living_room, garage, bathroom, dining_room, bedroom, closet, hallway, storage_room, laundry_room, home_office, pantry
- **Clingo Deduced**: kitchen, pantry, drawer, garden, bedroom, living_room, storage_room, bathroom, cabinet, dining_room, shelf, sink, table
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight

### chopping board (✅ HIT)
- **Ground Truth**: laundry_room, pantry, kitchen, bedroom, living_room, closet, garage, hallway, dining_room, storage_room, home_office, bathroom
- **Clingo Deduced**: kitchen, shelf, drawer, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, HasContainer

### softball (✅ HIT)
- **Ground Truth**: living_room, laundry_room, pantry, garage, closet, bedroom, dining_room, bathroom, home_office, storage_room, hallway, kitchen
- **Clingo Deduced**: playroom, garage, drawer, library, bed, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Rigid, Lightweight

### book (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom, pantry, garage, hallway, closet, laundry_room, dining_room, home_office, storage_room
- **Clingo Deduced**: bed, table, library, drawer, fridge, shelf, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Lightweight

### utensil holder (✅ HIT)
- **Ground Truth**: hallway, living_room, closet, pantry, dining_room, bedroom, laundry_room, kitchen, bathroom, home_office, storage_room, garage
- **Clingo Deduced**: bedroom, closet, garage, library, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Lightweight

### toy tool kit (✅ HIT)
- **Ground Truth**: living_room, closet, hallway, laundry_room, home_office, kitchen, bedroom, storage_room, dining_room, garage, pantry, bathroom
- **Clingo Deduced**: garage, bedroom, library, bathroom, kitchen, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### sugar box (✅ HIT)
- **Ground Truth**: living_room, garage, hallway, bedroom, pantry, bathroom, laundry_room, home_office, dining_room, storage_room, kitchen, closet
- **Clingo Deduced**: kitchen, shelf, fridge, garden, bed, bedroom, closet, drawer, garage, laundry_room, pantry, table, cabinet, dining_room, library, storage_room, trash, bathroom
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Granular, Heavy, HasContainer

### compass (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: shelf, drawer, closet, kitchen, fridge, garage, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### tape (✅ HIT)
- **Ground Truth**: cabinet, drawer
- **Clingo Deduced**: drawer, storage_room, bedroom, bathroom, library, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, IsFlexible

### pottery (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: living_room, bedroom, library, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### dumbbell (✅ HIT)
- **Ground Truth**: bedroom, living_room, laundry_room, storage_room, hallway, garage, kitchen, dining_room, home_office, pantry, bathroom, closet
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### baseballbat (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### varnish (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: garage, sink, kitchen, library, garden, drawer, fridge, home_office, pantry, storage_room, trash
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Flammable

### tennisracket (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: garage, bedroom, shelf, drawer, kitchen, bed, fridge, library, playroom, table, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight, Fragile

### clock (✅ HIT)
- **Ground Truth**: dining_room, garage, pantry, living_room, hallway, bedroom, laundry_room, closet, storage_room, home_office, kitchen, bathroom
- **Clingo Deduced**: garden, storage_room, drawer, fridge, garage, bedroom, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight

### wagon (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: closet, bedroom, bathroom, kitchen, garden, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### work (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: home_office, table, living_room, music_room, kitchen
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: 

### pepsi can pack (✅ HIT)
- **Ground Truth**: living_room, laundry_room, pantry, hallway, kitchen, bathroom, storage_room, dining_room, bedroom, closet, garage, home_office
- **Clingo Deduced**: kitchen, pantry, cabinet, bedroom, bathroom, library, drawer, garage, fridge, garden, living_room, shelf, storage_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### chain (✅ HIT)
- **Ground Truth**: laundry_room, living_room, kitchen, hallway, pantry, closet, bathroom, home_office, garage, bedroom, dining_room, storage_room
- **Clingo Deduced**: bedroom, drawer, closet, library, playroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, IsFlexible

### measuring tape (✅ HIT)
- **Ground Truth**: living_room, kitchen, laundry_room, hallway, bedroom, home_office, closet, bathroom, pantry, dining_room, garage, storage_room
- **Clingo Deduced**: drawer, shelf, closet, music_room, living_room, sink, table, kitchen, bathroom, bedroom, fridge, garage, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight

### tray (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, garage, pantry, kitchen, bedroom, storage_room, hallway, dining_room, home_office, closet
- **Clingo Deduced**: kitchen, dining_room, bedroom, cabinet, storage_room, pantry, garage, bathroom, drawer, fridge, shelf, sink, table
- **LLM Extracted Features**:
  - Roles: CookwareRole, StorageContainerRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Lightweight, Rigid, HasContainer

### knife block (✅ HIT)
- **Ground Truth**: garage, bathroom, living_room, dining_room, bedroom, closet, hallway, storage_room, laundry_room, home_office, pantry, kitchen
- **Clingo Deduced**: bedroom
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### hair color (❌ MISS)
- **Ground Truth**: closet, bedroom, living_room, kitchen, hallway, laundry_room, pantry, bathroom, home_office, dining_room, storage_room, garage
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: 

### hat (✅ HIT)
- **Ground Truth**: closet, hallway, living_room, home_office, bathroom, garage, bedroom, laundry_room, storage_room, kitchen, dining_room, pantry, shelf
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### sushi mat (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bathroom, closet, hallway, storage_room, pantry, bedroom, living_room, kitchen, dining_room, garage
- **Clingo Deduced**: kitchen, drawer, shelf, fridge, bedroom, garage, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### cap (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: bathroom, closet, garage, trash
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### clipboard (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: shelf, drawer, closet, kitchen, fridge, garage, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### dessert (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, pantry, fridge, closet, bathroom, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### platter (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: kitchen, shelf, cabinet, bedroom, sink, library, dining_room, garden, table
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, HasContainer

### towelholder (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, closet, garage, library, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Lightweight

### laptop stand (✅ HIT)
- **Ground Truth**: home_office, closet, storage_room, laundry_room, bedroom, hallway, kitchen, pantry, dining_room, living_room, bathroom, garage
- **Clingo Deduced**: shelf, drawer, closet, kitchen, fridge, garage, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### dustbin (✅ HIT)
- **Ground Truth**: closet, kitchen
- **Clingo Deduced**: kitchen, closet, bedroom, garage, trash, cabinet, drawer, fridge, garden, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### curtain (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, storage_room, drawer, fridge, garden, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Soft_Deformable

### carrot (✅ HIT)
- **Ground Truth**: storage_room, fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### underwear (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: drawer, closet, bed, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### memory (❌ MISS)
- **Ground Truth**: pantry
- **Clingo Deduced**: drawer, table, kitchen, garden
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: 
  - Qualities: 

### juice (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, bathroom, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### electric toothbrush (✅ HIT)
- **Ground Truth**: garage, living_room, pantry, storage_room, home_office, bedroom, dining_room, laundry_room, kitchen, closet, bathroom, hallway
- **Clingo Deduced**: bedroom, sink, garage, library
- **LLM Extracted Features**:
  - Roles: HygieneToolRole
  - Tasks: HygieneTask
  - Qualities: Electronic, Lightweight

### phone stand (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, garage, pantry, kitchen, bedroom, storage_room, hallway, dining_room, home_office, closet
- **Clingo Deduced**: bedroom, bathroom, dining_room, closet, garage, storage_room, bed, garden, hallway, kitchen, library, living_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### card game (✅ HIT)
- **Ground Truth**: closet, garage, laundry_room, hallway, storage_room, bathroom, bedroom, living_room, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### toy instrument (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, home_office, kitchen, bathroom, closet, dining_room, pantry, hallway, garage, storage_room
- **Clingo Deduced**: bedroom, cabinet, drawer, bed, garden, library, shelf, storage_room, garage, living_room, table
- **LLM Extracted Features**:
  - Roles: EntertainmentRole, MusicalInstrumentRole
  - Tasks: LeisureTask
  - Qualities: 

### cellphone (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, closet, shelf, drawer, music_room, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight

### phone armband case (✅ HIT)
- **Ground Truth**: living_room, kitchen, laundry_room, hallway, bedroom, home_office, closet, bathroom, pantry, dining_room, garage, storage_room
- **Clingo Deduced**: drawer, shelf, kitchen, library, closet, laundry_room, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### keyboard (✅ HIT)
- **Ground Truth**: pantry, kitchen, laundry_room, living_room, bathroom, closet, bedroom, home_office, hallway, dining_room, garage, storage_room
- **Clingo Deduced**: bedroom, closet, music_room, shelf, drawer, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight

### couch (✅ HIT)
- **Ground Truth**: living_room, storage_room, hallway
- **Clingo Deduced**: living_room, bedroom, storage_room, kitchen, garden, garage, closet, library, table, dining_room, hallway, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### mug (✅ HIT)
- **Ground Truth**: kitchen, bedroom, laundry_room, bathroom, living_room, storage_room, hallway, garage, home_office, pantry, closet, dining_room, cabinet
- **Clingo Deduced**: table, drawer, cabinet, bedroom, bathroom, fridge, garden, library, pantry, storage_room
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### setting (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### toy bowling set (✅ HIT)
- **Ground Truth**: living_room, pantry, storage_room, bedroom, garage, closet, bathroom, laundry_room, home_office, kitchen, hallway, dining_room
- **Clingo Deduced**: playroom, bedroom, bed, drawer, library, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### rubiks cube (✅ HIT)
- **Ground Truth**: living_room, dining_room, bedroom, storage_room, home_office, pantry, laundry_room, hallway, closet, bathroom, kitchen, garage
- **Clingo Deduced**: bedroom, drawer, cabinet, library, bed, garden, home_office, playroom, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### duvet (✅ HIT)
- **Ground Truth**: bed, bedroom, living_room
- **Clingo Deduced**: bedroom, closet, drawer, cabinet, kitchen, storage_room
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight

### hard drive (✅ HIT)
- **Ground Truth**: living_room, laundry_room, dining_room, pantry, closet, hallway, garage, home_office, storage_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: bedroom, garage, library, fridge, kitchen, pantry
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: Electronic, Heavy

### hand bell (✅ HIT)
- **Ground Truth**: hallway, bedroom, living_room, closet, bathroom, dining_room, home_office, storage_room, kitchen, laundry_room, pantry, garage
- **Clingo Deduced**: bedroom, shelf, drawer, kitchen, fridge, garage, library, playroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### toothbrush (✅ HIT)
- **Ground Truth**: bedroom, cabinet
- **Clingo Deduced**: sink, bedroom, closet, garage, library
- **LLM Extracted Features**:
  - Roles: HygieneToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Fragile

### fridge (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, bedroom, garage, library, fridge, pantry
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: Electronic, Heavy

### tv (✅ HIT)
- **Ground Truth**: bedroom, living_room, kitchen
- **Clingo Deduced**: bedroom, garage, bathroom, closet, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### sponge (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, kitchen, home_office, hallway, garage, storage_room, closet, dining_room, pantry, living_room, bathroom
- **Clingo Deduced**: bathroom, cabinet, drawer, garage, library, sink, bedroom, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight

### sponge dish (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, storage_room, hallway, closet, living_room, bedroom, home_office, kitchen, pantry, bathroom, garage
- **Clingo Deduced**: bathroom, drawer, kitchen, living_room, storage_room, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight

### string lights (✅ HIT)
- **Ground Truth**: hallway, bedroom, living_room, closet, bathroom, dining_room, home_office, storage_room, kitchen, laundry_room, pantry, garage
- **Clingo Deduced**: bedroom, living_room, library, storage_room, garage, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: LightingRole

### sidetable (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, kitchen, closet, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### pot (✅ HIT)
- **Ground Truth**: kitchen, drawer
- **Clingo Deduced**: kitchen, living_room, garage, bathroom, garden, drawer, library, pantry, bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy, Rigid, HasContainer

### desk caddy (✅ HIT)
- **Ground Truth**: garage, living_room, pantry, storage_room, home_office, bedroom, dining_room, laundry_room, kitchen, closet, bathroom, hallway
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, HasContainer

### photocopier (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: garage, library, bedroom, closet, fridge, home_office, storage_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### drink coaster (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, home_office, closet, bathroom, pantry, hallway, bedroom, living_room, garage, storage_room, kitchen
- **Clingo Deduced**: bedroom, drawer, bed, closet, storage_room, garage, kitchen, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### statue (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: living_room, bedroom, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### diningtable (✅ HIT)
- **Ground Truth**: kitchen, living_room
- **Clingo Deduced**: kitchen, bedroom, garden, storage_room, closet, garage, hallway, library, living_room, bathroom, dining_room, shelf, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Heavy

### garbage (❌ MISS)
- **Ground Truth**: trash
- **Clingo Deduced**: storage_room, living_room, bathroom, bedroom, cabinet, closet, drawer, fridge, garage, garden, kitchen, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Fragile, Heavy

### saw (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garage, bedroom, kitchen, bathroom, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, HasTeeth

### cheese (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, bedroom, garden, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### oil (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, pantry, bedroom, bathroom, cabinet, library, drawer, garage, fridge, garden, living_room, shelf, storage_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### diary (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bed, drawer, table, library, fridge, shelf, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Perishable, Lightweight

### stoveburner (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, living_room, bedroom, bathroom, garage, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated

### folder (✅ HIT)
- **Ground Truth**: living_room, bathroom, pantry, bedroom, garage, kitchen, hallway, closet, laundry_room, dining_room, home_office, storage_room, shelf, cabinet
- **Clingo Deduced**: shelf, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: 

### letter holder (✅ HIT)
- **Ground Truth**: living_room, storage_room, laundry_room, home_office, kitchen, dining_room, closet, bedroom, hallway, pantry, garage, bathroom
- **Clingo Deduced**: library, bedroom, closet, garage, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Lightweight

### desklamp (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, table, drawer, garage, storage_room, fridge, hallway, kitchen, shelf
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, HasHeatElement

### thimble (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: shelf, drawer, kitchen, fridge, garage, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid, Fragile

### incontinence pads (✅ HIT)
- **Ground Truth**: bedroom, living_room, garage, hallway, laundry_room, closet, storage_room, bathroom, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: bedroom, bathroom, storage_room, library, kitchen, sink, bed, cabinet, closet, drawer, garage, garden, hallway, living_room, pantry, shelf, trash, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### plant container (✅ HIT)
- **Ground Truth**: laundry_room, storage_room, garage, bedroom, pantry, dining_room, living_room, home_office, hallway, closet, kitchen, bathroom
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer, Lightweight

### water bottle (✅ HIT)
- **Ground Truth**: living_room, bedroom, hallway, bathroom, closet, pantry, laundry_room, dining_room, home_office, garage, kitchen, storage_room
- **Clingo Deduced**: kitchen, bedroom, bathroom, fridge, garage, cabinet, pantry, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight, HasContainer

### potted meat can (✅ HIT)
- **Ground Truth**: living_room, bedroom, dining_room, hallway, laundry_room, storage_room, kitchen, home_office, pantry, garage, closet, bathroom
- **Clingo Deduced**: kitchen, pantry, bathroom, bedroom, closet, fridge, garage, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, HasContainer

### crowbar (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: garage, bedroom, kitchen, library, bathroom, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### pie (✅ HIT)
- **Ground Truth**: fridge, kitchen
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### heavy duty gloves (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, closet, laundry_room, living_room, kitchen, storage_room, hallway, pantry, dining_room, bathroom
- **Clingo Deduced**: bed, drawer, bathroom, storage_room, garage, closet, hallway, kitchen, library, bedroom, living_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Heavy, Soft_Deformable, Washable

### countertop (❌ MISS)
- **Ground Truth**: kitchen, bedroom, bathroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### dog chew toy (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, home_office, kitchen, bathroom, closet, dining_room, pantry, hallway, garage, storage_room
- **Clingo Deduced**: bed, drawer, storage_room, library, garage, shelf, bedroom, cabinet, closet, garden, living_room, playroom, kitchen, table
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable, Fragile

### trunk (✅ HIT)
- **Ground Truth**: storage_room, bedroom
- **Clingo Deduced**: closet, bedroom, bathroom, kitchen, garden, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### easter basket (✅ HIT)
- **Ground Truth**: laundry_room, living_room, bedroom, home_office, kitchen, storage_room, hallway, bathroom, garage, pantry, dining_room, closet
- **Clingo Deduced**: drawer, shelf, closet, kitchen, library, laundry_room, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### ball (✅ HIT)
- **Ground Truth**: closet, living_room
- **Clingo Deduced**: playroom, drawer, bed, garage, library, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Fragile

### phillips screwdriver (✅ HIT)
- **Ground Truth**: dining_room, kitchen, closet, bedroom, laundry_room, bathroom, hallway, garage, living_room, pantry, storage_room, home_office
- **Clingo Deduced**: drawer, shelf, closet, living_room, music_room, sink, storage_room, table, kitchen, bathroom, bedroom, fridge, garage, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight, IsRotary

### pill (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bathroom, cabinet, closet, garden, library, pantry, storage_room, trash, bedroom, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Perishable, Toxic_Hazardous

### undershirt (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### poster (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, living_room, library, shelf, pantry
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### door (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: bedroom, closet, bathroom, kitchen, garden, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### honey dipper (✅ HIT)
- **Ground Truth**: living_room, hallway, dining_room, bedroom, garage, bathroom, kitchen, storage_room, laundry_room, closet, home_office, pantry
- **Clingo Deduced**: kitchen, drawer, table, cabinet, garden, living_room, pantry, storage_room, bedroom, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, HasBlade

### spider (✅ HIT)
- **Ground Truth**: storage_room, closet, garden, bed, sink, bathroom
- **Clingo Deduced**: bedroom, bed, drawer, garage, library, cabinet, closet, storage_room, playroom, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Lightweight

### butterknife (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, drawer, bathroom, bed, closet, table, cabinet, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### parchment sheet (✅ HIT)
- **Ground Truth**: hallway, living_room, closet, pantry, dining_room, bedroom, laundry_room, kitchen, bathroom, home_office, storage_room, garage
- **Clingo Deduced**: table, library, bedroom, drawer, bed, fridge, home_office, shelf, storage_room, trash, closet, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid, Fragile

### winebottle (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: shelf, fridge, garden, bed, bedroom, closet, drawer, garage, kitchen, laundry_room, pantry, table, cabinet, dining_room, library, storage_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Liquid, Heavy, HasContainer

### rmal laminator (✅ HIT)
- **Ground Truth**: bedroom, hallway, living_room, closet, kitchen, home_office, dining_room, storage_room, garage, pantry, laundry_room, bathroom
- **Clingo Deduced**: garage, living_room, bedroom, bathroom, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### lime squeezer (✅ HIT)
- **Ground Truth**: bedroom, closet, bathroom, laundry_room, kitchen, home_office, hallway, living_room, pantry, garage, dining_room, storage_room
- **Clingo Deduced**: kitchen, drawer, shelf, fridge, bedroom, garage, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### bureau (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### skillet lid (✅ HIT)
- **Ground Truth**: living_room, laundry_room, pantry, garage, closet, bedroom, dining_room, bathroom, home_office, storage_room, hallway, kitchen
- **Clingo Deduced**: kitchen, drawer, cabinet, pantry, bedroom
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### apricot (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: pantry, fridge, bedroom, bathroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### orange (✅ HIT)
- **Ground Truth**: hallway, home_office, kitchen, garage, living_room, bedroom, laundry_room, dining_room, bathroom, closet, pantry, storage_room
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### tile (❌ MISS)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, living_room, library, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### duct tape (✅ HIT)
- **Ground Truth**: pantry, living_room, closet, garage, hallway, bathroom, dining_room, home_office, storage_room, bedroom, laundry_room, kitchen
- **Clingo Deduced**: drawer, storage_room, bathroom, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Adhesive, Flexible, Lightweight

### fire (✅ HIT)
- **Ground Truth**: storage_room, kitchen
- **Clingo Deduced**: living_room, bedroom, library, drawer, fridge, garden, home_office, pantry, storage_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: WasteDisposalTask
  - Qualities: Flammable

### slipper (✅ HIT)
- **Ground Truth**: bed, bedroom
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### ladle (✅ HIT)
- **Ground Truth**: kitchen, drawer
- **Clingo Deduced**: kitchen, drawer, bathroom, library, garage, sink, storage_room, trash, closet
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Liquid, Fragile, Rigid, HasBlade

### golf ball (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, pantry, dining_room, bedroom, storage_room, living_room, home_office, closet, bathroom, garage, hallway
- **Clingo Deduced**: playroom, garage, drawer, library, bed, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### pudding box (✅ HIT)
- **Ground Truth**: laundry_room, kitchen, closet, home_office, living_room, pantry, bathroom, bedroom, hallway, dining_room, garage, storage_room
- **Clingo Deduced**: kitchen, pantry, bathroom, bedroom, closet, fridge, garage, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, HasContainer

### puzzle game (✅ HIT)
- **Ground Truth**: laundry_room, pantry, home_office, bathroom, garage, living_room, storage_room, dining_room, hallway, bedroom, closet, kitchen
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### dress (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: closet, bed, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### skin moisturizer (✅ HIT)
- **Ground Truth**: bedroom, garage, laundry_room, hallway, pantry, closet, bathroom, home_office, living_room, kitchen, dining_room, storage_room
- **Clingo Deduced**: bedroom, bathroom, cabinet, sink, garage, garden, kitchen, library, storage_room, pantry, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Perishable, Washable

### foundation (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### fingerpaint (✅ HIT)
- **Ground Truth**: laundry_room, living_room, kitchen, hallway, closet, storage_room, bedroom, pantry, home_office, garage, bathroom, dining_room
- **Clingo Deduced**: table, drawer, closet, bed, garage
- **LLM Extracted Features**:
  - Roles: ArtSuppliesRole
  - Tasks: LeisureTask
  - Qualities: Liquid, Fragile, Lightweight

### toy basketball (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, pantry, living_room, home_office, kitchen, closet, hallway, dining_room, garage, bathroom, storage_room
- **Clingo Deduced**: bed, drawer, storage_room, garage, library, shelf, bedroom, cabinet, living_room, closet, playroom, garden, kitchen
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### egg (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, storage_room, bedroom, garden, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### shrimp (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### vodka (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### coaster (✅ HIT)
- **Ground Truth**: table, drawer
- **Clingo Deduced**: bedroom, drawer, storage_room, fridge, garden, closet, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Rigid, Fragile

### bookshelf (✅ HIT)
- **Ground Truth**: bedroom, library
- **Clingo Deduced**: home_office, closet, cabinet, fridge, garage, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### flat screwdriver (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, bedroom, garage, home_office, storage_room, hallway, bathroom, closet, pantry, living_room, dining_room
- **Clingo Deduced**: drawer, shelf, closet, living_room, music_room, sink, storage_room, table, kitchen, bathroom, bedroom, fridge, garage, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight, IsRotary

### scissors (✅ HIT)
- **Ground Truth**: laundry_room, pantry, kitchen, bedroom, living_room, closet, garage, hallway, dining_room, storage_room, home_office, bathroom, cabinet, table, drawer
- **Clingo Deduced**: drawer, pantry, closet, garage, living_room, bedroom, cabinet, fridge, storage_room, table, kitchen
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasBlade

### medicine (✅ HIT)
- **Ground Truth**: bedroom, closet, living_room, hallway, bathroom, garage, laundry_room, storage_room, kitchen, home_office, dining_room, pantry
- **Clingo Deduced**: bedroom, bathroom, pantry, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### freezer (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, garage, bedroom, library, fridge, pantry, dining_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: RequiresFreezing, Electronic, Heavy

### cabinet (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: shelf, dining_room, garden
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### blender jar (✅ HIT)
- **Ground Truth**: laundry_room, pantry, living_room, bathroom, garage, home_office, dining_room, hallway, kitchen, bedroom, storage_room, closet
- **Clingo Deduced**: kitchen, cabinet, shelf, fridge, bedroom, closet, pantry, bathroom
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular

### storage (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: shelf, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: 

### dish drainer (✅ HIT)
- **Ground Truth**: dining_room, bedroom, kitchen, closet, living_room, laundry_room, storage_room, home_office, bathroom, pantry, garage, hallway
- **Clingo Deduced**: kitchen, bathroom, storage_room, living_room, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Rigid, HasContainer

### newspaper (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: bed, library, drawer, kitchen, garden, table
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: ReadingTask
  - Qualities: Paper, Lightweight

### weight (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Heavy

### house (❌ MISS)
- **Ground Truth**: bedroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### cutlery (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: kitchen, drawer, bathroom, bed, closet, table, cabinet, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### painting (✅ HIT)
- **Ground Truth**: living_room, bedroom, bathroom
- **Clingo Deduced**: living_room, bedroom, library, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### chicken (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sinkbasin (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, living_room, closet, garage, garden, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### ingredient (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: pantry, fridge, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### calender (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: drawer, table, shelf, bed, fridge, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### drill (✅ HIT)
- **Ground Truth**: storage_room, cabinet
- **Clingo Deduced**: garage, storage_room, bedroom, bathroom, kitchen, library, drawer, living_room, fridge, table, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip

### linoleum (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: closet
- **LLM Extracted Features**:
  - Roles: FlooringMaterialRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### china (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: kitchen, sink, bathroom, trash, garage, closet
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### paperweight (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, garage, kitchen, garden, hallway, library, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### ottoman (✅ HIT)
- **Ground Truth**: living_room, storage_room
- **Clingo Deduced**: bedroom, living_room, library, closet, kitchen, storage_room, garden, bathroom, garage, hallway, table, dining_room, drawer, pantry, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### popsicle (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, pantry, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### stacking cups (✅ HIT)
- **Ground Truth**: closet, laundry_room, bathroom, living_room, home_office, pantry, kitchen, garage, bedroom, hallway, storage_room, dining_room
- **Clingo Deduced**: table, storage_room, closet, bedroom, garage, drawer, kitchen, pantry, trash, fridge, shelf, library, bed, garden, hallway, home_office, laundry_room, living_room, bathroom, cabinet, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid, HasContainer

### toy kitchen set (✅ HIT)
- **Ground Truth**: living_room, laundry_room, home_office, garage, pantry, hallway, kitchen, bedroom, storage_room, closet, bathroom, dining_room
- **Clingo Deduced**: playroom, bedroom, drawer, library, bed, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### garlic (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, pantry, storage_room, bathroom, library, fridge, garden, table, closet
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Fragile

### pesto (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### carrying case (✅ HIT)
- **Ground Truth**: home_office, laundry_room, storage_room, living_room, pantry, bedroom, hallway, kitchen, dining_room, garage, bathroom, closet
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, HasContainer

### safe (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, cabinet, closet
- **Clingo Deduced**: bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: SafetyEquipmentRole
  - Tasks: 
  - Qualities: Heavy

### salt (✅ HIT)
- **Ground Truth**: cabinet, shelf, table
- **Clingo Deduced**: pantry, storage_room, closet, garage, bedroom, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### coffeemaker (✅ HIT)
- **Ground Truth**: pantry, hallway, dining_room, storage_room, laundry_room, garage, bathroom, living_room, home_office, closet, bedroom, kitchen
- **Clingo Deduced**: garage, storage_room, living_room, bedroom, fridge, library
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### lightswitch (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### steak (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, pantry, storage_room, bathroom, library, fridge, garden, table, closet
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Fragile

### desktop (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, library, garage, fridge, closet, home_office, storage_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### mayonnaise (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### banana (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, storage_room, hallway, living_room, home_office, garage, closet, pantry, kitchen, dining_room, bathroom, fridge
- **Clingo Deduced**: kitchen, storage_room, garden, bedroom, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### carpeting (✅ HIT)
- **Ground Truth**: bed, bedroom
- **Clingo Deduced**: bedroom, closet, library, bathroom, garden, home_office, kitchen, living_room, shelf, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Fragile, Soft_Deformable

### skeleton (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, closet, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### toilet (❌ MISS)
- **Ground Truth**: bathroom, storage_room
- **Clingo Deduced**: bedroom, pantry, garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### tap (✅ HIT)
- **Ground Truth**: bathroom, sink
- **Clingo Deduced**: drawer, living_room, shelf, closet, music_room, sink, table, kitchen, bathroom, bedroom, fridge, garage, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid

### form (✅ HIT)
- **Ground Truth**: cabinet, table
- **Clingo Deduced**: kitchen, pantry, shelf, bedroom, fridge, bed, closet, drawer, garage, garden, hallway, laundry_room, living_room, table, bathroom, cabinet, dining_room, storage_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, HasContainer

### tool (❌ MISS)
- **Ground Truth**: storage_room, drawer
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### cellar (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: shelf, dining_room, garden
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### crayon (✅ HIT)
- **Ground Truth**: home_office, laundry_room, hallway, garage, living_room, storage_room, bathroom, kitchen, closet, pantry, bedroom, dining_room
- **Clingo Deduced**: bedroom, drawer, garage, kitchen, shelf, bed, fridge, library, playroom, table, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Fragile

### can opener (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, dining_room, living_room, kitchen, hallway, garage, home_office, pantry, bathroom, storage_room, closet
- **Clingo Deduced**: kitchen, drawer, garage, fridge, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasBlade

### drawer (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom, cabinet, table, fridge
- **Clingo Deduced**: shelf, dining_room, garden
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### wallet (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, closet, garage, library, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid

### basil (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### tabletopdecor (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: living_room, bedroom, library, shelf, pantry
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### television (✅ HIT)
- **Ground Truth**: living_room, bedroom, cabinet
- **Clingo Deduced**: bedroom, garage, bathroom, closet, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### pea (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### bathtub (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bathroom, bedroom, garden, kitchen, library, closet, garage, hallway, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: HygieneTask
  - Qualities: Heavy, Rigid

### cosmetic (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, cabinet, drawer, kitchen, garden, library, living_room, pantry, shelf, storage_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Lightweight, Soft_Deformable

### toothbrush pack (✅ HIT)
- **Ground Truth**: living_room, kitchen, hallway, dining_room, closet, bathroom, bedroom, storage_room, pantry, garage, laundry_room, home_office
- **Clingo Deduced**: bathroom, cabinet, sink, garage, library, bedroom, closet, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Fragile

### helmet (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, storage_room, pantry, dining_room, closet, hallway, bedroom, garage, home_office, kitchen
- **Clingo Deduced**: kitchen, bathroom
- **LLM Extracted Features**:
  - Roles: SafetyEquipmentRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### labeling tape (✅ HIT)
- **Ground Truth**: laundry_room, storage_room, garage, bedroom, pantry, dining_room, living_room, home_office, hallway, closet, kitchen, bathroom
- **Clingo Deduced**: drawer, storage_room, library, bathroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Adhesive, Flexible, Lightweight

### mailbox (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: cabinet, closet, home_office, garage, fridge, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### towel (✅ HIT)
- **Ground Truth**: bathroom, living_room, garage, hallway, laundry_room, bedroom, home_office, pantry, closet, storage_room, dining_room, kitchen
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### coffee beans (✅ HIT)
- **Ground Truth**: living_room, closet, bedroom, hallway, home_office, storage_room, bathroom, kitchen, laundry_room, garage, dining_room, pantry
- **Clingo Deduced**: kitchen, pantry, cabinet, fridge, bathroom, shelf, storage_room, bedroom, closet, garden, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Granular

### damper (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: drawer, table, storage_room, bathroom, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Soft_Deformable

### cup (✅ HIT)
- **Ground Truth**: kitchen, closet, storage_room, living_room, home_office, bathroom, bedroom, garage, laundry_room, hallway, pantry, dining_room, table, sink, shelf
- **Clingo Deduced**: bedroom, cabinet, drawer, bathroom, library, garden, kitchen, pantry, shelf, sink, storage_room
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, HasContainer

### organiser (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, library, garage, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid

### snack dispenser (✅ HIT)
- **Ground Truth**: bathroom, living_room, storage_room, kitchen, dining_room, bedroom, hallway, garage, laundry_room, home_office, pantry, closet
- **Clingo Deduced**: kitchen, fridge, bedroom, garage, library, pantry
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: Electronic, Heavy

### bug (✅ HIT)
- **Ground Truth**: garden, storage_room
- **Clingo Deduced**: bedroom, bed, drawer, cabinet, garage, garden, library, shelf, storage_room, table, closet, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile

### cabbage (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### lettuce (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, shelf, pantry, bathroom, bedroom, storage_room, cabinet, garden, library, closet, drawer, fridge, garage, living_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### candle (✅ HIT)
- **Ground Truth**: living_room, bathroom, bedroom, cabinet, drawer, kitchen, shelf, table
- **Clingo Deduced**: table, drawer, bed, garage, fridge, bedroom, closet, hallway, home_office, kitchen, shelf, storage_room, trash
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Liquid, Fragile, Flammable

### broom (✅ HIT)
- **Ground Truth**: cabinet, closet
- **Clingo Deduced**: kitchen, closet, drawer, bathroom, garden, living_room, storage_room, bedroom, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Fragile, Soft_Deformable

### lunch bag (✅ HIT)
- **Ground Truth**: living_room, bathroom, kitchen, hallway, bedroom, laundry_room, storage_room, pantry, closet, dining_room, home_office, garage
- **Clingo Deduced**: kitchen, bedroom, cabinet, garage, bathroom, fridge, pantry, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, HasContainer

### ruler (✅ HIT)
- **Ground Truth**: table, drawer, cabinet
- **Clingo Deduced**: drawer, shelf, closet, living_room, music_room, sink, table, kitchen, bathroom, bedroom, fridge, garage, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight

### liquor (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### showercurtain (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: closet, living_room, storage_room, garage, library, garden, shelf, bed, bedroom, drawer, hallway, kitchen, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### dietary supplement (✅ HIT)
- **Ground Truth**: bedroom, living_room, closet, kitchen, laundry_room, pantry, home_office, garage, hallway, bathroom, storage_room, dining_room
- **Clingo Deduced**: pantry, fridge, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### journal (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: library, bed, storage_room, drawer, table, fridge, shelf, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid, HasContainer

### saucer (✅ HIT)
- **Ground Truth**: kitchen, pantry, living_room, bedroom, garage, laundry_room, storage_room, closet, home_office, hallway, bathroom, dining_room, cabinet
- **Clingo Deduced**: kitchen, cabinet, bedroom, storage_room, garden, pantry, bathroom, shelf, sink, drawer, library, living_room, dining_room, garage, table, trash, closet
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Rigid, HasContainer

### mousepad (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, drawer, hallway, garage, garden, kitchen, laundry_room, living_room, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Soft_Deformable

### deck (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, living_room, garage, closet, garden, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### electric heater (✅ HIT)
- **Ground Truth**: storage_room, hallway, bedroom, home_office, garage, laundry_room, living_room, dining_room, pantry, closet, bathroom, kitchen
- **Clingo Deduced**: bedroom, living_room, storage_room, garage, fridge, hallway, kitchen, library
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Heated, Electronic, Heavy

### copyholder (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, library, garage, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid

### mold (✅ HIT)
- **Ground Truth**: storage_room, fridge
- **Clingo Deduced**: kitchen, cabinet, fridge, bathroom, library, closet, shelf, bedroom, garage, pantry
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Fragile, Granular

### duct (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Flexible, HasContainer

### lunch box (✅ HIT)
- **Ground Truth**: bathroom, dining_room, kitchen, laundry_room, living_room, hallway, bedroom, garage, pantry, home_office, closet, storage_room
- **Clingo Deduced**: kitchen, bedroom, cabinet, garage, bathroom, fridge, pantry, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, HasContainer

### magnet (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: garage, fridge, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### herring fillets (✅ HIT)
- **Ground Truth**: bedroom, closet, storage_room, kitchen, living_room, garage, pantry, laundry_room, hallway, home_office, dining_room, bathroom
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### papertowelroll (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bathroom, kitchen, drawer, bed, hallway, living_room, storage_room, bedroom, closet, garden, laundry_room, library, pantry, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### jewelry box (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, pantry, hallway, laundry_room, storage_room, living_room, kitchen, bathroom, dining_room, closet
- **Clingo Deduced**: cabinet, closet, garage, fridge, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### loaf (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### bread (✅ HIT)
- **Ground Truth**: kitchen, pantry, fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### lame (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garage, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Fragile

### lunch (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: fridge, pantry, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### android figure (✅ HIT)
- **Ground Truth**: dining_room, hallway, garage, laundry_room, bedroom, pantry, home_office, kitchen, living_room, storage_room, bathroom, closet
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### bleach cleanser (✅ HIT)
- **Ground Truth**: laundry_room, kitchen, closet, home_office, living_room, pantry, bathroom, bedroom, hallway, dining_room, garage, storage_room
- **Clingo Deduced**: bathroom, cabinet, sink, library, garden, garage, home_office, bedroom, pantry, shelf
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Toxic_Hazardous, Liquid

### storehouse (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: shelf, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: 

### tofu (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### dictionary (✅ HIT)
- **Ground Truth**: library, shelf, table
- **Clingo Deduced**: table, drawer, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight

### racquetball (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, bathroom, living_room, storage_room, hallway, kitchen, garage, home_office, pantry, closet, dining_room
- **Clingo Deduced**: playroom, drawer, garage, library, bed, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### firearm (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: pantry, storage_room, garage, kitchen, table, bathroom, bedroom, drawer, library, closet, living_room, cabinet, fridge, shelf
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade, Sharp, Toxic_Hazardous

### paint maker (✅ HIT)
- **Ground Truth**: living_room, storage_room, garage, hallway, laundry_room, bedroom, home_office, bathroom, closet, dining_room, kitchen, pantry
- **Clingo Deduced**: storage_room, garage, kitchen, garden, library, home_office, pantry, sink, trash, bathroom, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Toxic_Hazardous

### soapbar (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bathroom, cabinet, sink, library, garden, garage, home_office, bedroom, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Fragile, Liquid, Toxic_Hazardous

### utensil (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: 

### vase (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, home_office, garage, pantry, storage_room, bathroom, laundry_room, hallway, closet, dining_room, cabinet, shelf, table
- **Clingo Deduced**: living_room, bedroom, library, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### crate (❌ MISS)
- **Ground Truth**: kitchen, living_room
- **Clingo Deduced**: shelf, dining_room, garden
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### storage bin (✅ HIT)
- **Ground Truth**: storage_room, bathroom, home_office, laundry_room, closet, dining_room, living_room, hallway, garage, pantry, bedroom, kitchen
- **Clingo Deduced**: cabinet, closet, garage, fridge, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### ink cartridge (✅ HIT)
- **Ground Truth**: dining_room, storage_room, living_room, hallway, bathroom, bedroom, home_office, kitchen, garage, pantry, laundry_room, closet
- **Clingo Deduced**: storage_room, kitchen
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: PrintingTask
  - Qualities: Liquid, Electronic, Heavy

### lamp (✅ HIT)
- **Ground Truth**: bedroom, living_room, bathroom, closet, garage, hallway, laundry_room, kitchen, dining_room, storage_room, home_office, pantry, table, shelf
- **Clingo Deduced**: bedroom, table, drawer, garage, storage_room, fridge, hallway, kitchen, shelf
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### laundryhamper (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: closet, garage, cabinet, garden, fridge, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### toy airplane (✅ HIT)
- **Ground Truth**: dining_room, bedroom, living_room, bathroom, hallway, kitchen, laundry_room, home_office, closet, storage_room, pantry, garage
- **Clingo Deduced**: playroom, bedroom, bed, drawer, library, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### ramekin (✅ HIT)
- **Ground Truth**: hallway, closet, living_room, pantry, bedroom, laundry_room, dining_room, kitchen, storage_room, bathroom, home_office, garage
- **Clingo Deduced**: kitchen, cabinet, drawer, bathroom
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular

### magazine (✅ HIT)
- **Ground Truth**: bed, library, table, hallway
- **Clingo Deduced**: bed, home_office, library, closet, drawer, garden, table, bedroom, garage, living_room, shelf, storage_room, trash, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile

### baseball (✅ HIT)
- **Ground Truth**: pantry, dining_room, living_room, hallway, laundry_room, kitchen, bedroom, bathroom, closet, garage, home_office, storage_room
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, library, garage, garden, playroom, shelf, storage_room, table, closet, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Rigid

### moistener (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bathroom, cabinet, sink, garage, garden, library, bedroom, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid

### nine hole peg test (✅ HIT)
- **Ground Truth**: garage, living_room, storage_room, kitchen, home_office, pantry, bedroom, closet, bathroom, dining_room, hallway, laundry_room
- **Clingo Deduced**: shelf, drawer, closet, living_room, music_room, sink, table, kitchen, bathroom, bedroom, fridge, garage, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid

### saltshaker (✅ HIT)
- **Ground Truth**: kitchen, cabinet
- **Clingo Deduced**: kitchen, cabinet, drawer, bathroom, bedroom
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### laptop (✅ HIT)
- **Ground Truth**: living_room, bedroom, hallway, garage, closet, pantry, laundry_room, kitchen, home_office, dining_room, storage_room, bathroom, table
- **Clingo Deduced**: bedroom, library, garage, fridge, closet, home_office, storage_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### waffle (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### pillow (✅ HIT)
- **Ground Truth**: bedroom, living_room, hallway, pantry, kitchen, garage, home_office, laundry_room, dining_room, bathroom, closet, storage_room
- **Clingo Deduced**: bedroom, closet, drawer, cabinet, kitchen, storage_room
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight

### container (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, closet, shelf, bed, fridge, drawer, garage, garden, kitchen, laundry_room, pantry, table, cabinet, dining_room, storage_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer

### rice (✅ HIT)
- **Ground Truth**: pantry, fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### lid (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: kitchen, drawer, cabinet, storage_room, sink, table, garden, living_room, pantry, bedroom, shelf
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, HasContainer

### skillet (✅ HIT)
- **Ground Truth**: hallway, home_office, kitchen, garage, living_room, bedroom, laundry_room, dining_room, bathroom, closet, pantry, storage_room
- **Clingo Deduced**: kitchen, living_room, garage, bathroom, garden, drawer, pantry, bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid, Heavy

### weight loss guide (✅ HIT)
- **Ground Truth**: living_room, closet, bedroom, hallway, home_office, storage_room, bathroom, kitchen, laundry_room, garage, dining_room, pantry
- **Clingo Deduced**: bed, table, drawer, shelf, fridge, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### board game (✅ HIT)
- **Ground Truth**: closet, bedroom, storage_room, home_office, laundry_room, hallway, bathroom, pantry, garage, dining_room, kitchen, living_room
- **Clingo Deduced**: bedroom, cabinet, drawer, bed, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### holdall (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, drawer, storage_room, garage, kitchen, home_office, closet, dining_room, laundry_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Soft_Deformable

### napkin (✅ HIT)
- **Ground Truth**: table, cabinet
- **Clingo Deduced**: bedroom, drawer, bed, bathroom, pantry, cabinet, garden, hallway, table
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### tvstand (✅ HIT)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### teddybear (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bed, drawer, library, storage_room, garage, shelf, bedroom, cabinet, living_room, closet, playroom, garden, kitchen
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### stuffed toy (✅ HIT)
- **Ground Truth**: bedroom, garage, laundry_room, dining_room, bathroom, living_room, hallway, closet, kitchen, pantry, storage_room, home_office
- **Clingo Deduced**: bed, drawer, storage_room, library, garage, shelf, bedroom, cabinet, living_room, closet, playroom, garden, kitchen
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### hair straightener (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, kitchen, bathroom, living_room, storage_room, garage, pantry, bedroom, hallway, closet, home_office
- **Clingo Deduced**: bedroom, bathroom, garage, living_room, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, HasHeatElement

### laxative (✅ HIT)
- **Ground Truth**: bedroom, closet, bathroom, laundry_room, kitchen, home_office, hallway, living_room, pantry, garage, dining_room, storage_room
- **Clingo Deduced**: bathroom, pantry, shelf, bedroom, closet, fridge, garage, kitchen, storage_room, garden, library, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Toxic_Hazardous

### pen (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: drawer, shelf, kitchen, closet, fridge, garage, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### pad (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### dishtowel (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, pantry, living_room, hallway, garage, dining_room, storage_room, closet, bathroom, home_office, kitchen, drawer
- **Clingo Deduced**: bed, cabinet, bathroom, sink, garage, drawer, hallway, kitchen, library, storage_room, bedroom, pantry, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### tennis ball (✅ HIT)
- **Ground Truth**: closet, living_room, hallway, dining_room, home_office, kitchen, bedroom, pantry, laundry_room, bathroom, garage, storage_room
- **Clingo Deduced**: playroom, drawer, garage, library, bed, bedroom, cabinet, closet, storage_room, garden, shelf, table, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### joist (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garage, closet, bedroom, kitchen, garden, hallway, library, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### toy vehicle (✅ HIT)
- **Ground Truth**: laundry_room, living_room, kitchen, hallway, closet, storage_room, bedroom, pantry, home_office, garage, bathroom, dining_room
- **Clingo Deduced**: playroom, bedroom, bed, drawer, library, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### soap dispenser (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, storage_room, hallway, closet, living_room, bedroom, home_office, kitchen, pantry, bathroom, garage
- **Clingo Deduced**: bathroom, sink, cabinet, garage, library, bedroom, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Electronic, Lightweight

### coffeetable (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: kitchen, bedroom, closet, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### diaper pack (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, bathroom, closet, pantry, hallway, garage, dining_room, home_office, kitchen, storage_room
- **Clingo Deduced**: bedroom, bed, cabinet, storage_room, living_room, drawer, garden, kitchen, library, pantry, shelf, trash, garage
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### photo (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: living_room, home_office, library, closet, garden, shelf, storage_room, drawer, kitchen, table
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: 

### casserole dish (✅ HIT)
- **Ground Truth**: living_room, bathroom, home_office, storage_room, bedroom, pantry, kitchen, hallway, laundry_room, garage, closet, dining_room
- **Clingo Deduced**: kitchen, drawer, living_room, library, garden, pantry, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy, HasContainer

### handtowel (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bathroom, cabinet, sink, bed, garage, drawer, hallway, kitchen, library, storage_room, bedroom, pantry, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### mit (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: 

### toy food (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bathroom, closet, hallway, storage_room, pantry, bedroom, living_room, kitchen, dining_room, garage
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### nintendo switch (✅ HIT)
- **Ground Truth**: living_room, bathroom, laundry_room, storage_room, kitchen, hallway, dining_room, home_office, garage, pantry, closet, bedroom
- **Clingo Deduced**: bedroom, cabinet, bed, drawer, garden, home_office, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### sugar sprinkles (✅ HIT)
- **Ground Truth**: living_room, bathroom, kitchen, hallway, bedroom, laundry_room, storage_room, pantry, closet, dining_room, home_office, garage
- **Clingo Deduced**: living_room, bedroom, closet, library, garage, storage_room, table, cabinet, fridge, pantry, bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular

### telephone (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, shelf, closet, music_room, drawer, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight

### gate (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: garden, bedroom, closet, kitchen, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### showerdoor (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, closet, garage, garden, kitchen, hallway, library, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### film (✅ HIT)
- **Ground Truth**: cabinet, drawer
- **Clingo Deduced**: living_room, home_office, library, closet, garden, shelf, storage_room, drawer, kitchen, table
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: Perishable

### adjustable wrench (✅ HIT)
- **Ground Truth**: living_room, laundry_room, kitchen, hallway, bathroom, closet, storage_room, home_office, bedroom, pantry, dining_room, garage
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsFlexible

### envelope (✅ HIT)
- **Ground Truth**: table, drawer, cabinet
- **Clingo Deduced**: bedroom, library, table, drawer, bed, fridge, home_office, shelf, storage_room, trash, closet, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile

### showerglass (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, living_room, closet, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile

### rolodex (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: home_office, shelf, bedroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight

### fitness tracker wristband (✅ HIT)
- **Ground Truth**: storage_room, bathroom, home_office, laundry_room, closet, dining_room, living_room, hallway, garage, pantry, bedroom, kitchen
- **Clingo Deduced**: bedroom, closet, shelf, drawer, music_room, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic

### surface saver ring (✅ HIT)
- **Ground Truth**: living_room, hallway, dining_room, bedroom, garage, bathroom, kitchen, storage_room, laundry_room, closet, home_office, pantry
- **Clingo Deduced**: bathroom, drawer, kitchen, living_room, storage_room, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Soft_Deformable

### hammer (✅ HIT)
- **Ground Truth**: closet, pantry, living_room, dining_room, bedroom, laundry_room, home_office, bathroom, hallway, garage, storage_room, kitchen
- **Clingo Deduced**: garage, bedroom, kitchen, bathroom, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### rag (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bathroom, closet, drawer, kitchen, garden, living_room, storage_room, bedroom, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Soft_Deformable, Fragile

### potpourri (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, living_room, closet, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Perishable, Fragile

### cereal (✅ HIT)
- **Ground Truth**: laundry_room, living_room, bedroom, home_office, kitchen, storage_room, hallway, bathroom, garage, pantry, dining_room, closet, cabinet, fridge, shelf
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### reference (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: drawer, table, kitchen, garden
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: 
  - Qualities: 

### bottle (✅ HIT)
- **Ground Truth**: kitchen, storage_room
- **Clingo Deduced**: bedroom, storage_room, garage, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: HasContainer, Lightweight

### antique (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, living_room, library, closet, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### radio (✅ HIT)
- **Ground Truth**: kitchen, bedroom
- **Clingo Deduced**: bedroom, garage, bathroom, closet, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### milk (✅ HIT)
- **Ground Truth**: fridge, kitchen
- **Clingo Deduced**: pantry, bedroom, bathroom, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### yoghurt (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### pit (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: kitchen, living_room, bedroom, closet, library, garden, pantry
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: WasteDisposalTask
  - Qualities: Fragile

### showerhead (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: shelf, drawer, closet, living_room, music_room, sink, table, kitchen, bathroom, bedroom, fridge, garage, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid, HasPointedTip

### furniture (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, closet, garage, kitchen, garden, hallway, library, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### blender (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, table, living_room, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy

### photograph (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: living_room, home_office, library, closet, garden, shelf, storage_room, drawer, kitchen, table
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: 

### glove (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, garage, living_room, storage_room, home_office, hallway, pantry, bedroom, closet, dining_room, kitchen, cabinet
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### reader (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: drawer, table, shelf, bed, fridge, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### tablet (✅ HIT)
- **Ground Truth**: storage_room, garage, living_room, closet, laundry_room, bedroom, dining_room, home_office, kitchen, hallway, pantry, bathroom
- **Clingo Deduced**: bedroom, drawer, bed, library, cabinet, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### plumbing (✅ HIT)
- **Ground Truth**: bathroom, kitchen
- **Clingo Deduced**: garage, bathroom, kitchen, bedroom, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### trowel (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: garage, kitchen, bathroom, bedroom, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### garbagecan (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: garage, kitchen, closet, trash, bedroom, cabinet, drawer, fridge, garden, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### tie (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Rigid, Soft_Deformable

### potato (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### clamp (✅ HIT)
- **Ground Truth**: living_room, garage, hallway, bedroom, pantry, bathroom, laundry_room, home_office, dining_room, storage_room, kitchen, closet
- **Clingo Deduced**: garage, bedroom, library, bathroom, kitchen, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### umbrella (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, home_office, closet, bathroom, pantry, hallway, bedroom, living_room, garage, storage_room, kitchen
- **Clingo Deduced**: bedroom, closet, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, IsFlexible

### bundt pan (✅ HIT)
- **Ground Truth**: home_office, bedroom, pantry, laundry_room, garage, storage_room, living_room, kitchen, dining_room, closet, hallway, bathroom
- **Clingo Deduced**: kitchen, drawer, pantry, garden, living_room, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy

### salad (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: fridge, pantry, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### paper (✅ HIT)
- **Ground Truth**: drawer, table
- **Clingo Deduced**: library, bedroom, closet, kitchen, garden, drawer, storage_room, trash, bed, cabinet, garage, living_room, pantry, shelf, table, fridge, home_office
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: LeisureTask
  - Qualities: Flammable, Lightweight, Fragile

### flashlight (✅ HIT)
- **Ground Truth**: pantry, living_room, bedroom, hallway, dining_room, home_office, closet, laundry_room, bathroom, kitchen, garage, storage_room
- **Clingo Deduced**: bedroom, living_room, table, shelf, drawer, library, playroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### beauty pack (✅ HIT)
- **Ground Truth**: bedroom, storage_room, living_room, laundry_room, hallway, home_office, pantry, kitchen, bathroom, dining_room, garage, closet
- **Clingo Deduced**: bedroom, bathroom, cabinet, storage_room, library, closet, drawer, garage, garden, kitchen, living_room, pantry, shelf, sink, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable

### bra (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### mess (✅ HIT)
- **Ground Truth**: closet, table
- **Clingo Deduced**: kitchen, bathroom, living_room, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: 

### milk fror (✅ HIT)
- **Ground Truth**: living_room, pantry, storage_room, bedroom, garage, closet, bathroom, laundry_room, home_office, kitchen, hallway, dining_room
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### vegetable (✅ HIT)
- **Ground Truth**: fridge, garden
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### wastebasket (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: kitchen, closet, bedroom, garage, trash, cabinet, drawer, fridge, garden, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### shed (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: garage, home_office, closet, cabinet, fridge, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### guard (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, living_room, garage, closet, garden, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### flour (✅ HIT)
- **Ground Truth**: cabinet, kitchen, pantry
- **Clingo Deduced**: kitchen, cabinet, shelf, fridge, bedroom, pantry, closet, garden, library, living_room, storage_room, trash, bathroom
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### shoe (✅ HIT)
- **Ground Truth**: closet, bathroom, laundry_room, bedroom, hallway, living_room, storage_room, dining_room, home_office, garage, pantry, kitchen, bed, table
- **Clingo Deduced**: bedroom, living_room, bed, storage_room, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Rigid

### dumbbell rack (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, storage_room, hallway, living_room, home_office, garage, closet, pantry, kitchen, dining_room, bathroom
- **Clingo Deduced**: garage, home_office, closet, cabinet, fridge, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### vent (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, garage, fridge
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### sideboard (✅ HIT)
- **Ground Truth**: dining_room, kitchen
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### box (✅ HIT)
- **Ground Truth**: living_room, bedroom, home_office, closet, storage_room, laundry_room, hallway, kitchen, pantry, dining_room, bathroom, garage
- **Clingo Deduced**: cabinet, closet, fridge, garage, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### top (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, closet, kitchen, garage, garden, hallway, library, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### cinnamon (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### floor (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### tablet holder (✅ HIT)
- **Ground Truth**: bedroom, closet, storage_room, kitchen, living_room, garage, pantry, laundry_room, hallway, home_office, dining_room, bathroom
- **Clingo Deduced**: bedroom, hallway, storage_room, garage, garden, kitchen, living_room, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### pressure cooker (✅ HIT)
- **Ground Truth**: hallway, laundry_room, closet, storage_room, living_room, bathroom, pantry, kitchen, bedroom, garage, dining_room, home_office
- **Clingo Deduced**: kitchen, garage, living_room, bathroom, garden, drawer, pantry, bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, Heated

### picture frame (✅ HIT)
- **Ground Truth**: living_room, laundry_room, storage_room, bedroom, hallway, garage, kitchen, dining_room, home_office, pantry, bathroom, closet
- **Clingo Deduced**: bedroom, storage_room, drawer, fridge, garden, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### cooler (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, kitchen, garage, fridge, library, pantry
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: RequiresCooling, Heavy, Electronic

### hair conditioner (✅ HIT)
- **Ground Truth**: home_office, bedroom, laundry_room, hallway, closet, pantry, bathroom, garage, storage_room, living_room, kitchen, dining_room
- **Clingo Deduced**: bathroom, cabinet, bedroom, sink, garage, garden, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Perishable

### lasagna (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### laptop cover (✅ HIT)
- **Ground Truth**: hallway, bedroom, pantry, living_room, kitchen, garage, home_office, laundry_room, dining_room, bathroom, closet, storage_room
- **Clingo Deduced**: drawer, shelf, closet, library, kitchen, laundry_room, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### tank (✅ HIT)
- **Ground Truth**: storage_room, living_room
- **Clingo Deduced**: garage, home_office, closet, cabinet, fridge, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### thumbtack (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: drawer, garage, pantry, closet, living_room, bedroom, cabinet, fridge, storage_room, table, kitchen
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid, HasPointedTip

### shelf (✅ HIT)
- **Ground Truth**: bedroom, bathroom, kitchen, living_room, cabinet, closet, fridge, library
- **Clingo Deduced**: cabinet, closet, home_office, fridge, garage, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### coffeemachine (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: garage, storage_room, living_room, bedroom, fridge, library
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### skin care product (✅ HIT)
- **Ground Truth**: closet, hallway, pantry, bedroom, laundry_room, bathroom, living_room, storage_room, kitchen, dining_room, home_office, garage
- **Clingo Deduced**: bathroom, cabinet, sink, library, garden, garage, home_office, kitchen, storage_room, bedroom, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Toxic_Hazardous, Washable

### morboard (✅ HIT)
- **Ground Truth**: living_room, laundry_room, dining_room, pantry, closet, hallway, garage, home_office, storage_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### wardrobe (✅ HIT)
- **Ground Truth**: bedroom, closet
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### contraceptive (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: kitchen, closet, cabinet, storage_room, library, trash, bathroom, bedroom, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Fragile, Toxic_Hazardous

### houseplant (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: living_room, shelf, library, storage_room, drawer, fridge, garage, garden, kitchen, bedroom, pantry
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Perishable, Lightweight, Soft_Deformable

### rose (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: garden, kitchen, storage_room, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### doughnut (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### restroom (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: living_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, FurnitureRole
  - Tasks: 
  - Qualities: 

### balancing cactus (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, storage_room, pantry, dining_room, closet, hallway, bedroom, garage, home_office, kitchen
- **Clingo Deduced**: bed, cabinet, drawer, storage_room, garage, fridge, garden, table, bedroom, closet, kitchen, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Sharp, Fragile

### beer (✅ HIT)
- **Ground Truth**: fridge, shelf
- **Clingo Deduced**: bedroom, pantry, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### rug (✅ HIT)
- **Ground Truth**: bed, bedroom, table, living_room
- **Clingo Deduced**: living_room, bedroom, kitchen, storage_room, garden, garage, closet, library, table, dining_room, hallway, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### whale whistle (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, bedroom, bathroom, living_room, storage_room, pantry, hallway, kitchen, closet, home_office, garage
- **Clingo Deduced**: bedroom, library, bed, cabinet, drawer, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight

### tomato (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### outfit (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### blanket (✅ HIT)
- **Ground Truth**: bedroom, closet, drawer
- **Clingo Deduced**: bedroom, bed, living_room, closet, hallway, drawer, kitchen, storage_room, table
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Washable

### stool (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### table (✅ HIT)
- **Ground Truth**: kitchen, bedroom, living_room, dining_room, library, storage_room
- **Clingo Deduced**: bedroom, living_room, library, kitchen, garden, closet, garage, hallway, storage_room, bathroom, home_office, music_room, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy

### sachet (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: kitchen, pantry, bedroom, cabinet, library, storage_room, drawer, bathroom, garden, living_room, shelf, trash, closet
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, HasContainer

### strawberry (✅ HIT)
- **Ground Truth**: kitchen, hallway, bedroom, laundry_room, bathroom, living_room, home_office, closet, storage_room, dining_room, pantry, garage
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### keychain (❌ MISS)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: shelf, drawer, garage, kitchen, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### lemon (✅ HIT)
- **Ground Truth**: kitchen, pantry, bathroom, hallway, living_room, closet, bedroom, laundry_room, storage_room, garage, dining_room, home_office, fridge
- **Clingo Deduced**: kitchen, storage_room, bathroom, garden, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### armchair (✅ HIT)
- **Ground Truth**: living_room, bedroom, home_office
- **Clingo Deduced**: living_room, bedroom, closet, garage, garden, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### dressing (❌ MISS)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, living_room, storage_room, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: 

### toaster (✅ HIT)
- **Ground Truth**: kitchen, hallway, garage, closet, bedroom, pantry, bathroom, living_room, home_office, laundry_room, storage_room, dining_room
- **Clingo Deduced**: kitchen, bedroom, fridge, garage, living_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Electronic, Heavy

### comfort (✅ HIT)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, bed, library, closet
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: 

### cord (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, drawer, storage_room, bathroom, library, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, IsFlexible

### cake mix (✅ HIT)
- **Ground Truth**: pantry, home_office, hallway, kitchen, bathroom, dining_room, bedroom, living_room, laundry_room, garage, closet, storage_room
- **Clingo Deduced**: kitchen, pantry, cabinet, fridge, bathroom, shelf, storage_room, bedroom, closet, garden, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Granular

### garter (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### icecream (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, pantry, bathroom, bedroom, closet, fridge, garage, shelf, storage_room, garden, library, dining_room
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: RequiresFreezing, Perishable

### sandwich (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, bedroom, garden, bathroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### tea can pack (✅ HIT)
- **Ground Truth**: closet, garage, laundry_room, hallway, storage_room, bathroom, bedroom, living_room, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, HasContainer

### electronic adapter (✅ HIT)
- **Ground Truth**: dining_room, kitchen, closet, bedroom, laundry_room, bathroom, hallway, garage, living_room, pantry, storage_room, home_office
- **Clingo Deduced**: shelf, closet, drawer, bedroom, music_room, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight

### waste basket (✅ HIT)
- **Ground Truth**: living_room, laundry_room, home_office, garage, pantry, hallway, kitchen, bedroom, storage_room, closet, bathroom, dining_room
- **Clingo Deduced**: kitchen, closet, bedroom, garage, trash, cabinet, drawer, fridge, garden, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### mouse (✅ HIT)
- **Ground Truth**: kitchen, living_room, storage_room, bedroom, laundry_room, hallway, pantry, dining_room, garage, bathroom, closet, home_office, garden, table, trash, shelf
- **Clingo Deduced**: bedroom, kitchen, pantry, storage_room, garden, bathroom, drawer, living_room, cabinet, dining_room, garage, shelf, sink, table, trash, closet
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Rigid

### fish (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, bathroom, garden, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### video (✅ HIT)
- **Ground Truth**: drawer, cabinet
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### padlock (✅ HIT)
- **Ground Truth**: living_room, home_office, garage, pantry, storage_room, bathroom, laundry_room, kitchen, hallway, closet, bedroom, dining_room
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### closet (❌ MISS)
- **Ground Truth**: bedroom
- **Clingo Deduced**: shelf, dining_room, garden
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### neckwear (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: drawer, closet, bed, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### toy construction set (✅ HIT)
- **Ground Truth**: closet, pantry, living_room, hallway, laundry_room, bathroom, bedroom, dining_room, kitchen, storage_room, home_office, garage
- **Clingo Deduced**: playroom, bedroom, bed, drawer, library, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### pencil (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, drawer, shelf, cabinet
- **Clingo Deduced**: drawer, shelf, cabinet, kitchen, closet, fridge, garage, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid, Sharp

### tomato soup can (✅ HIT)
- **Ground Truth**: living_room, laundry_room, kitchen, hallway, bathroom, closet, storage_room, home_office, bedroom, pantry, dining_room, garage
- **Clingo Deduced**: kitchen, pantry, bedroom, garage, shelf, fridge, closet, storage_room, bathroom, table, cabinet, library, garden, trash, bed, drawer, laundry_room, dining_room
- **LLM Extracted Features**:
  - Roles: ConsumableRole, StorageContainerRole
  - Tasks: EatingDrinkingTask, StorageTask
  - Qualities: Perishable, Liquid, HasContainer

### spa (❌ MISS)
- **Ground Truth**: garden
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### stand mixer (✅ HIT)
- **Ground Truth**: bathroom, living_room, bedroom, garage, storage_room, laundry_room, kitchen, pantry, home_office, hallway, closet, dining_room
- **Clingo Deduced**: kitchen, garage, bedroom, living_room, fridge
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy

### thread (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: drawer, closet, garage, bathroom, library, storage_room, bedroom
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Fragile, IsFlexible

### lipstick (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, storage_room, hallway, kitchen, closet, bathroom, garage, dining_room, home_office, pantry, cabinet
- **Clingo Deduced**: bathroom, bedroom, kitchen, library, garage, pantry, fridge, garden, home_office, trash, closet, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Fragile, Toxic_Hazardous

### roomdecor (✅ HIT)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, living_room, library, shelf, pantry
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### usb drive (❌ MISS)
- **Ground Truth**: pantry, kitchen, bedroom, bathroom, hallway, dining_room, storage_room, garage, living_room, laundry_room, closet, home_office
- **Clingo Deduced**: drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Lightweight

### creditcard (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, cabinet, kitchen, library, garden, living_room, pantry, shelf, storage_room, trash, closet
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Lightweight, Electronic, Fragile

### centerpiece (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: living_room, bedroom, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### yarn (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, drawer, library, shelf, kitchen, living_room, playroom, storage_room, table, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable, IsFlexible

### snack cake (✅ HIT)
- **Ground Truth**: laundry_room, pantry, home_office, bathroom, garage, living_room, storage_room, dining_room, hallway, bedroom, closet, kitchen
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### hair dryer (✅ HIT)
- **Ground Truth**: dining_room, bedroom, laundry_room, living_room, hallway, storage_room, pantry, garage, kitchen, bathroom, home_office, closet
- **Clingo Deduced**: bedroom, bathroom, garage, closet, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy, HasHeatElement

### mirror (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, closet, living_room, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### suit (❌ MISS)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, storage_room, garage, bed, living_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Rigid, Lightweight

### camera (✅ HIT)
- **Ground Truth**: storage_room, hallway, bedroom, home_office, garage, laundry_room, living_room, dining_room, pantry, closet, bathroom, kitchen, drawer, cabinet
- **Clingo Deduced**: bedroom, drawer, bed, library, cabinet, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### perfume (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, bathroom, kitchen, library, garage, pantry, fridge, garden, home_office, trash, closet, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Fragile, Toxic_Hazardous

### jar (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, pantry, hallway, laundry_room, storage_room, living_room, kitchen, bathroom, dining_room, closet, cabinet, fridge, shelf
- **Clingo Deduced**: bedroom, table, drawer, fridge, garage, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer, Lightweight

### toy furniture set (✅ HIT)
- **Ground Truth**: hallway, garage, closet, kitchen, bedroom, pantry, bathroom, living_room, home_office, laundry_room, storage_room, dining_room
- **Clingo Deduced**: bedroom, bed, library, cabinet, drawer, garden, home_office, playroom, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, FurnitureRole

### belt (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### portable speaker (✅ HIT)
- **Ground Truth**: living_room, closet, garage, bedroom, dining_room, laundry_room, hallway, bathroom, pantry, storage_room, kitchen, home_office
- **Clingo Deduced**: bedroom, drawer, bed, library, cabinet, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### handbag (✅ HIT)
- **Ground Truth**: storage_room, bathroom, hallway, bedroom, living_room, dining_room, garage, closet, home_office, kitchen, laundry_room, pantry
- **Clingo Deduced**: drawer, closet, kitchen, library, shelf, laundry_room, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### paperclip (❌ MISS)
- **Ground Truth**: table, cabinet
- **Clingo Deduced**: shelf, drawer, garage, kitchen, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### bookcase (✅ HIT)
- **Ground Truth**: living_room, home_office
- **Clingo Deduced**: home_office, closet, cabinet, fridge, garage, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### blind (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, living_room, closet, garage, garden, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### shredder (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, pantry, dining_room, bedroom, storage_room, living_room, home_office, closet, bathroom, garage, hallway
- **Clingo Deduced**: garage, kitchen, bedroom, bathroom, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### lantern (✅ HIT)
- **Ground Truth**: kitchen, hallway, pantry, storage_room, garage, laundry_room, living_room, bathroom, closet, bedroom, dining_room, home_office
- **Clingo Deduced**: bedroom, table, storage_room, garage, drawer, fridge, hallway, kitchen, shelf
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### software cd (❌ MISS)
- **Ground Truth**: bedroom, bathroom, living_room, hallway, kitchen, laundry_room, garage, pantry, storage_room, home_office, dining_room, closet
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: 

### cooky (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: living_room, bedroom, closet, library, garage, storage_room, table, cabinet, fridge, pantry, bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular

### beanbag (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: living_room, library, storage_room, closet, garage, garden, shelf, bed, bedroom, drawer, hallway, kitchen, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### cookbook (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: table, library, drawer, bed, fridge, shelf, storage_room, garden, kitchen
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Lightweight

### dish (✅ HIT)
- **Ground Truth**: cabinet, kitchen, pantry, sink, table, shelf
- **Clingo Deduced**: kitchen, cabinet, drawer, bathroom
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular

### plum (✅ HIT)
- **Ground Truth**: living_room, dining_room, bedroom, storage_room, home_office, pantry, laundry_room, hallway, closet, bathroom, kitchen, garage, fridge
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### power drill (✅ HIT)
- **Ground Truth**: pantry, dining_room, living_room, hallway, laundry_room, kitchen, bedroom, bathroom, closet, garage, home_office, storage_room
- **Clingo Deduced**: garage, storage_room, bedroom, bathroom, kitchen, library, drawer, living_room, fridge, table, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, IsRotary, HasPointedTip

### soapbottle (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: sink, bathroom, cabinet, garage, library, garden, storage_room, bedroom, closet, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Lightweight, Fragile, Electronic, HasContainer

### row (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: drawer, storage_room, garage, library, bathroom, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Fragile

### dutch oven (✅ HIT)
- **Ground Truth**: living_room, bedroom, laundry_room, closet, hallway, garage, bathroom, storage_room, kitchen, dining_room, pantry, home_office
- **Clingo Deduced**: kitchen, living_room, garage, bedroom, bathroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### shelvingunit (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### stove (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: 
  - Qualities: Heated

### bar (✅ HIT)
- **Ground Truth**: hallway, storage_room
- **Clingo Deduced**: living_room, bedroom, garage, garden, closet, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### snail (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: garden, bed, storage_room, drawer, garage, living_room, bedroom, cabinet, kitchen, library, shelf, table, closet
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Soft_Deformable

### metronome (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, drawer, bed, library, cabinet, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### action figure (✅ HIT)
- **Ground Truth**: living_room, dining_room, laundry_room, storage_room, home_office, pantry, closet, hallway, kitchen, garage, bathroom, bedroom
- **Clingo Deduced**: bedroom, playroom, bed, drawer, library, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### dogbed (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: living_room, hallway, table, closet, drawer, bedroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight

### peach (✅ HIT)
- **Ground Truth**: living_room, storage_room, garage, bedroom, home_office, closet, bathroom, hallway, dining_room, pantry, kitchen, laundry_room
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sweater (✅ HIT)
- **Ground Truth**: drawer, closet
- **Clingo Deduced**: closet, drawer, garage, library, shelf, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### washcloth (✅ HIT)
- **Ground Truth**: bathroom, living_room, storage_room, kitchen, dining_room, bedroom, hallway, garage, laundry_room, home_office, pantry, closet
- **Clingo Deduced**: bed, bathroom, cabinet, sink, garage, drawer, hallway, kitchen, library, storage_room, bedroom, pantry, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### stapler (✅ HIT)
- **Ground Truth**: table, cabinet
- **Clingo Deduced**: garage, library, bedroom, bathroom, kitchen, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy, HasPointedTip

### light (❌ MISS)
- **Ground Truth**: storage_room, closet, table, fridge
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: LightingRole

### coffee pods (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, living_room, bedroom, home_office, hallway, kitchen, garage, pantry, bathroom, storage_room, closet
- **Clingo Deduced**: kitchen, pantry, shelf, bathroom, bedroom, storage_room, cabinet, garden, library, closet, drawer, fridge, garage, living_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### spraybottle (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: garden, bathroom, kitchen, garage, library, living_room, bedroom, closet, laundry_room, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Liquid, Gas_Aerosol, Lightweight

### dungeon (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### spatula (✅ HIT)
- **Ground Truth**: kitchen, closet, living_room, hallway, dining_room, home_office, bedroom, pantry, laundry_room, bathroom, garage, storage_room, drawer
- **Clingo Deduced**: kitchen, drawer, bathroom, bed, closet, table, cabinet, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Sharp, HasBlade

### tea (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, bathroom, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### aluminumfoil (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, drawer, cabinet, table, garden, living_room, pantry, storage_room, bedroom, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### tub (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: garage, closet, cabinet, fridge, garden, kitchen, library, pantry, storage_room, trash, bedroom, shelf, home_office, bed, drawer, hallway, laundry_room, living_room, table, bathroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, HasContainer

### dishwasher (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: garage, storage_room, living_room, bedroom, fridge, library
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### romaine (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, fridge, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### wine glass (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, pantry, bedroom, storage_room, garden, bathroom, drawer, living_room, cabinet, dining_room, garage, shelf, sink, table, trash, closet
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Rigid

### yogurt (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### vinyl tape (✅ HIT)
- **Ground Truth**: living_room, closet, hallway, laundry_room, home_office, kitchen, bedroom, storage_room, dining_room, garage, pantry, bathroom
- **Clingo Deduced**: bedroom, drawer, table, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Flexible, HasContainer

### toy (✅ HIT)
- **Ground Truth**: living_room, table, storage_room, bed, closet, drawer
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### computer (❌ MISS)
- **Ground Truth**: library, table
- **Clingo Deduced**: home_office
- **LLM Extracted Features**:
  - Roles: WorkStudyTask
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### armoire (✅ HIT)
- **Ground Truth**: bedroom, living_room
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### hedge (❌ MISS)
- **Ground Truth**: garden
- **Clingo Deduced**: garage, drawer, living_room, bedroom, fridge, closet
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Fragile

### shop (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### pepsi (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, bathroom, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### pet food supplement (✅ HIT)
- **Ground Truth**: hallway, bedroom, home_office, storage_room, living_room, laundry_room, pantry, dining_room, kitchen, closet, bathroom, garage
- **Clingo Deduced**: pantry, fridge, bedroom, bathroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### camper (✅ HIT)
- **Ground Truth**: bed
- **Clingo Deduced**: garage, living_room, bedroom, garden, closet, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### violin (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: music_room, table, garage
- **LLM Extracted Features**:
  - Roles: MusicalInstrumentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Electronic

### virtual reality viewer (✅ HIT)
- **Ground Truth**: hallway, laundry_room, closet, storage_room, living_room, bathroom, pantry, kitchen, bedroom, garage, dining_room, home_office
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### dinner (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: fridge, pantry, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### cola (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, garage, bathroom, bedroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### bowl (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, hallway, storage_room, dining_room, closet, home_office, pantry, laundry_room, bathroom, garage
- **Clingo Deduced**: shelf, fridge, closet, bed, bedroom, drawer, garage, garden, kitchen, laundry_room, pantry, table, cabinet, dining_room, storage_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer

### chocolate box (✅ HIT)
- **Ground Truth**: hallway, laundry_room, kitchen, dining_room, living_room, garage, bedroom, home_office, storage_room, bathroom, closet, pantry
- **Clingo Deduced**: kitchen, pantry, bedroom, bathroom, closet, fridge, garage, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, HasContainer

### socket (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### stamper (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasBlade

### cushion (✅ HIT)
- **Ground Truth**: kitchen, bedroom, closet, storage_room, garage, home_office, bathroom, dining_room, hallway, living_room, laundry_room, pantry
- **Clingo Deduced**: living_room, library, closet, storage_room, garage, garden, shelf, bed, bedroom, drawer, hallway, kitchen, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### toiletpaperhanger (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: drawer, shelf, closet, living_room, music_room, sink, table, kitchen, bathroom, bedroom, fridge, garage, library, storage_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid

### volume (❌ MISS)
- **Ground Truth**: shelf, library
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid

### plant (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, hallway, living_room, closet, dining_room, kitchen, pantry, bathroom, laundry_room, storage_room
- **Clingo Deduced**: garden, bedroom, pantry, bathroom, cabinet, drawer, kitchen, library, living_room, shelf, storage_room, trash, garage
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: GardeningTask
  - Qualities: Perishable, Lightweight, Soft_Deformable

### remote control (✅ HIT)
- **Ground Truth**: pantry, bathroom, dining_room, bedroom, laundry_room, home_office, storage_room, kitchen, closet, living_room, garage, hallway
- **Clingo Deduced**: bedroom, drawer, bed, library, cabinet, storage_room, closet, garage, playroom, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### invitation card (✅ HIT)
- **Ground Truth**: bedroom, hallway, garage, dining_room, pantry, kitchen, closet, laundry_room, home_office, living_room, storage_room, bathroom
- **Clingo Deduced**: home_office, living_room, garden, library, closet, shelf, storage_room, drawer, kitchen, table
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: 

### tampon (✅ HIT)
- **Ground Truth**: bedroom, storage_room, living_room, laundry_room, hallway, home_office, pantry, kitchen, bathroom, dining_room, garage, closet
- **Clingo Deduced**: bedroom, bathroom, library, cabinet, storage_room, trash, shelf, closet, drawer, garage, garden, kitchen, living_room, pantry, sink
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Toxic_Hazardous

### hard drive case (✅ HIT)
- **Ground Truth**: dining_room, bathroom, bedroom, living_room, hallway, storage_room, laundry_room, kitchen, pantry, home_office, garage, closet
- **Clingo Deduced**: home_office, cabinet, closet, fridge, garage, library, storage_room, trash, garden, hallway, kitchen, living_room, pantry, bathroom, bedroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Electronic, Heavy

### wood (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: garage, cabinet, bathroom, fridge, trash, kitchen
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Rigid, Granular

### jam (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### desk (✅ HIT)
- **Ground Truth**: living_room, bedroom, library, home_office
- **Clingo Deduced**: living_room, library, bedroom, kitchen, garden, closet, garage, hallway, storage_room, bathroom, home_office, music_room, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy

### scrubbrush (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: kitchen, bathroom, living_room, storage_room, garage, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### pillowcase (✅ HIT)
- **Ground Truth**: bed, bedroom
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### sparkling water (✅ HIT)
- **Ground Truth**: bedroom, hallway, garage, dining_room, pantry, kitchen, closet, laundry_room, home_office, living_room, storage_room, bathroom
- **Clingo Deduced**: pantry, bathroom, bedroom, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### fork (✅ HIT)
- **Ground Truth**: kitchen, hallway, pantry, storage_room, garage, laundry_room, living_room, bathroom, closet, bedroom, dining_room, home_office
- **Clingo Deduced**: table, kitchen, drawer, cabinet, bathroom, bed, closet, garden, living_room, pantry, storage_room, bedroom, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Sharp, Lightweight

### mascara (✅ HIT)
- **Ground Truth**: bedroom, bathroom, living_room, hallway, kitchen, laundry_room, garage, pantry, storage_room, home_office, dining_room, closet
- **Clingo Deduced**: bathroom, sink, bedroom, garage, library, closet
- **LLM Extracted Features**:
  - Roles: CosmeticToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Fragile, Lightweight

### footstool (✅ HIT)
- **Ground Truth**: bedroom, bathroom, table, living_room
- **Clingo Deduced**: bedroom, living_room, closet, garage, garden, kitchen, library, dining_room, hallway, storage_room, table, bathroom, bed, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### candelabra (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: living_room, bedroom, library, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### jenga (✅ HIT)
- **Ground Truth**: dining_room, bedroom, living_room, garage, kitchen, storage_room, home_office, closet, hallway, laundry_room, bathroom, pantry
- **Clingo Deduced**: bedroom, cabinet, library, drawer, bed, garden, playroom, shelf, storage_room, trash, bathroom, kitchen, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Granular

### plant saucer (✅ HIT)
- **Ground Truth**: living_room, storage_room, garage, hallway, laundry_room, bedroom, home_office, bathroom, closet, dining_room, kitchen, pantry
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, HasContainer

### master chef can (❌ MISS)
- **Ground Truth**: closet, living_room, bedroom, bathroom, dining_room, pantry, hallway, home_office, laundry_room, storage_room, kitchen, garage
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### whisk (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: kitchen, drawer, cabinet, table, garden, living_room, pantry, storage_room, bedroom, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, HasBlade

### gel (✅ HIT)
- **Ground Truth**: bathroom, fridge
- **Clingo Deduced**: pantry, bathroom, garage, bedroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### butter dish (✅ HIT)
- **Ground Truth**: bedroom, living_room, garage, hallway, laundry_room, closet, storage_room, bathroom, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: kitchen, dining_room, shelf, bathroom
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Granular

### microwave (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, garage, fridge
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: CookwareRole
  - Qualities: Electronic, Heavy

### fruit snack (✅ HIT)
- **Ground Truth**: living_room, kitchen, hallway, dining_room, closet, bathroom, bedroom, storage_room, pantry, garage, laundry_room, home_office
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### tissuebox (✅ HIT)
- **Ground Truth**: living_room, bedroom, bathroom
- **Clingo Deduced**: kitchen, laundry_room, closet, drawer, garage, trash, bedroom, garden, pantry
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WasteDisposalTask
  - Qualities: Lightweight, Soft_Deformable

### john (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: 
  - Qualities: 

### peppermint (✅ HIT)
- **Ground Truth**: home_office, laundry_room, kitchen, hallway, living_room, dining_room, storage_room, bedroom, closet, pantry, bathroom, garage
- **Clingo Deduced**: kitchen, storage_room, bathroom, garden, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sheet (✅ HIT)
- **Ground Truth**: bedroom, drawer
- **Clingo Deduced**: bedroom, closet, drawer, cabinet, kitchen, storage_room
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight

### donut (✅ HIT)
- **Ground Truth**: hallway, home_office, living_room, storage_room, garage, pantry, laundry_room, closet, dining_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### xylitol sweetener (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, closet, laundry_room, living_room, kitchen, storage_room, hallway, pantry, dining_room, bathroom
- **Clingo Deduced**: pantry, bedroom, closet, storage_room, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### table lamp (✅ HIT)
- **Ground Truth**: living_room, bedroom, hallway, bathroom, closet, pantry, laundry_room, dining_room, home_office, garage, kitchen, storage_room
- **Clingo Deduced**: bedroom, table, drawer, garage, storage_room, fridge, hallway, kitchen, shelf
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, HasHeatElement

### drink (✅ HIT)
- **Ground Truth**: cabinet, fridge
- **Clingo Deduced**: bedroom, pantry, bathroom, garage, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### canister (✅ HIT)
- **Ground Truth**: bedroom, hallway, living_room, closet, kitchen, home_office, dining_room, storage_room, garage, pantry, laundry_room, bathroom
- **Clingo Deduced**: shelf, fridge, garden, bedroom, bed, closet, drawer, garage, kitchen, laundry_room, pantry, table, cabinet, dining_room, library, storage_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: HasContainer, Heavy

### jean (✅ HIT)
- **Ground Truth**: bedroom, closet, drawer
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### food (✅ HIT)
- **Ground Truth**: cabinet, fridge, kitchen, pantry, shelf, table
- **Clingo Deduced**: fridge, pantry, bathroom, bedroom, closet, garage, kitchen, shelf, storage_room, garden, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### oven (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, garage, bedroom, living_room, bathroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated

### paste (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: living_room, bedroom, closet, library, garage, storage_room, table, cabinet, fridge, pantry, bathroom, kitchen
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular

### dollhouse toy (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, hallway, garage, home_office, dining_room, living_room, kitchen, bathroom, pantry, closet, storage_room
- **Clingo Deduced**: playroom, bedroom, bed, drawer, library, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### paper bag (✅ HIT)
- **Ground Truth**: pantry, bedroom, living_room, kitchen, storage_room, bathroom, dining_room, closet, hallway, garage, laundry_room, home_office
- **Clingo Deduced**: shelf, home_office, closet, bedroom, dining_room, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Fragile, Washable

### saute pan (✅ HIT)
- **Ground Truth**: garage, living_room, kitchen, dining_room, bedroom, pantry, laundry_room, bathroom, hallway, home_office, closet, storage_room
- **Clingo Deduced**: kitchen, drawer, living_room, garage, bathroom, pantry, bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid, HasContainer

### video game (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, living_room, pantry, hallway, storage_room, bathroom, kitchen, home_office, garage, closet, dining_room
- **Clingo Deduced**: bedroom, bed, cabinet, drawer, garden, library, shelf, storage_room, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### watch (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, library, drawer, bed, playroom, cabinet, storage_room, closet, garage, garden, shelf, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### cloth (✅ HIT)
- **Ground Truth**: bedroom, bathroom, storage_room, hallway, living_room, dining_room, garage, closet, home_office, kitchen, laundry_room, pantry
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### wateringcan (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: garage, table, bathroom, bedroom, drawer, kitchen, library, sink
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Heavy

### celery (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### laundry (✅ HIT)
- **Ground Truth**: storage_room, kitchen
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### gauze (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bed, bathroom, drawer, sink, garage, hallway, kitchen, library, storage_room, bedroom, table
- **LLM Extracted Features**:
  - Roles: HygieneToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### boot (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bed, garage, library, table, closet, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Rigid, Fragile

### candy (✅ HIT)
- **Ground Truth**: closet, laundry_room, bathroom, living_room, home_office, pantry, kitchen, garage, bedroom, hallway, storage_room, dining_room
- **Clingo Deduced**: kitchen, pantry, shelf, bedroom, bathroom, storage_room, cabinet, garden, library, closet, drawer, fridge, garage, living_room, trash
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### faucet (✅ HIT)
- **Ground Truth**: bathroom, kitchen, sink
- **Clingo Deduced**: bathroom, kitchen, sink, bedroom, library, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid

### toy fishing (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bedroom, closet, hallway, dining_room, garage, pantry, living_room, storage_room, bathroom, kitchen
- **Clingo Deduced**: bed, drawer, storage_room, garage, library, shelf, bedroom, cabinet, living_room, closet, playroom, garden, kitchen
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### pan (✅ HIT)
- **Ground Truth**: kitchen, pantry, bathroom, hallway, living_room, closet, bedroom, laundry_room, storage_room, garage, dining_room, home_office
- **Clingo Deduced**: kitchen, drawer, living_room, garage, bathroom, pantry, bedroom, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid, HasContainer

### lego duplo (✅ HIT)
- **Ground Truth**: laundry_room, living_room, hallway, dining_room, home_office, bedroom, garage, storage_room, pantry, closet, kitchen, bathroom
- **Clingo Deduced**: bed, drawer, bedroom, cabinet, library, storage_room, closet, garage, playroom, garden, shelf, bathroom, kitchen, living_room
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Granular, Lightweight

### thing (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: 
  - Tasks: 
  - Qualities: 

### cd (✅ HIT)
- **Ground Truth**: bedroom, cabinet, drawer
- **Clingo Deduced**: shelf, home_office, bedroom, dining_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight

### pencil case (✅ HIT)
- **Ground Truth**: closet, hallway, pantry, bedroom, laundry_room, bathroom, living_room, storage_room, kitchen, dining_room, home_office, garage
- **Clingo Deduced**: bedroom, table, drawer, garage, fridge, shelf, storage_room, bed, closet, garden, home_office, kitchen, laundry_room, pantry, cabinet, dining_room, trash
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, HasContainer

### coronet (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, drawer, storage_room, fridge, garden, library, living_room, pantry, shelf
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Rigid, HasPointedTip

### tablet stand (✅ HIT)
- **Ground Truth**: hallway, bedroom, home_office, storage_room, living_room, laundry_room, pantry, dining_room, kitchen, closet, bathroom, garage
- **Clingo Deduced**: shelf, drawer, closet, kitchen, fridge, garage, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### set-top box (✅ HIT)
- **Ground Truth**: living_room, bedroom, dining_room, hallway, laundry_room, storage_room, kitchen, home_office, pantry, garage, closet, bathroom
- **Clingo Deduced**: bedroom, garage, bathroom, closet, fridge, home_office, library, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### bookend (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, bathroom, closet, pantry, hallway, garage, dining_room, home_office, kitchen, storage_room, shelf, library
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### jacket (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### neck rest (✅ HIT)
- **Ground Truth**: living_room, kitchen, pantry, closet, laundry_room, hallway, bedroom, garage, dining_room, storage_room, bathroom, home_office
- **Clingo Deduced**: living_room, library, closet, storage_room, garage, garden, shelf, bed, bedroom, drawer, hallway, kitchen, table
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### paint bottle set (✅ HIT)
- **Ground Truth**: bathroom, storage_room, hallway, bedroom, pantry, laundry_room, home_office, dining_room, living_room, closet, kitchen, garage
- **Clingo Deduced**: garage, kitchen, sink, library
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Heavy

### clay (✅ HIT)
- **Ground Truth**: kitchen, living_room, garage, bedroom, dining_room, laundry_room, home_office, hallway, bathroom, pantry, storage_room, closet
- **Clingo Deduced**: kitchen, shelf, cabinet, bedroom, fridge, closet, pantry, bathroom
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular

### peppershaker (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: drawer, cabinet, bedroom, bathroom, garage, garden, kitchen, pantry, trash, closet
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile

### chocolate milk pods (✅ HIT)
- **Ground Truth**: hallway, laundry_room, kitchen, dining_room, living_room, garage, bedroom, home_office, storage_room, bathroom, closet, pantry
- **Clingo Deduced**: pantry, bedroom, garage, bathroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### wireless accessory (✅ HIT)
- **Ground Truth**: bathroom, living_room, garage, closet, pantry, bedroom, hallway, kitchen, storage_room, laundry_room, dining_room, home_office
- **Clingo Deduced**: bedroom, closet, shelf, drawer, music_room, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight

### mouse pad (✅ HIT)
- **Ground Truth**: home_office, pantry, hallway, laundry_room, living_room, closet, bedroom, bathroom, storage_room, kitchen, garage, dining_room
- **Clingo Deduced**: bedroom, drawer, garage, garden, hallway, kitchen, laundry_room, living_room, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Soft_Deformable

### frame (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### dishsponge (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: kitchen, bathroom, drawer, storage_room, living_room, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight

### voltmeter (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: storage_room, bedroom, drawer, library, bathroom, garage, living_room
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Lightweight

### multiport hub (✅ HIT)
- **Ground Truth**: living_room, bathroom, closet, garage, hallway, laundry_room, kitchen, dining_room, bedroom, storage_room, home_office, pantry
- **Clingo Deduced**: garage, living_room, bedroom, bathroom, library, storage_room, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### window (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, dining_room, bathroom, closet, garage, storage_room, bed, garden, hallway, kitchen, library, living_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight

### dog bowl (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, bedroom, bathroom, living_room, storage_room, pantry, hallway, kitchen, closet, home_office, garage
- **Clingo Deduced**: kitchen, bedroom, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: HasContainer

### antidepressant (✅ HIT)
- **Ground Truth**: kitchen, closet, bedroom, laundry_room, hallway, home_office, garage, living_room, bathroom, storage_room, pantry, dining_room
- **Clingo Deduced**: bathroom, garden, pantry, trash, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Perishable, Toxic_Hazardous

### knife (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, living_room, hallway, pantry, closet, bathroom, home_office, garage, bedroom, dining_room, storage_room, drawer
- **Clingo Deduced**: kitchen, drawer, bathroom, bed, closet, table, cabinet, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### tumbler (✅ HIT)
- **Ground Truth**: bathroom, living_room, bedroom, garage, storage_room, laundry_room, kitchen, pantry, home_office, hallway, closet, dining_room
- **Clingo Deduced**: table, drawer, bathroom, bedroom, cabinet, fridge, garden, library, pantry, storage_room
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### sander (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: garage, bedroom, bathroom, kitchen, library, storage_room, drawer, living_room, fridge, table
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, HasAbrasiveSurface

### furnace (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Heated

### pyjama (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: closet, drawer, library, shelf, garage, bed, kitchen, bedroom, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### wipe warmer (✅ HIT)
- **Ground Truth**: hallway, home_office, living_room, bedroom, pantry, dining_room, bathroom, garage, kitchen, closet, laundry_room, storage_room
- **Clingo Deduced**: bedroom, bathroom, library
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: HygieneTask
  - Qualities: Heated

### fireplace (✅ HIT)
- **Ground Truth**: living_room, dining_room, storage_room, bedroom
- **Clingo Deduced**: bedroom, table, cabinet, garage
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: LeisureTask
  - Qualities: Heated

### toiletpaper (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bathroom, bedroom, storage_room, kitchen, library, sink, bed, cabinet, closet, drawer, garage, garden, hallway, living_room, pantry, shelf, trash, table
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### bathtubbasin (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy

### vacuumcleaner (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: garage, storage_room, living_room, kitchen, bathroom, bedroom, closet, garden, laundry_room, library, pantry
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy

### spoon (✅ HIT)
- **Ground Truth**: kitchen, hallway, storage_room, bedroom, dining_room, garage, living_room, bathroom, laundry_room, pantry, closet, home_office, bed, sink, table
- **Clingo Deduced**: table, kitchen, drawer, cabinet, bathroom, bed, closet, garden, living_room, pantry, storage_room, bedroom, sink
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, Sharp

### graphics card (✅ HIT)
- **Ground Truth**: storage_room, dining_room, laundry_room, hallway, bathroom, kitchen, pantry, home_office, bedroom, living_room, closet, garage
- **Clingo Deduced**: table, storage_room, shelf, library
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### fruit (✅ HIT)
- **Ground Truth**: fridge, pantry
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### chocolate powder (✅ HIT)
- **Ground Truth**: closet, hallway, living_room, storage_room, dining_room, bathroom, garage, bedroom, laundry_room, pantry, kitchen, home_office
- **Clingo Deduced**: pantry, storage_room, bedroom, closet, garage, bathroom, cabinet, fridge, library, kitchen, living_room, shelf, table, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### beard color gel (✅ HIT)
- **Ground Truth**: pantry, home_office, hallway, kitchen, bathroom, dining_room, bedroom, living_room, laundry_room, garage, closet, storage_room
- **Clingo Deduced**: bathroom, sink, cabinet, library, garden, garage, home_office, bedroom, pantry, shelf
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Toxic_Hazardous

### bed (✅ HIT)
- **Ground Truth**: bedroom, storage_room
- **Clingo Deduced**: bedroom, closet, living_room, kitchen, garden, garage, hallway, library, storage_room, bathroom, drawer
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: SleepingTask
  - Qualities: Rigid, Heavy

### rafter (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garage, closet, bedroom, kitchen, garden, hallway, library, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### turkey (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: kitchen, storage_room, garden, bathroom, bedroom, pantry, closet, library, fridge, garage, shelf
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### chesterfield (✅ HIT)
- **Ground Truth**: hallway, living_room
- **Clingo Deduced**: bedroom, library, closet, kitchen, garden, garage, hallway, living_room, storage_room, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid, Fragile

### teapot (✅ HIT)
- **Ground Truth**: dining_room, bedroom, kitchen, closet, living_room, laundry_room, storage_room, home_office, bathroom, pantry, garage, hallway
- **Clingo Deduced**: kitchen, drawer, living_room, library, garden, pantry, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid, HasContainer

### clothing (✅ HIT)
- **Ground Truth**: closet, drawer
- **Clingo Deduced**: closet, drawer, bed, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### custard (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: pantry, garage, bathroom, bedroom, closet, shelf, storage_room, library, fridge, kitchen, cabinet, table, trash, garden
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### garbagebag (✅ HIT)
- **Ground Truth**: kitchen, bedroom
- **Clingo Deduced**: garage, kitchen, closet, trash, bedroom, cabinet, drawer, fridge, garden, library, pantry, shelf, table
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Lightweight

### handtowelholder (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, closet, library, garage, trash, hallway, home_office, kitchen, living_room, pantry, storage_room, bathroom, dining_room, shelf
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Lightweight

### kettle (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: kitchen, living_room, bedroom, bathroom, garage, cabinet
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated

### bath sheet (✅ HIT)
- **Ground Truth**: laundry_room, living_room, bedroom, closet, storage_room, bathroom, hallway, dining_room, garage, pantry, home_office, kitchen
- **Clingo Deduced**: bed, closet, drawer, library, shelf, garage, bathroom, hallway, kitchen, bedroom, living_room, storage_room, table
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### column (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, kitchen, garden, bathroom, garage, hallway, library, living_room, storage_room, dining_room, drawer, pantry, table, music_room, home_office, shelf
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

