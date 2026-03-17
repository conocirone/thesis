# Online Phase Evaluation Report

Evaluation of the Neuro-Symbolic pipeline against unseen objects from Robo-CSK-Benchmark.

- **Total Objects Tested**: 654
- **Any-Hit Accuracy**: 76.91%
- **Mean Reciprocal Rank (MRR)**: 0.5138

### Metrics at K
| Metric | k=1 | k=3 | k=5 |
|--------|-----|-----|-----|
| Precision | 0.4373 | 0.3290 | 0.2999 |
| Recall | 0.0792 | 0.1300 | 0.1634 |
| Avg Precision (AP) | 0.4297 | 0.4102 | 0.3938 |

## Test Cases Log
### cracker box (✅ HIT)
- **Ground Truth**: hallway, living_room, storage_room, dining_room, bedroom, closet, kitchen, home_office, pantry, laundry_room, bathroom, garage
- **Clingo Deduced**: bedroom, bathroom, library, cabinet, storage_room, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Lightweight

### sidewalk chalk (✅ HIT)
- **Ground Truth**: living_room, bathroom, home_office, storage_room, bedroom, pantry, kitchen, hallway, laundry_room, garage, closet, dining_room
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Granular, Lightweight

### ham (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### spice (✅ HIT)
- **Ground Truth**: cabinet, pantry, shelf
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Lightweight

### gun (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp

### colored wood blocks (✅ HIT)
- **Ground Truth**: closet, living_room, bedroom, bathroom, dining_room, pantry, hallway, home_office, laundry_room, storage_room, kitchen, garage
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Granular, Lightweight

### figurine (✅ HIT)
- **Ground Truth**: cabinet, shelf
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### dryer (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, fridge, pantry, library, garage
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: Electronic, Heavy

### tea pods (✅ HIT)
- **Ground Truth**: closet, pantry, living_room, hallway, laundry_room, bathroom, bedroom, dining_room, kitchen, storage_room, home_office, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### breakfast (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### shoe box (✅ HIT)
- **Ground Truth**: living_room, home_office, dining_room, laundry_room, bathroom, storage_room, kitchen, garage, hallway, pantry, closet, bedroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Granular, StorageContainerRole

### plunger (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### cube storage box (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, kitchen, home_office, hallway, garage, storage_room, closet, dining_room, pantry, living_room, bathroom
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid, StorageContainerRole

### lotion (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Lightweight, Washable

### shirt (✅ HIT)
- **Ground Truth**: closet, drawer, cabinet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### refrigerator (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, fridge, pantry, library, garage
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: RequiresCooling, Electronic, Heavy

### statuette (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### gelatin box (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, hallway, living_room, closet, dining_room, kitchen, pantry, bathroom, laundry_room, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### mat (✅ HIT)
- **Ground Truth**: bathroom, living_room
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### basketball (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### trinket (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: bedroom, pantry, closet, shelf, kitchen, garden, library, hallway, living_room, storage_room, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### light bulb (✅ HIT)
- **Ground Truth**: living_room, kitchen, pantry, closet, laundry_room, hallway, bedroom, garage, dining_room, storage_room, bathroom, home_office
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### mini soccer ball (✅ HIT)
- **Ground Truth**: hallway, home_office, living_room, storage_room, garage, pantry, laundry_room, closet, dining_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### coat (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### sofa (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### alarmclock (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### sorting toy (✅ HIT)
- **Ground Truth**: bedroom, garage, laundry_room, hallway, pantry, closet, bathroom, home_office, living_room, kitchen, dining_room, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### dispensing closure (✅ HIT)
- **Ground Truth**: home_office, laundry_room, storage_room, living_room, pantry, bedroom, hallway, kitchen, dining_room, garage, bathroom, closet
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### magnifying glass (✅ HIT)
- **Ground Truth**: dining_room, storage_room, living_room, hallway, bathroom, bedroom, home_office, kitchen, garage, pantry, laundry_room, closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight

### mustard bottle (✅ HIT)
- **Ground Truth**: home_office, pantry, hallway, laundry_room, living_room, closet, bedroom, bathroom, storage_room, kitchen, garage, dining_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid, Lightweight

### artichoke (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### backpack (✅ HIT)
- **Ground Truth**: hallway, laundry_room, dining_room, bedroom, closet, bathroom, living_room, pantry, storage_room, kitchen, garage, home_office
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### dustpan and brush (✅ HIT)
- **Ground Truth**: bedroom, dining_room, bathroom, home_office, laundry_room, living_room, hallway, pantry, storage_room, kitchen, closet, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Fragile

### apple (✅ HIT)
- **Ground Truth**: kitchen, storage_room, living_room, home_office, bathroom, bedroom, garage, laundry_room, hallway, pantry, dining_room, closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### olive (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sugar (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Lightweight

### pitcher base (✅ HIT)
- **Ground Truth**: living_room, garage, hallway, laundry_room, bathroom, bedroom, home_office, pantry, closet, storage_room, dining_room, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Heavy, Rigid

### spoon rest (❌ MISS)
- **Ground Truth**: bedroom, laundry_room, pantry, living_room, home_office, kitchen, closet, hallway, dining_room, garage, bathroom, storage_room
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### slip (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Fragile, Lightweight

### sanitary pads (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bedroom, closet, hallway, dining_room, garage, pantry, living_room, storage_room, bathroom, kitchen
- **Clingo Deduced**: closet, cabinet, bathroom, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Fragile, Lightweight

### sink (❌ MISS)
- **Ground Truth**: kitchen, bathroom, laundry_room
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### scarf (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### cake pan (✅ HIT)
- **Ground Truth**: storage_room, bedroom, laundry_room, hallway, pantry, kitchen, dining_room, living_room, garage, bathroom, closet, home_office
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy

### fondant (✅ HIT)
- **Ground Truth**: living_room, storage_room, laundry_room, home_office, kitchen, dining_room, closet, bedroom, hallway, pantry, garage, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### remotecontrol (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### soap dish (✅ HIT)
- **Ground Truth**: closet, hallway, living_room, storage_room, dining_room, bathroom, garage, bedroom, laundry_room, pantry, kitchen, home_office
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### candlestick (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### bedroom (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### dresser (✅ HIT)
- **Ground Truth**: bedroom, living_room, bathroom, drawer
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### crisp (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### candle holder (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, bedroom, garage, home_office, storage_room, hallway, bathroom, closet, pantry, living_room, dining_room
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### screwdriver (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### rib (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile, Rigid

### foot (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: BodyPartRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### peg and hammer toy (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, hallway, garage, home_office, dining_room, living_room, kitchen, bathroom, pantry, closet, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### pouch (❌ MISS)
- **Ground Truth**: pantry
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### movie dvd (✅ HIT)
- **Ground Truth**: home_office, bedroom, pantry, laundry_room, garage, storage_room, living_room, kitchen, dining_room, closet, hallway, bathroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, garden, library, trash, living_room, home_office, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: DocumentRole, StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight

### underpants (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### encyclopedia (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### tweed (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Granular, Soft_Deformable, Lightweight

### storeroom (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### floorlamp (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### chair (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### laundry box (✅ HIT)
- **Ground Truth**: living_room, home_office, dining_room, laundry_room, bathroom, storage_room, kitchen, garage, hallway, pantry, closet, bedroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy, Rigid, StorageContainerRole

### condom (✅ HIT)
- **Ground Truth**: bathroom, bedroom
- **Clingo Deduced**: closet, cabinet, bathroom, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### mint (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### candy bar (✅ HIT)
- **Ground Truth**: bedroom, pantry, bathroom, laundry_room, living_room, hallway, storage_room, closet, kitchen, dining_room, garage, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### headphone (✅ HIT)
- **Ground Truth**: laundry_room, storage_room, bedroom, living_room, closet, dining_room, kitchen, hallway, pantry, garage, home_office, bathroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Electronic

### toothbrush holder (✅ HIT)
- **Ground Truth**: pantry, bedroom, living_room, kitchen, storage_room, bathroom, dining_room, closet, hallway, garage, laundry_room, home_office
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### bacon (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### vacuum (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Heavy, Electronic

### electronic cable (❌ MISS)
- **Ground Truth**: garage, living_room, storage_room, kitchen, home_office, pantry, bedroom, closet, bathroom, dining_room, hallway, laundry_room
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Lightweight

### pastry (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### large marker (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, pantry, living_room, kitchen, dining_room, hallway, bathroom, home_office, closet, garage, storage_room
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile, Rigid

### instant camera (✅ HIT)
- **Ground Truth**: kitchen, living_room, garage, bedroom, dining_room, laundry_room, home_office, hallway, bathroom, pantry, storage_room, closet
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### pear (✅ HIT)
- **Ground Truth**: bathroom, laundry_room, closet, bedroom, hallway, living_room, storage_room, dining_room, home_office, garage, pantry, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### toy animal (✅ HIT)
- **Ground Truth**: kitchen, living_room, laundry_room, home_office, bedroom, storage_room, bathroom, garage, hallway, dining_room, pantry, closet
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### ashtray (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Fragile, Lightweight

### cracker (✅ HIT)
- **Ground Truth**: pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### monitor (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### chocolate (✅ HIT)
- **Ground Truth**: storage_room, dining_room, laundry_room, hallway, bathroom, kitchen, pantry, home_office, bedroom, living_room, closet, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### file sorter (✅ HIT)
- **Ground Truth**: laundry_room, pantry, living_room, bathroom, garage, home_office, dining_room, hallway, kitchen, bedroom, storage_room, closet
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: 

### pasta (✅ HIT)
- **Ground Truth**: pantry
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Granular

### mattress (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, closet, garden, trash, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Heavy

### bat (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Lightweight

### junk (❌ MISS)
- **Ground Truth**: storage_room, bed, table, drawer
- **Clingo Deduced**: trash, garden, pantry
- **LLM Extracted Features**:
  - Roles: WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Fragile, Heavy

### mail (✅ HIT)
- **Ground Truth**: fridge, table
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### stoveknob (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### pantry (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy

### foam brick (❌ MISS)
- **Ground Truth**: dining_room, bathroom, bedroom, living_room, hallway, storage_room, laundry_room, kitchen, pantry, home_office, garage, closet
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### face moisturizer (✅ HIT)
- **Ground Truth**: living_room, bedroom, home_office, kitchen, bathroom, hallway, pantry, dining_room, laundry_room, storage_room, garage, closet
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Toxic_Hazardous, Washable

### salt shaker (✅ HIT)
- **Ground Truth**: bathroom, living_room, garage, closet, pantry, bedroom, hallway, kitchen, storage_room, laundry_room, dining_room, home_office
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### paint (❌ MISS)
- **Ground Truth**: shelf, cabinet
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Liquid, Toxic_Hazardous, Flammable

### anti slip tape (❌ MISS)
- **Ground Truth**: bathroom, storage_room, hallway, bedroom, pantry, laundry_room, home_office, dining_room, living_room, closet, kitchen, garage
- **Clingo Deduced**: library, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: MaintenanceTask
  - Qualities: Fragile, Adhesive

### router (❌ MISS)
- **Ground Truth**: dining_room, hallway, garage, laundry_room, bedroom, pantry, home_office, kitchen, living_room, storage_room, bathroom, closet, library
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### heavy master chef can (✅ HIT)
- **Ground Truth**: hallway, storage_room, bedroom, dining_room, garage, living_room, bathroom, laundry_room, pantry, closet, kitchen, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### nail (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid

### battery (❌ MISS)
- **Ground Truth**: dining_room, garage, pantry, living_room, hallway, bedroom, laundry_room, closet, storage_room, home_office, kitchen, bathroom
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### saucepan (✅ HIT)
- **Ground Truth**: cabinet, kitchen
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid, Heavy

### condiment (✅ HIT)
- **Ground Truth**: bedroom, home_office, pantry, hallway, living_room, storage_room, laundry_room, dining_room, kitchen, garage, bathroom, closet, fridge, table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid

### plate (✅ HIT)
- **Ground Truth**: kitchen, living_room, garage, bathroom, dining_room, bedroom, closet, hallway, storage_room, laundry_room, home_office, pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight

### chopping board (✅ HIT)
- **Ground Truth**: laundry_room, pantry, kitchen, bedroom, living_room, closet, garage, hallway, dining_room, storage_room, home_office, bathroom
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### softball (✅ HIT)
- **Ground Truth**: living_room, laundry_room, pantry, garage, closet, bedroom, dining_room, bathroom, home_office, storage_room, hallway, kitchen
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Rigid

### book (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom, pantry, garage, hallway, closet, laundry_room, dining_room, home_office, storage_room
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Lightweight

### utensil holder (✅ HIT)
- **Ground Truth**: hallway, living_room, closet, pantry, dining_room, bedroom, laundry_room, kitchen, bathroom, home_office, storage_room, garage
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### toy tool kit (✅ HIT)
- **Ground Truth**: living_room, closet, hallway, laundry_room, home_office, kitchen, bedroom, storage_room, dining_room, garage, pantry, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### sugar box (✅ HIT)
- **Ground Truth**: living_room, garage, hallway, bedroom, pantry, bathroom, laundry_room, home_office, dining_room, storage_room, kitchen, closet
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Granular, Heavy

### compass (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### tape (✅ HIT)
- **Ground Truth**: cabinet, drawer
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Fragile, Lightweight

### pottery (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### dumbbell (❌ MISS)
- **Ground Truth**: bedroom, living_room, laundry_room, storage_room, hallway, garage, kitchen, dining_room, home_office, pantry, bathroom, closet
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### baseballbat (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### varnish (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: library, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Toxic_Hazardous

### tennisracket (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight

### clock (✅ HIT)
- **Ground Truth**: dining_room, garage, pantry, living_room, hallway, bedroom, laundry_room, closet, storage_room, home_office, kitchen, bathroom
- **Clingo Deduced**: bedroom, pantry, closet, shelf, kitchen, garden, library, hallway, living_room, storage_room, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight

### wagon (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### work (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, garden, library, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: 

### pepsi can pack (✅ HIT)
- **Ground Truth**: living_room, laundry_room, pantry, hallway, kitchen, bathroom, storage_room, dining_room, bedroom, closet, garage, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### chain (❌ MISS)
- **Ground Truth**: laundry_room, living_room, kitchen, hallway, pantry, closet, bathroom, home_office, garage, bedroom, dining_room, storage_room
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### measuring tape (✅ HIT)
- **Ground Truth**: living_room, kitchen, laundry_room, hallway, bedroom, home_office, closet, bathroom, pantry, dining_room, garage, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Lightweight

### tray (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, garage, pantry, kitchen, bedroom, storage_room, hallway, dining_room, home_office, closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid

### knife block (✅ HIT)
- **Ground Truth**: garage, bathroom, living_room, dining_room, bedroom, closet, hallway, storage_room, laundry_room, home_office, pantry, kitchen
- **Clingo Deduced**: bedroom, storage_room
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
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### sushi mat (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bathroom, closet, hallway, storage_room, pantry, bedroom, living_room, kitchen, dining_room, garage
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### cap (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### clipboard (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### dessert (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### platter (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Lightweight

### towelholder (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### laptop stand (✅ HIT)
- **Ground Truth**: home_office, closet, storage_room, laundry_room, bedroom, hallway, kitchen, pantry, dining_room, living_room, bathroom, garage
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### dustbin (✅ HIT)
- **Ground Truth**: closet, kitchen
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, kitchen, garden, library, trash, cabinet, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### curtain (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### carrot (✅ HIT)
- **Ground Truth**: storage_room, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### underwear (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### memory (❌ MISS)
- **Ground Truth**: pantry
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### juice (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### electric toothbrush (✅ HIT)
- **Ground Truth**: garage, living_room, pantry, storage_room, home_office, bedroom, dining_room, laundry_room, kitchen, closet, bathroom, hallway
- **Clingo Deduced**: bathroom
- **LLM Extracted Features**:
  - Roles: HygieneToolRole
  - Tasks: HygieneTask
  - Qualities: Electronic, Lightweight

### phone stand (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, garage, pantry, kitchen, bedroom, storage_room, hallway, dining_room, home_office, closet
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### card game (✅ HIT)
- **Ground Truth**: closet, garage, laundry_room, hallway, storage_room, bathroom, bedroom, living_room, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### toy instrument (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, home_office, kitchen, bathroom, closet, dining_room, pantry, hallway, garage, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole, MusicalInstrumentRole
  - Tasks: LeisureTask
  - Qualities: 

### cellphone (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic, Rigid

### phone armband case (✅ HIT)
- **Ground Truth**: living_room, kitchen, laundry_room, hallway, bedroom, home_office, closet, bathroom, pantry, dining_room, garage, storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Soft_Deformable

### keyboard (✅ HIT)
- **Ground Truth**: pantry, kitchen, laundry_room, living_room, bathroom, closet, bedroom, home_office, hallway, dining_room, garage, storage_room
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Lightweight

### couch (✅ HIT)
- **Ground Truth**: living_room, storage_room, hallway
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Soft_Deformable

### mug (✅ HIT)
- **Ground Truth**: kitchen, bedroom, laundry_room, bathroom, living_room, storage_room, hallway, garage, home_office, pantry, closet, dining_room, cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### setting (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: 

### toy bowling set (✅ HIT)
- **Ground Truth**: living_room, pantry, storage_room, bedroom, garage, closet, bathroom, laundry_room, home_office, kitchen, hallway, dining_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### rubiks cube (✅ HIT)
- **Ground Truth**: living_room, dining_room, bedroom, storage_room, home_office, pantry, laundry_room, hallway, closet, bathroom, kitchen, garage
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Lightweight

### duvet (✅ HIT)
- **Ground Truth**: bed, bedroom, living_room
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, hallway, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### hard drive (✅ HIT)
- **Ground Truth**: living_room, laundry_room, dining_room, pantry, closet, hallway, garage, home_office, storage_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: bedroom, fridge, pantry, library, garage
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: Electronic, Heavy

### hand bell (✅ HIT)
- **Ground Truth**: hallway, bedroom, living_room, closet, bathroom, dining_room, home_office, storage_room, kitchen, laundry_room, pantry, garage
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### toothbrush (❌ MISS)
- **Ground Truth**: bedroom, cabinet
- **Clingo Deduced**: bathroom
- **LLM Extracted Features**:
  - Roles: HygieneToolRole
  - Tasks: HygieneTask
  - Qualities: Fragile, Lightweight

### fridge (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### tv (✅ HIT)
- **Ground Truth**: bedroom, living_room, kitchen
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### sponge (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, kitchen, home_office, hallway, garage, storage_room, closet, dining_room, pantry, living_room, bathroom
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight

### sponge dish (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, storage_room, hallway, closet, living_room, bedroom, home_office, kitchen, pantry, bathroom, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight

### string lights (✅ HIT)
- **Ground Truth**: hallway, bedroom, living_room, closet, bathroom, dining_room, home_office, storage_room, kitchen, laundry_room, pantry, garage
- **Clingo Deduced**: bedroom, pantry, closet, shelf, kitchen, garden, library, hallway, living_room, storage_room, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Electronic

### sidetable (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, garden, library, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Heavy, Rigid

### pot (✅ HIT)
- **Ground Truth**: kitchen, drawer
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid

### desk caddy (✅ HIT)
- **Ground Truth**: garage, living_room, pantry, storage_room, home_office, bedroom, dining_room, laundry_room, kitchen, closet, bathroom, hallway
- **Clingo Deduced**: bedroom, table, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### photocopier (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: library, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### drink coaster (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, home_office, closet, bathroom, pantry, hallway, bedroom, living_room, garage, storage_room, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile

### statue (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### diningtable (❌ MISS)
- **Ground Truth**: kitchen, living_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Heavy

### garbage (✅ HIT)
- **Ground Truth**: trash
- **Clingo Deduced**: trash, garden, pantry
- **LLM Extracted Features**:
  - Roles: ConsumableRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### saw (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### cheese (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### oil (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### diary (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile

### stoveburner (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated

### folder (✅ HIT)
- **Ground Truth**: living_room, bathroom, pantry, bedroom, garage, kitchen, hallway, closet, laundry_room, dining_room, home_office, storage_room, shelf, cabinet
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### letter holder (✅ HIT)
- **Ground Truth**: living_room, storage_room, laundry_room, home_office, kitchen, dining_room, closet, bedroom, hallway, pantry, garage, bathroom
- **Clingo Deduced**: bedroom, table, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### desklamp (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### thimble (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Fragile, Rigid

### incontinence pads (✅ HIT)
- **Ground Truth**: bedroom, living_room, garage, hallway, laundry_room, closet, storage_room, bathroom, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: closet, cabinet, bathroom, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### plant container (✅ HIT)
- **Ground Truth**: laundry_room, storage_room, garage, bedroom, pantry, dining_room, living_room, home_office, hallway, closet, kitchen, bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: GardeningTask
  - Qualities: Lightweight, Rigid

### water bottle (✅ HIT)
- **Ground Truth**: living_room, bedroom, hallway, bathroom, closet, pantry, laundry_room, dining_room, home_office, garage, kitchen, storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid, Lightweight

### potted meat can (✅ HIT)
- **Ground Truth**: living_room, bedroom, dining_room, hallway, laundry_room, storage_room, kitchen, home_office, pantry, garage, closet, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### crowbar (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### pie (✅ HIT)
- **Ground Truth**: fridge, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### heavy duty gloves (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, closet, laundry_room, living_room, kitchen, storage_room, hallway, pantry, dining_room, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Fragile

### countertop (✅ HIT)
- **Ground Truth**: kitchen, bedroom, bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### dog chew toy (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, home_office, kitchen, bathroom, closet, dining_room, pantry, hallway, garage, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Soft_Deformable

### trunk (✅ HIT)
- **Ground Truth**: storage_room, bedroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### easter basket (✅ HIT)
- **Ground Truth**: laundry_room, living_room, bedroom, home_office, kitchen, storage_room, hallway, bathroom, garage, pantry, dining_room, closet
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile

### ball (✅ HIT)
- **Ground Truth**: closet, living_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Fragile

### phillips screwdriver (✅ HIT)
- **Ground Truth**: dining_room, kitchen, closet, bedroom, laundry_room, bathroom, hallway, garage, living_room, pantry, storage_room, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### pill (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Toxic_Hazardous

### undershirt (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### poster (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### door (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### honey dipper (✅ HIT)
- **Ground Truth**: living_room, hallway, dining_room, bedroom, garage, bathroom, kitchen, storage_room, laundry_room, closet, home_office, pantry
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Fragile

### spider (✅ HIT)
- **Ground Truth**: storage_room, closet, garden, bed, sink, bathroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Lightweight

### butterknife (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### parchment sheet (✅ HIT)
- **Ground Truth**: hallway, living_room, closet, pantry, dining_room, bedroom, laundry_room, kitchen, bathroom, home_office, storage_room, garage
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid, Fragile

### winebottle (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid, Heavy

### rmal laminator (✅ HIT)
- **Ground Truth**: bedroom, hallway, living_room, closet, kitchen, home_office, dining_room, storage_room, garage, pantry, laundry_room, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy

### lime squeezer (✅ HIT)
- **Ground Truth**: bedroom, closet, bathroom, laundry_room, kitchen, home_office, hallway, living_room, pantry, garage, dining_room, storage_room
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### bureau (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### skillet lid (✅ HIT)
- **Ground Truth**: living_room, laundry_room, pantry, garage, closet, bedroom, dining_room, bathroom, home_office, storage_room, hallway, kitchen
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid

### apricot (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### orange (✅ HIT)
- **Ground Truth**: hallway, home_office, kitchen, garage, living_room, bedroom, laundry_room, dining_room, bathroom, closet, pantry, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### tile (❌ MISS)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### duct tape (✅ HIT)
- **Ground Truth**: pantry, living_room, closet, garage, hallway, bathroom, dining_room, home_office, storage_room, bedroom, laundry_room, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Fragile

### fire (❌ MISS)
- **Ground Truth**: storage_room, kitchen
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, hallway, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: LeisureTask
  - Qualities: Flammable

### slipper (✅ HIT)
- **Ground Truth**: bed, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### ladle (✅ HIT)
- **Ground Truth**: kitchen, drawer
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Liquid, Fragile, Rigid

### golf ball (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, pantry, dining_room, bedroom, storage_room, living_room, home_office, closet, bathroom, garage, hallway
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid, Fragile

### pudding box (✅ HIT)
- **Ground Truth**: laundry_room, kitchen, closet, home_office, living_room, pantry, bathroom, bedroom, hallway, dining_room, garage, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### puzzle game (✅ HIT)
- **Ground Truth**: laundry_room, pantry, home_office, bathroom, garage, living_room, storage_room, dining_room, hallway, bedroom, closet, kitchen
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### dress (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### skin moisturizer (✅ HIT)
- **Ground Truth**: bedroom, garage, laundry_room, hallway, pantry, closet, bathroom, home_office, living_room, kitchen, dining_room, storage_room
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Lightweight, Toxic_Hazardous

### foundation (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy

### fingerpaint (❌ MISS)
- **Ground Truth**: laundry_room, living_room, kitchen, hallway, closet, storage_room, bedroom, pantry, home_office, garage, bathroom, dining_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ArtSuppliesRole
  - Tasks: LeisureTask
  - Qualities: Liquid, Fragile, Lightweight

### toy basketball (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, pantry, living_room, home_office, kitchen, closet, hallway, dining_room, garage, bathroom, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### egg (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Fragile, Lightweight

### shrimp (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### vodka (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### coaster (✅ HIT)
- **Ground Truth**: table, drawer
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### bookshelf (✅ HIT)
- **Ground Truth**: bedroom, library
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### flat screwdriver (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, bedroom, garage, home_office, storage_room, hallway, bathroom, closet, pantry, living_room, dining_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### scissors (✅ HIT)
- **Ground Truth**: laundry_room, pantry, kitchen, bedroom, living_room, closet, garage, hallway, dining_room, storage_room, home_office, bathroom, cabinet, table, drawer
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Sharp, Rigid

### medicine (✅ HIT)
- **Ground Truth**: bedroom, closet, living_room, hallway, bathroom, garage, laundry_room, storage_room, kitchen, home_office, dining_room, pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### freezer (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, fridge, pantry, library, garage
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: RequiresFreezing, Electronic, Heavy

### cabinet (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy

### blender jar (✅ HIT)
- **Ground Truth**: laundry_room, pantry, living_room, bathroom, garage, home_office, dining_room, hallway, kitchen, bedroom, storage_room, closet
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular

### storage (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### dish drainer (✅ HIT)
- **Ground Truth**: dining_room, bedroom, kitchen, closet, living_room, laundry_room, storage_room, home_office, bathroom, pantry, garage, hallway
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Rigid

### newspaper (✅ HIT)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile

### weight (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Heavy

### house (❌ MISS)
- **Ground Truth**: bedroom
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### cutlery (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### painting (✅ HIT)
- **Ground Truth**: living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### chicken (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sinkbasin (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Heavy

### ingredient (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Perishable

### calender (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### drill (✅ HIT)
- **Ground Truth**: storage_room, cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### linoleum (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: FlooringMaterialRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### china (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Rigid

### paperweight (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### ottoman (✅ HIT)
- **Ground Truth**: living_room, storage_room
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### popsicle (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### stacking cups (✅ HIT)
- **Ground Truth**: closet, laundry_room, bathroom, living_room, home_office, pantry, kitchen, garage, bedroom, hallway, storage_room, dining_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid

### toy kitchen set (✅ HIT)
- **Ground Truth**: living_room, laundry_room, home_office, garage, pantry, hallway, kitchen, bedroom, storage_room, closet, bathroom, dining_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### garlic (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Fragile

### pesto (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### carrying case (✅ HIT)
- **Ground Truth**: home_office, laundry_room, storage_room, living_room, pantry, bedroom, hallway, kitchen, dining_room, garage, bathroom, closet
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid

### safe (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom, cabinet, closet
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: SafetyEquipmentRole
  - Tasks: 
  - Qualities: Heavy

### salt (✅ HIT)
- **Ground Truth**: cabinet, shelf, table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Lightweight

### coffeemaker (❌ MISS)
- **Ground Truth**: pantry, hallway, dining_room, storage_room, laundry_room, garage, bathroom, living_room, home_office, closet, bedroom, kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Electronic, Heavy

### lightswitch (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### steak (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask, EatingDrinkingTask
  - Qualities: Perishable, Fragile

### desktop (❌ MISS)
- **Ground Truth**: bedroom
- **Clingo Deduced**: library, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### mayonnaise (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### banana (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, storage_room, hallway, living_room, home_office, garage, closet, pantry, kitchen, dining_room, bathroom, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### carpeting (✅ HIT)
- **Ground Truth**: bed, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Soft_Deformable, Heavy

### skeleton (❌ MISS)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### toilet (✅ HIT)
- **Ground Truth**: bathroom, storage_room
- **Clingo Deduced**: bedroom, bathroom, garden, library, trash
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### tap (❌ MISS)
- **Ground Truth**: bathroom, sink
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### form (✅ HIT)
- **Ground Truth**: cabinet, table
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### tool (✅ HIT)
- **Ground Truth**: storage_room, drawer
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### cellar (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, garden, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, FurnitureRole
  - Tasks: 
  - Qualities: Heavy

### crayon (❌ MISS)
- **Ground Truth**: home_office, laundry_room, hallway, garage, living_room, storage_room, bathroom, kitchen, closet, pantry, bedroom, dining_room
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Rigid, Lightweight

### can opener (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, dining_room, living_room, kitchen, hallway, garage, home_office, pantry, bathroom, storage_room, closet
- **Clingo Deduced**: bedroom, laundry_room, bathroom, pantry, closet, shelf, kitchen, music_room, library, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### drawer (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom, cabinet, table, fridge
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid

### wallet (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Fragile, Rigid

### basil (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### tabletopdecor (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### television (✅ HIT)
- **Ground Truth**: living_room, bedroom, cabinet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### pea (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### bathtub (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: library, garden, bathroom
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: HygieneTask
  - Qualities: Heavy, Rigid

### cosmetic (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: 
  - Qualities: Liquid, Fragile, Toxic_Hazardous

### toothbrush pack (✅ HIT)
- **Ground Truth**: living_room, kitchen, hallway, dining_room, closet, bathroom, bedroom, storage_room, pantry, garage, laundry_room, home_office
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Fragile

### helmet (❌ MISS)
- **Ground Truth**: laundry_room, bathroom, living_room, storage_room, pantry, dining_room, closet, hallway, bedroom, garage, home_office, kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: SafetyEquipmentRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### labeling tape (✅ HIT)
- **Ground Truth**: laundry_room, storage_room, garage, bedroom, pantry, dining_room, living_room, home_office, hallway, closet, kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Adhesive, Lightweight

### mailbox (❌ MISS)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### towel (✅ HIT)
- **Ground Truth**: bathroom, living_room, garage, hallway, laundry_room, bedroom, home_office, pantry, closet, storage_room, dining_room, kitchen
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### coffee beans (✅ HIT)
- **Ground Truth**: living_room, closet, bedroom, hallway, home_office, storage_room, bathroom, kitchen, laundry_room, garage, dining_room, pantry
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Perishable, Granular

### damper (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid

### cup (✅ HIT)
- **Ground Truth**: kitchen, closet, storage_room, living_room, home_office, bathroom, bedroom, garage, laundry_room, hallway, pantry, dining_room, table, sink, shelf
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid

### organiser (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Rigid

### snack dispenser (✅ HIT)
- **Ground Truth**: bathroom, living_room, storage_room, kitchen, dining_room, bedroom, hallway, garage, laundry_room, home_office, pantry, closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### bug (✅ HIT)
- **Ground Truth**: garden, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Lightweight

### cabbage (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### lettuce (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### candle (✅ HIT)
- **Ground Truth**: living_room, bathroom, bedroom, cabinet, drawer, kitchen, shelf, table
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Heated

### broom (✅ HIT)
- **Ground Truth**: cabinet, closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Fragile, Rigid

### lunch bag (✅ HIT)
- **Ground Truth**: living_room, bathroom, kitchen, hallway, bedroom, laundry_room, storage_room, pantry, closet, dining_room, home_office, garage
- **Clingo Deduced**: bedroom, bathroom, library, cabinet, storage_room, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Washable

### ruler (✅ HIT)
- **Ground Truth**: table, drawer, cabinet
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### liquor (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### showercurtain (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### dietary supplement (✅ HIT)
- **Ground Truth**: bedroom, living_room, closet, kitchen, laundry_room, pantry, home_office, garage, hallway, bathroom, storage_room, dining_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### journal (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile, Rigid

### saucer (✅ HIT)
- **Ground Truth**: kitchen, pantry, living_room, bedroom, garage, laundry_room, storage_room, closet, home_office, hallway, bathroom, dining_room, cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Rigid

### mousepad (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Soft_Deformable

### deck (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### electric heater (❌ MISS)
- **Ground Truth**: storage_room, hallway, bedroom, home_office, garage, laundry_room, living_room, dining_room, pantry, closet, bathroom, kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Heated, Electronic, Heavy

### copyholder (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### mold (✅ HIT)
- **Ground Truth**: storage_room, fridge
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Fragile, Granular

### duct (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid

### lunch box (✅ HIT)
- **Ground Truth**: bathroom, dining_room, kitchen, laundry_room, living_room, hallway, bedroom, garage, pantry, home_office, closet, storage_room
- **Clingo Deduced**: bedroom, bathroom, library, cabinet, storage_room, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid

### magnet (❌ MISS)
- **Ground Truth**: fridge
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### herring fillets (✅ HIT)
- **Ground Truth**: bedroom, closet, storage_room, kitchen, living_room, garage, pantry, laundry_room, hallway, home_office, dining_room, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### papertowelroll (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### jewelry box (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, pantry, hallway, laundry_room, storage_room, living_room, kitchen, bathroom, dining_room, closet
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### loaf (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### bread (✅ HIT)
- **Ground Truth**: kitchen, pantry, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### lame (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Fragile, Lightweight

### lunch (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### android figure (✅ HIT)
- **Ground Truth**: dining_room, hallway, garage, laundry_room, bedroom, pantry, home_office, kitchen, living_room, storage_room, bathroom, closet
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Electronic

### bleach cleanser (✅ HIT)
- **Ground Truth**: laundry_room, kitchen, closet, home_office, living_room, pantry, bathroom, bedroom, hallway, dining_room, garage, storage_room
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Toxic_Hazardous, Liquid

### storehouse (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### tofu (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### dictionary (✅ HIT)
- **Ground Truth**: library, shelf, table
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight

### racquetball (✅ HIT)
- **Ground Truth**: bedroom, laundry_room, bathroom, living_room, storage_room, hallway, kitchen, garage, home_office, pantry, closet, dining_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### firearm (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid, Sharp

### paint maker (✅ HIT)
- **Ground Truth**: living_room, storage_room, garage, hallway, laundry_room, bedroom, home_office, bathroom, closet, dining_room, kitchen, pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Toxic_Hazardous

### soapbar (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Fragile, Washable

### utensil (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: cabinet, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: 
  - Qualities: 

### vase (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, home_office, garage, pantry, storage_room, bathroom, laundry_room, hallway, closet, dining_room, cabinet, shelf, table
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### crate (✅ HIT)
- **Ground Truth**: kitchen, living_room
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### storage bin (✅ HIT)
- **Ground Truth**: storage_room, bathroom, home_office, laundry_room, closet, dining_room, living_room, hallway, garage, pantry, bedroom, kitchen
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### ink cartridge (❌ MISS)
- **Ground Truth**: dining_room, storage_room, living_room, hallway, bathroom, bedroom, home_office, kitchen, garage, pantry, laundry_room, closet
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: PrintingTask
  - Qualities: Liquid, Fragile

### lamp (✅ HIT)
- **Ground Truth**: bedroom, living_room, bathroom, closet, garage, hallway, laundry_room, kitchen, dining_room, storage_room, home_office, pantry, table, shelf
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### laundryhamper (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: closet, bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: CleaningTask
  - Qualities: Heavy, Rigid, Washable

### toy airplane (✅ HIT)
- **Ground Truth**: dining_room, bedroom, living_room, bathroom, hallway, kitchen, laundry_room, home_office, closet, storage_room, pantry, garage
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### ramekin (✅ HIT)
- **Ground Truth**: hallway, closet, living_room, pantry, bedroom, laundry_room, dining_room, kitchen, storage_room, bathroom, home_office, garage
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### magazine (✅ HIT)
- **Ground Truth**: bed, library, table, hallway
- **Clingo Deduced**: bedroom, bathroom, shelf, garden, library, trash, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### baseball (✅ HIT)
- **Ground Truth**: pantry, dining_room, living_room, hallway, laundry_room, kitchen, bedroom, bathroom, closet, garage, home_office, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Rigid

### moistener (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid

### nine hole peg test (✅ HIT)
- **Ground Truth**: garage, living_room, storage_room, kitchen, home_office, pantry, bedroom, closet, bathroom, dining_room, hallway, laundry_room
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: 

### saltshaker (✅ HIT)
- **Ground Truth**: kitchen, cabinet
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### laptop (✅ HIT)
- **Ground Truth**: living_room, bedroom, hallway, garage, closet, pantry, laundry_room, kitchen, home_office, dining_room, storage_room, bathroom, table
- **Clingo Deduced**: library, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Heavy

### waffle (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### pillow (✅ HIT)
- **Ground Truth**: bedroom, living_room, hallway, pantry, kitchen, garage, home_office, laundry_room, dining_room, bathroom, closet, storage_room
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, hallway, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight

### container (❌ MISS)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### rice (✅ HIT)
- **Ground Truth**: pantry, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### lid (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Fragile

### skillet (✅ HIT)
- **Ground Truth**: hallway, home_office, kitchen, garage, living_room, bedroom, laundry_room, dining_room, bathroom, closet, pantry, storage_room
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid

### weight loss guide (✅ HIT)
- **Ground Truth**: living_room, closet, bedroom, hallway, home_office, storage_room, bathroom, kitchen, laundry_room, garage, dining_room, pantry
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### board game (✅ HIT)
- **Ground Truth**: closet, bedroom, storage_room, home_office, laundry_room, hallway, bathroom, pantry, garage, dining_room, kitchen, living_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### holdall (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### napkin (✅ HIT)
- **Ground Truth**: table, cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### tvstand (✅ HIT)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy

### teddybear (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### stuffed toy (✅ HIT)
- **Ground Truth**: bedroom, garage, laundry_room, dining_room, bathroom, living_room, hallway, closet, kitchen, pantry, storage_room, home_office
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### hair straightener (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, kitchen, bathroom, living_room, storage_room, garage, pantry, bedroom, hallway, closet, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Heavy, Heated

### laxative (✅ HIT)
- **Ground Truth**: bedroom, closet, bathroom, laundry_room, kitchen, home_office, hallway, living_room, pantry, garage, dining_room, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Toxic_Hazardous

### pen (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### pad (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Soft_Deformable, Lightweight

### dishtowel (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, pantry, living_room, hallway, garage, dining_room, storage_room, closet, bathroom, home_office, kitchen, drawer
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### tennis ball (✅ HIT)
- **Ground Truth**: closet, living_room, hallway, dining_room, home_office, kitchen, bedroom, pantry, laundry_room, bathroom, garage, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### joist (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### toy vehicle (✅ HIT)
- **Ground Truth**: laundry_room, living_room, kitchen, hallway, closet, storage_room, bedroom, pantry, home_office, garage, bathroom, dining_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### soap dispenser (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, storage_room, hallway, closet, living_room, bedroom, home_office, kitchen, pantry, bathroom, garage
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Electronic, Lightweight

### coffeetable (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### diaper pack (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, bathroom, closet, pantry, hallway, garage, dining_room, home_office, kitchen, storage_room
- **Clingo Deduced**: closet
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### photo (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, bathroom, shelf, garden, library, trash, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: 

### casserole dish (✅ HIT)
- **Ground Truth**: living_room, bathroom, home_office, storage_room, bedroom, pantry, kitchen, hallway, laundry_room, garage, closet, dining_room
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy

### handtowel (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, bathroom, sink, library
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
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular

### nintendo switch (✅ HIT)
- **Ground Truth**: living_room, bathroom, laundry_room, storage_room, kitchen, hallway, dining_room, home_office, garage, pantry, closet, bedroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### sugar sprinkles (✅ HIT)
- **Ground Truth**: living_room, bathroom, kitchen, hallway, bedroom, laundry_room, storage_room, pantry, closet, dining_room, home_office, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Lightweight

### telephone (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic

### gate (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### showerdoor (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### film (❌ MISS)
- **Ground Truth**: cabinet, drawer
- **Clingo Deduced**: bedroom, bathroom, shelf, garden, library, trash, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile

### adjustable wrench (✅ HIT)
- **Ground Truth**: living_room, laundry_room, kitchen, hallway, bathroom, closet, storage_room, home_office, bedroom, pantry, dining_room, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### envelope (✅ HIT)
- **Ground Truth**: table, drawer, cabinet
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile

### showerglass (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile, Rigid

### rolodex (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight

### fitness tracker wristband (✅ HIT)
- **Ground Truth**: storage_room, bathroom, home_office, laundry_room, closet, dining_room, living_room, hallway, garage, pantry, bedroom, kitchen
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Electronic

### surface saver ring (✅ HIT)
- **Ground Truth**: living_room, hallway, dining_room, bedroom, garage, bathroom, kitchen, storage_room, laundry_room, closet, home_office, pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Lightweight, Fragile

### hammer (✅ HIT)
- **Ground Truth**: closet, pantry, living_room, dining_room, bedroom, laundry_room, home_office, bathroom, hallway, garage, storage_room, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### rag (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Fragile, Soft_Deformable, Lightweight

### potpourri (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Fragile, Lightweight

### cereal (✅ HIT)
- **Ground Truth**: laundry_room, living_room, bedroom, home_office, kitchen, storage_room, hallway, bathroom, garage, pantry, dining_room, closet, cabinet, fridge, shelf
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### reference (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### bottle (✅ HIT)
- **Ground Truth**: kitchen, storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid, Lightweight

### antique (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### radio (✅ HIT)
- **Ground Truth**: kitchen, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### milk (✅ HIT)
- **Ground Truth**: fridge, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### yoghurt (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### pit (❌ MISS)
- **Ground Truth**: garden
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Fragile

### showerhead (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, shelf, library, living_room, bed, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Fragile

### furniture (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### blender (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Rigid

### photograph (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: bedroom, bathroom, shelf, garden, library, trash, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: 

### glove (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, garage, living_room, storage_room, home_office, hallway, pantry, bedroom, closet, dining_room, kitchen, cabinet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### reader (✅ HIT)
- **Ground Truth**: library
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: 

### tablet (✅ HIT)
- **Ground Truth**: storage_room, garage, living_room, closet, laundry_room, bedroom, dining_room, home_office, kitchen, hallway, pantry, bathroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### plumbing (❌ MISS)
- **Ground Truth**: bathroom, kitchen
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### trowel (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### garbagecan (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, kitchen, garden, library, trash, cabinet, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### tie (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Rigid, Fragile

### potato (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### clamp (✅ HIT)
- **Ground Truth**: living_room, garage, hallway, bedroom, pantry, bathroom, laundry_room, home_office, dining_room, storage_room, kitchen, closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### umbrella (❌ MISS)
- **Ground Truth**: dining_room, laundry_room, home_office, closet, bathroom, pantry, hallway, bedroom, living_room, garage, storage_room, kitchen
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### bundt pan (✅ HIT)
- **Ground Truth**: home_office, bedroom, pantry, laundry_room, garage, storage_room, living_room, kitchen, dining_room, closet, hallway, bathroom
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy

### salad (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### paper (✅ HIT)
- **Ground Truth**: drawer, table
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, hallway, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Lightweight

### flashlight (✅ HIT)
- **Ground Truth**: pantry, living_room, bedroom, hallway, dining_room, home_office, closet, laundry_room, bathroom, kitchen, garage, storage_room
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### beauty pack (✅ HIT)
- **Ground Truth**: bedroom, storage_room, living_room, laundry_room, hallway, home_office, pantry, kitchen, bathroom, dining_room, garage, closet
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### bra (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### mess (✅ HIT)
- **Ground Truth**: closet, table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: 

### milk fror (✅ HIT)
- **Ground Truth**: living_room, pantry, storage_room, bedroom, garage, closet, bathroom, laundry_room, home_office, kitchen, hallway, dining_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: RequiresCooling, Liquid

### vegetable (✅ HIT)
- **Ground Truth**: fridge, garden
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### wastebasket (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, kitchen, garden, library, trash, cabinet, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### shed (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, garden, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, FurnitureRole
  - Tasks: 
  - Qualities: Heavy

### guard (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### flour (✅ HIT)
- **Ground Truth**: cabinet, kitchen, pantry
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### shoe (✅ HIT)
- **Ground Truth**: closet, bathroom, laundry_room, bedroom, hallway, living_room, storage_room, dining_room, home_office, garage, pantry, kitchen, bed, table
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Fragile, Rigid

### dumbbell rack (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, storage_room, hallway, living_room, home_office, garage, closet, pantry, kitchen, dining_room, bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### vent (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: 

### sideboard (✅ HIT)
- **Ground Truth**: dining_room, kitchen
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### box (✅ HIT)
- **Ground Truth**: living_room, bedroom, home_office, closet, storage_room, laundry_room, hallway, kitchen, pantry, dining_room, bathroom, garage
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### top (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### cinnamon (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### floor (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Heavy

### tablet holder (✅ HIT)
- **Ground Truth**: bedroom, closet, storage_room, kitchen, living_room, garage, pantry, laundry_room, hallway, home_office, dining_room, bathroom
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### pressure cooker (✅ HIT)
- **Ground Truth**: hallway, laundry_room, closet, storage_room, living_room, bathroom, pantry, kitchen, bedroom, garage, dining_room, home_office
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### picture frame (✅ HIT)
- **Ground Truth**: living_room, laundry_room, storage_room, bedroom, hallway, garage, kitchen, dining_room, home_office, pantry, bathroom, closet
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Lightweight

### cooler (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, fridge, pantry, library, garage
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: StorageTask
  - Qualities: RequiresCooling, Heavy

### hair conditioner (✅ HIT)
- **Ground Truth**: home_office, bedroom, laundry_room, hallway, closet, pantry, bathroom, garage, storage_room, living_room, kitchen, dining_room
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Washable

### lasagna (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### laptop cover (✅ HIT)
- **Ground Truth**: hallway, bedroom, pantry, living_room, kitchen, garage, home_office, laundry_room, dining_room, bathroom, closet, storage_room
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### tank (✅ HIT)
- **Ground Truth**: storage_room, living_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy, Liquid

### thumbtack (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Sharp, Rigid

### shelf (✅ HIT)
- **Ground Truth**: bedroom, bathroom, kitchen, living_room, cabinet, closet, fridge, library
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### coffeemachine (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### skin care product (✅ HIT)
- **Ground Truth**: closet, hallway, pantry, bedroom, laundry_room, bathroom, living_room, storage_room, kitchen, dining_room, home_office, garage
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Toxic_Hazardous, Washable

### morboard (✅ HIT)
- **Ground Truth**: living_room, laundry_room, dining_room, pantry, closet, hallway, garage, home_office, storage_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight

### wardrobe (✅ HIT)
- **Ground Truth**: bedroom, closet
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### contraceptive (❌ MISS)
- **Ground Truth**: drawer
- **Clingo Deduced**: closet, cabinet, bathroom, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Fragile, Lightweight

### houseplant (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: GardeningTask
  - Qualities: Perishable, Lightweight

### rose (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### doughnut (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### restroom (❌ MISS)
- **Ground Truth**: library
- **Clingo Deduced**: bedroom, garden, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, FurnitureRole
  - Tasks: 
  - Qualities: 

### balancing cactus (✅ HIT)
- **Ground Truth**: laundry_room, bathroom, living_room, storage_room, pantry, dining_room, closet, hallway, bedroom, garage, home_office, kitchen
- **Clingo Deduced**: bedroom, pantry, closet, shelf, kitchen, garden, library, hallway, living_room, storage_room, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile, Rigid

### beer (✅ HIT)
- **Ground Truth**: fridge, shelf
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### rug (✅ HIT)
- **Ground Truth**: bed, bedroom, table, living_room
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Soft_Deformable, Lightweight

### whale whistle (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, bedroom, bathroom, living_room, storage_room, pantry, hallway, kitchen, closet, home_office, garage
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight

### tomato (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### outfit (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: 

### blanket (✅ HIT)
- **Ground Truth**: bedroom, closet, drawer
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, hallway, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Washable

### stool (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### table (❌ MISS)
- **Ground Truth**: kitchen, bedroom, living_room, dining_room, library, storage_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: EatingDrinkingTask
  - Qualities: Rigid, Heavy

### sachet (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Washable

### strawberry (✅ HIT)
- **Ground Truth**: kitchen, hallway, bedroom, laundry_room, bathroom, living_room, home_office, closet, storage_room, dining_room, pantry, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### keychain (❌ MISS)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### lemon (✅ HIT)
- **Ground Truth**: kitchen, pantry, bathroom, hallway, living_room, closet, bedroom, laundry_room, storage_room, garage, dining_room, home_office, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### armchair (✅ HIT)
- **Ground Truth**: living_room, bedroom, home_office
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid, Fragile

### dressing (❌ MISS)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: 

### toaster (❌ MISS)
- **Ground Truth**: kitchen, hallway, garage, closet, bedroom, pantry, bathroom, living_room, home_office, laundry_room, storage_room, dining_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Electronic, Heavy

### comfort (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: 

### cord (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Fragile, Rigid

### cake mix (✅ HIT)
- **Ground Truth**: pantry, home_office, hallway, kitchen, bathroom, dining_room, bedroom, living_room, laundry_room, garage, closet, storage_room
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Perishable

### garter (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable

### icecream (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: RequiresFreezing, Perishable

### sandwich (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### tea can pack (✅ HIT)
- **Ground Truth**: closet, garage, laundry_room, hallway, storage_room, bathroom, bedroom, living_room, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Granular

### electronic adapter (❌ MISS)
- **Ground Truth**: dining_room, kitchen, closet, bedroom, laundry_room, bathroom, hallway, garage, living_room, pantry, storage_room, home_office
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Lightweight

### waste basket (✅ HIT)
- **Ground Truth**: living_room, laundry_room, home_office, garage, pantry, hallway, kitchen, bedroom, storage_room, closet, bathroom, dining_room
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, kitchen, garden, library, trash, cabinet, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Heavy

### mouse (✅ HIT)
- **Ground Truth**: kitchen, living_room, storage_room, bedroom, laundry_room, hallway, pantry, dining_room, garage, bathroom, closet, home_office, garden, table, trash, shelf
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Fragile, Rigid

### fish (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### video (✅ HIT)
- **Ground Truth**: drawer, cabinet
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### padlock (❌ MISS)
- **Ground Truth**: living_room, home_office, garage, pantry, storage_room, bathroom, laundry_room, kitchen, hallway, closet, bedroom, dining_room
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### closet (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy

### neckwear (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### toy construction set (✅ HIT)
- **Ground Truth**: closet, pantry, living_room, hallway, laundry_room, bathroom, bedroom, dining_room, kitchen, storage_room, home_office, garage
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### pencil (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, drawer, shelf, cabinet
- **Clingo Deduced**: bedroom, pantry, closet, shelf, garden, music_room, trash, library, cabinet, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### tomato soup can (✅ HIT)
- **Ground Truth**: living_room, laundry_room, kitchen, hallway, bathroom, closet, storage_room, home_office, bedroom, pantry, dining_room, garage
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid, Heavy, Fragile

### spa (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### stand mixer (❌ MISS)
- **Ground Truth**: bathroom, living_room, bedroom, garage, storage_room, laundry_room, kitchen, pantry, home_office, hallway, closet, dining_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: FoodPreparationTask
  - Qualities: Heavy, Electronic

### thread (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Fragile, Lightweight

### lipstick (✅ HIT)
- **Ground Truth**: living_room, laundry_room, bedroom, storage_room, hallway, kitchen, closet, bathroom, garage, dining_room, home_office, pantry, cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Fragile, Toxic_Hazardous

### roomdecor (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### usb drive (❌ MISS)
- **Ground Truth**: pantry, kitchen, bedroom, bathroom, hallway, dining_room, storage_room, garage, living_room, laundry_room, closet, home_office
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Lightweight

### creditcard (❌ MISS)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Lightweight, Electronic, Fragile

### centerpiece (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: 

### yarn (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, hallway, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: LeisureTask
  - Qualities: Granular, Lightweight

### snack cake (✅ HIT)
- **Ground Truth**: laundry_room, pantry, home_office, bathroom, garage, living_room, storage_room, dining_room, hallway, bedroom, closet, kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### hair dryer (✅ HIT)
- **Ground Truth**: dining_room, bedroom, laundry_room, living_room, hallway, storage_room, pantry, garage, kitchen, bathroom, home_office, closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### mirror (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Rigid, Fragile

### suit (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Rigid, Fragile

### camera (✅ HIT)
- **Ground Truth**: storage_room, hallway, bedroom, home_office, garage, laundry_room, living_room, dining_room, pantry, closet, bathroom, kitchen, drawer, cabinet
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### perfume (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Fragile, Toxic_Hazardous

### jar (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, pantry, hallway, laundry_room, storage_room, living_room, kitchen, bathroom, dining_room, closet, cabinet, fridge, shelf
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: StorageContainerRole

### toy furniture set (✅ HIT)
- **Ground Truth**: hallway, garage, closet, kitchen, bedroom, pantry, bathroom, living_room, home_office, laundry_room, storage_room, dining_room
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### belt (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### portable speaker (✅ HIT)
- **Ground Truth**: living_room, closet, garage, bedroom, dining_room, laundry_room, hallway, bathroom, pantry, storage_room, kitchen, home_office
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Lightweight

### handbag (✅ HIT)
- **Ground Truth**: storage_room, bathroom, hallway, bedroom, living_room, dining_room, garage, closet, home_office, kitchen, laundry_room, pantry
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### paperclip (❌ MISS)
- **Ground Truth**: table, cabinet
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### bookcase (✅ HIT)
- **Ground Truth**: living_room, home_office
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy, Rigid

### blind (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### shredder (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, pantry, dining_room, bedroom, storage_room, living_room, home_office, closet, bathroom, garage, hallway
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### lantern (✅ HIT)
- **Ground Truth**: kitchen, hallway, pantry, storage_room, garage, laundry_room, living_room, bathroom, closet, bedroom, dining_room, home_office
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### software cd (✅ HIT)
- **Ground Truth**: bedroom, bathroom, living_room, hallway, kitchen, laundry_room, garage, pantry, storage_room, home_office, dining_room, closet
- **Clingo Deduced**: bedroom, table, storage_room
- **LLM Extracted Features**:
  - Roles: ConsumableRole, StorageContainerRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight

### cooky (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular

### beanbag (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### cookbook (✅ HIT)
- **Ground Truth**: shelf
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, living_room, home_office, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Rigid

### dish (✅ HIT)
- **Ground Truth**: cabinet, kitchen, pantry, sink, table, shelf
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid

### plum (✅ HIT)
- **Ground Truth**: living_room, dining_room, bedroom, storage_room, home_office, pantry, laundry_room, hallway, closet, bathroom, kitchen, garage, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### power drill (✅ HIT)
- **Ground Truth**: pantry, dining_room, living_room, hallway, laundry_room, kitchen, bedroom, bathroom, closet, garage, home_office, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### soapbottle (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Lightweight, Fragile, Electronic, Washable

### row (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Fragile, Lightweight

### dutch oven (✅ HIT)
- **Ground Truth**: living_room, bedroom, laundry_room, closet, hallway, garage, bathroom, storage_room, kitchen, dining_room, pantry, home_office
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### shelvingunit (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Heavy

### stove (✅ HIT)
- **Ground Truth**: living_room
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### bar (❌ MISS)
- **Ground Truth**: hallway, storage_room
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Heavy

### snail (✅ HIT)
- **Ground Truth**: garden
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Soft_Deformable, Lightweight

### metronome (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: music_room
- **LLM Extracted Features**:
  - Roles: MusicalInstrumentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Electronic

### action figure (✅ HIT)
- **Ground Truth**: living_room, dining_room, laundry_room, storage_room, home_office, pantry, closet, hallway, kitchen, garage, bathroom, bedroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### dogbed (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### peach (✅ HIT)
- **Ground Truth**: living_room, storage_room, garage, bedroom, home_office, closet, bathroom, hallway, dining_room, pantry, kitchen, laundry_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sweater (✅ HIT)
- **Ground Truth**: drawer, closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### washcloth (✅ HIT)
- **Ground Truth**: bathroom, living_room, storage_room, kitchen, dining_room, bedroom, hallway, garage, laundry_room, home_office, pantry, closet
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Soft_Deformable, Washable

### stapler (✅ HIT)
- **Ground Truth**: table, cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Rigid, Heavy

### light (✅ HIT)
- **Ground Truth**: storage_room, closet, table, fridge
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### coffee pods (✅ HIT)
- **Ground Truth**: laundry_room, dining_room, living_room, bedroom, home_office, hallway, kitchen, garage, pantry, bathroom, storage_room, closet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### spraybottle (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Liquid, Gas_Aerosol, Lightweight

### dungeon (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: 

### spatula (✅ HIT)
- **Ground Truth**: kitchen, closet, living_room, hallway, dining_room, home_office, bedroom, pantry, laundry_room, bathroom, garage, storage_room, drawer
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Sharp

### tea (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### aluminumfoil (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Rigid, Lightweight

### tub (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### dishwasher (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: storage_room
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy

### romaine (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### wine glass (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Fragile, Rigid

### yogurt (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### vinyl tape (✅ HIT)
- **Ground Truth**: living_room, closet, hallway, laundry_room, home_office, kitchen, bedroom, storage_room, dining_room, garage, pantry, bathroom
- **Clingo Deduced**: bedroom, closet, shelf, garden, library, hallway, table, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: LeisureTask
  - Qualities: Fragile, Lightweight

### toy (✅ HIT)
- **Ground Truth**: living_room, table, storage_room, bed, closet, drawer
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### computer (❌ MISS)
- **Ground Truth**: library, table
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: WorkStudyTask
  - Tasks: WorkStudyTask
  - Qualities: Electronic, Lightweight

### armoire (❌ MISS)
- **Ground Truth**: bedroom, living_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### hedge (❌ MISS)
- **Ground Truth**: garden
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Rigid, Fragile

### shop (✅ HIT)
- **Ground Truth**: storage_room
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### pepsi (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### pet food supplement (✅ HIT)
- **Ground Truth**: hallway, bedroom, home_office, storage_room, living_room, laundry_room, pantry, dining_room, kitchen, closet, bathroom, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### camper (❌ MISS)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole, StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Heavy

### violin (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: music_room
- **LLM Extracted Features**:
  - Roles: MusicalInstrumentRole
  - Tasks: LeisureTask
  - Qualities: Rigid, Electronic

### virtual reality viewer (✅ HIT)
- **Ground Truth**: hallway, laundry_room, closet, storage_room, living_room, bathroom, pantry, kitchen, bedroom, garage, dining_room, home_office
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### dinner (✅ HIT)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### cola (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### bowl (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, hallway, storage_room, dining_room, closet, home_office, pantry, laundry_room, bathroom, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Rigid

### chocolate box (✅ HIT)
- **Ground Truth**: hallway, laundry_room, kitchen, dining_room, living_room, garage, bedroom, home_office, storage_room, bathroom, closet, pantry
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Perishable, Granular

### socket (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### stamper (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### cushion (✅ HIT)
- **Ground Truth**: kitchen, bedroom, closet, storage_room, garage, home_office, bathroom, dining_room, hallway, living_room, laundry_room, pantry
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight

### toiletpaperhanger (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Lightweight, Rigid

### volume (❌ MISS)
- **Ground Truth**: shelf, library
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Liquid

### plant (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, hallway, living_room, closet, dining_room, kitchen, pantry, bathroom, laundry_room, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### remote control (✅ HIT)
- **Ground Truth**: pantry, bathroom, dining_room, bedroom, laundry_room, home_office, storage_room, kitchen, closet, living_room, garage, hallway
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Electronic

### invitation card (✅ HIT)
- **Ground Truth**: bedroom, hallway, garage, dining_room, pantry, kitchen, closet, laundry_room, home_office, living_room, storage_room, bathroom
- **Clingo Deduced**: bedroom, bathroom, shelf, garden, library, trash, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: DocumentRole
  - Tasks: LeisureTask
  - Qualities: 

### tampon (✅ HIT)
- **Ground Truth**: bedroom, storage_room, living_room, laundry_room, hallway, home_office, pantry, kitchen, bathroom, dining_room, garage, closet
- **Clingo Deduced**: closet, cabinet, bathroom, library
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Fragile, Toxic_Hazardous

### hard drive case (✅ HIT)
- **Ground Truth**: dining_room, bathroom, bedroom, living_room, hallway, storage_room, laundry_room, kitchen, pantry, home_office, garage, closet
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Rigid, Electronic, Heavy

### wood (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### jam (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### desk (✅ HIT)
- **Ground Truth**: living_room, bedroom, library, home_office
- **Clingo Deduced**: bedroom, garden, library, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Rigid, Heavy

### scrubbrush (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Fragile, Lightweight

### pillowcase (✅ HIT)
- **Ground Truth**: bed, bedroom
- **Clingo Deduced**: bedroom, hallway, cabinet, table
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: LeisureTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### sparkling water (✅ HIT)
- **Ground Truth**: bedroom, hallway, garage, dining_room, pantry, kitchen, closet, laundry_room, home_office, living_room, storage_room, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### fork (✅ HIT)
- **Ground Truth**: kitchen, hallway, pantry, storage_room, garage, laundry_room, living_room, bathroom, closet, bedroom, dining_room, home_office
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### mascara (✅ HIT)
- **Ground Truth**: bedroom, bathroom, living_room, hallway, kitchen, laundry_room, garage, pantry, storage_room, home_office, dining_room, closet
- **Clingo Deduced**: cabinet, bathroom, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: HygieneTask
  - Qualities: Liquid, Fragile, Lightweight

### footstool (✅ HIT)
- **Ground Truth**: bedroom, bathroom, table, living_room
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Heavy, Rigid

### candelabra (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### jenga (✅ HIT)
- **Ground Truth**: dining_room, bedroom, living_room, garage, kitchen, storage_room, home_office, closet, hallway, laundry_room, bathroom, pantry
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Granular, Lightweight

### plant saucer (✅ HIT)
- **Ground Truth**: living_room, storage_room, garage, hallway, laundry_room, bedroom, home_office, bathroom, closet, dining_room, kitchen, pantry
- **Clingo Deduced**: bedroom, closet, garden, living_room, storage_room, table, drawer
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile

### master chef can (❌ MISS)
- **Ground Truth**: closet, living_room, bedroom, bathroom, dining_room, pantry, hallway, home_office, laundry_room, storage_room, kitchen, garage
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: 

### whisk (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid

### gel (✅ HIT)
- **Ground Truth**: bathroom, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Perishable

### butter dish (✅ HIT)
- **Ground Truth**: bedroom, living_room, garage, hallway, laundry_room, closet, storage_room, bathroom, pantry, home_office, dining_room, kitchen
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### microwave (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: CookwareRole
  - Qualities: Electronic, Heavy

### fruit snack (✅ HIT)
- **Ground Truth**: living_room, kitchen, hallway, dining_room, closet, bathroom, bedroom, storage_room, pantry, garage, laundry_room, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### tissuebox (✅ HIT)
- **Ground Truth**: living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Fragile

### john (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: Human
  - Tasks: 
  - Qualities: 

### peppermint (✅ HIT)
- **Ground Truth**: home_office, laundry_room, kitchen, hallway, living_room, dining_room, storage_room, bedroom, closet, pantry, bathroom, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### sheet (✅ HIT)
- **Ground Truth**: bedroom, drawer
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, hallway, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: BeddingRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### donut (✅ HIT)
- **Ground Truth**: hallway, home_office, living_room, storage_room, garage, pantry, laundry_room, closet, dining_room, bedroom, kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### xylitol sweetener (✅ HIT)
- **Ground Truth**: garage, bedroom, home_office, closet, laundry_room, living_room, kitchen, storage_room, hallway, pantry, dining_room, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Granular

### table lamp (✅ HIT)
- **Ground Truth**: living_room, bedroom, hallway, bathroom, closet, pantry, laundry_room, dining_room, home_office, garage, kitchen, storage_room
- **Clingo Deduced**: bedroom, closet, shelf, storage_room, drawer, fridge
- **LLM Extracted Features**:
  - Roles: LightingRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### drink (✅ HIT)
- **Ground Truth**: cabinet, fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### canister (✅ HIT)
- **Ground Truth**: bedroom, hallway, living_room, closet, kitchen, home_office, dining_room, storage_room, garage, pantry, laundry_room, bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight, Rigid

### jean (✅ HIT)
- **Ground Truth**: bedroom, closet, drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### food (✅ HIT)
- **Ground Truth**: cabinet, fridge, kitchen, pantry, shelf, table
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable

### oven (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### paste (✅ HIT)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Liquid, Washable

### dollhouse toy (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, hallway, garage, home_office, dining_room, living_room, kitchen, bathroom, pantry, closet, storage_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile

### paper bag (✅ HIT)
- **Ground Truth**: pantry, bedroom, living_room, kitchen, storage_room, bathroom, dining_room, closet, hallway, garage, laundry_room, home_office
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Fragile

### saute pan (✅ HIT)
- **Ground Truth**: garage, living_room, kitchen, dining_room, bedroom, pantry, laundry_room, bathroom, hallway, home_office, closet, storage_room
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid, Heavy

### video game (✅ HIT)
- **Ground Truth**: laundry_room, bedroom, living_room, pantry, hallway, storage_room, bathroom, kitchen, home_office, garage, closet, dining_room
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: 

### watch (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### cloth (✅ HIT)
- **Ground Truth**: bedroom, bathroom, storage_room, hallway, living_room, dining_room, garage, closet, home_office, kitchen, laundry_room, pantry
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### wateringcan (❌ MISS)
- **Ground Truth**: living_room
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: GardeningTask
  - Qualities: Liquid, Heavy

### celery (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### laundry (❌ MISS)
- **Ground Truth**: storage_room, kitchen
- **Clingo Deduced**: bedroom, bathroom, sink, library
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### gauze (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bathroom
- **LLM Extracted Features**:
  - Roles: HygieneToolRole
  - Tasks: HygieneTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### boot (✅ HIT)
- **Ground Truth**: living_room, bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Fragile, Rigid

### candy (✅ HIT)
- **Ground Truth**: closet, laundry_room, bathroom, living_room, home_office, pantry, kitchen, garage, bedroom, hallway, storage_room, dining_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Lightweight

### faucet (✅ HIT)
- **Ground Truth**: bathroom, kitchen, sink
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, shelf, library, living_room, bed, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: HygieneTask
  - Qualities: Liquid

### toy fishing (✅ HIT)
- **Ground Truth**: home_office, laundry_room, bedroom, closet, hallway, dining_room, garage, pantry, living_room, storage_room, bathroom, kitchen
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
- **LLM Extracted Features**:
  - Roles: EntertainmentRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Fragile

### pan (✅ HIT)
- **Ground Truth**: kitchen, pantry, bathroom, hallway, living_room, closet, bedroom, laundry_room, storage_room, garage, dining_room, home_office
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Rigid

### lego duplo (✅ HIT)
- **Ground Truth**: laundry_room, living_room, hallway, dining_room, home_office, bedroom, garage, storage_room, pantry, closet, kitchen, bathroom
- **Clingo Deduced**: bedroom, pantry, playroom, shelf, closet, garden, music_room, library, cabinet, living_room, storage_room, table, bed, drawer
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
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: Lightweight

### pencil case (✅ HIT)
- **Ground Truth**: closet, hallway, pantry, bedroom, laundry_room, bathroom, living_room, storage_room, kitchen, dining_room, home_office, garage
- **Clingo Deduced**: garden, library, living_room, bed, drawer, bedroom, cabinet, bathroom, pantry, kitchen, dining_room, trash, storage_room, garage, laundry_room, closet, shelf, hallway, table, fridge
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: StorageTask
  - Qualities: Lightweight, Fragile

### coronet (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, shelf, garden, library
- **LLM Extracted Features**:
  - Roles: DecorationRole
  - Tasks: 
  - Qualities: Lightweight, Fragile

### tablet stand (✅ HIT)
- **Ground Truth**: hallway, bedroom, home_office, storage_room, living_room, laundry_room, pantry, dining_room, kitchen, closet, bathroom, garage
- **Clingo Deduced**: bedroom, bathroom, playroom, shelf, closet, music_room, library, living_room, drawer, garage
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Rigid

### set-top box (✅ HIT)
- **Ground Truth**: living_room, bedroom, dining_room, hallway, laundry_room, storage_room, kitchen, home_office, pantry, garage, closet, bathroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, library, living_room, table
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: LeisureTask
  - Qualities: Electronic, Heavy

### bookend (❌ MISS)
- **Ground Truth**: living_room, laundry_room, bedroom, bathroom, closet, pantry, hallway, garage, dining_room, home_office, kitchen, storage_room, shelf, library
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### jacket (✅ HIT)
- **Ground Truth**: closet
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### neck rest (✅ HIT)
- **Ground Truth**: living_room, kitchen, pantry, closet, laundry_room, hallway, bedroom, garage, dining_room, storage_room, bathroom, home_office
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Lightweight, Soft_Deformable

### paint bottle set (✅ HIT)
- **Ground Truth**: bathroom, storage_room, hallway, bedroom, pantry, laundry_room, home_office, dining_room, living_room, closet, kitchen, garage
- **Clingo Deduced**: bedroom, closet, library, storage_room, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: MaintenanceTask
  - Qualities: Liquid, Heavy

### clay (✅ HIT)
- **Ground Truth**: kitchen, living_room, garage, bedroom, dining_room, laundry_room, home_office, hallway, bathroom, pantry, storage_room, closet
- **Clingo Deduced**: bathroom, pantry, closet, shelf, kitchen, garden, cabinet, table, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: FoodPreparationTask
  - Qualities: Granular, Lightweight

### peppershaker (✅ HIT)
- **Ground Truth**: kitchen
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Fragile

### chocolate milk pods (✅ HIT)
- **Ground Truth**: hallway, laundry_room, kitchen, dining_room, living_room, garage, bedroom, home_office, storage_room, bathroom, closet, pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### wireless accessory (❌ MISS)
- **Ground Truth**: bathroom, living_room, garage, closet, pantry, bedroom, hallway, kitchen, storage_room, laundry_room, dining_room, home_office
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Lightweight, Electronic

### mouse pad (✅ HIT)
- **Ground Truth**: home_office, pantry, hallway, laundry_room, living_room, closet, bedroom, bathroom, storage_room, kitchen, garage, dining_room
- **Clingo Deduced**: bedroom, garden, library, living_room, storage_room, home_office
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: WorkStudyTask
  - Qualities: Lightweight, Soft_Deformable

### frame (✅ HIT)
- **Ground Truth**: bed
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

### dishsponge (✅ HIT)
- **Ground Truth**: kitchen, bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Soft_Deformable, Lightweight

### voltmeter (✅ HIT)
- **Ground Truth**: drawer
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Electronic, Lightweight

### multiport hub (❌ MISS)
- **Ground Truth**: living_room, bathroom, closet, garage, hallway, laundry_room, kitchen, dining_room, bedroom, storage_room, home_office, pantry
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### window (✅ HIT)
- **Ground Truth**: kitchen, living_room, bedroom, bathroom
- **Clingo Deduced**: bedroom, bathroom, closet, garden, music_room, library, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: LeisureTask
  - Qualities: Transparent, Rigid

### dog bowl (✅ HIT)
- **Ground Truth**: dining_room, laundry_room, bedroom, bathroom, living_room, storage_room, pantry, hallway, kitchen, closet, home_office, garage
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Fragile

### antidepressant (❌ MISS)
- **Ground Truth**: kitchen, closet, bedroom, laundry_room, hallway, home_office, garage, living_room, bathroom, storage_room, pantry, dining_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: 
  - Qualities: Perishable, Toxic_Hazardous

### knife (✅ HIT)
- **Ground Truth**: kitchen, laundry_room, living_room, hallway, pantry, closet, bathroom, home_office, garage, bedroom, dining_room, storage_room, drawer
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Sharp, Rigid

### tumbler (✅ HIT)
- **Ground Truth**: bathroom, living_room, bedroom, garage, storage_room, laundry_room, kitchen, pantry, home_office, hallway, closet, dining_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, dining_room, library, cabinet, living_room, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Lightweight

### sander (❌ MISS)
- **Ground Truth**: cabinet
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, kitchen, garden, music_room, hallway, trash, library, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: MaintenanceTask
  - Qualities: Heavy, Rigid

### furnace (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: 
  - Qualities: Heated, Heavy

### pyjama (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight

### wipe warmer (✅ HIT)
- **Ground Truth**: hallway, home_office, living_room, bedroom, pantry, dining_room, bathroom, garage, kitchen, closet, laundry_room, storage_room
- **Clingo Deduced**: bathroom
- **LLM Extracted Features**:
  - Roles: ApplianceRole
  - Tasks: HygieneTask
  - Qualities: Heated

### fireplace (❌ MISS)
- **Ground Truth**: living_room, dining_room, storage_room, bedroom
- **Clingo Deduced**: *None (No rule matched)*
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: LeisureTask
  - Qualities: Heated

### toiletpaper (✅ HIT)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### bathtubbasin (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy

### vacuumcleaner (✅ HIT)
- **Ground Truth**: bedroom
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, library, hallway, cabinet, storage_room, table
- **LLM Extracted Features**:
  - Roles: CleaningToolRole
  - Tasks: CleaningTask
  - Qualities: Electronic, Heavy

### spoon (✅ HIT)
- **Ground Truth**: kitchen, hallway, storage_room, bedroom, dining_room, garage, living_room, bathroom, laundry_room, pantry, closet, home_office, bed, sink, table
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Lightweight, Rigid, Sharp

### graphics card (❌ MISS)
- **Ground Truth**: storage_room, dining_room, laundry_room, hallway, bathroom, kitchen, pantry, home_office, bedroom, living_room, closet, garage
- **Clingo Deduced**: shelf, drawer
- **LLM Extracted Features**:
  - Roles: ToolRole
  - Tasks: 
  - Qualities: Electronic, Heavy

### fruit (✅ HIT)
- **Ground Truth**: fridge, pantry
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### chocolate powder (✅ HIT)
- **Ground Truth**: closet, hallway, living_room, storage_room, dining_room, bathroom, garage, bedroom, laundry_room, pantry, kitchen, home_office
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Granular, Perishable

### beard color gel (✅ HIT)
- **Ground Truth**: pantry, home_office, hallway, kitchen, bathroom, dining_room, bedroom, living_room, laundry_room, garage, closet, storage_room
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Liquid, Toxic_Hazardous

### bed (✅ HIT)
- **Ground Truth**: bedroom, storage_room
- **Clingo Deduced**: bedroom, closet, garden, trash, living_room, storage_room
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: SleepingTask
  - Qualities: Soft_Deformable, Heavy

### rafter (❌ MISS)
- **Ground Truth**: storage_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Rigid, Heavy

### turkey (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Fragile

### chesterfield (❌ MISS)
- **Ground Truth**: hallway, living_room
- **Clingo Deduced**: garden
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: 
  - Qualities: Heavy, Rigid

### teapot (✅ HIT)
- **Ground Truth**: dining_room, bedroom, kitchen, closet, living_room, laundry_room, storage_room, home_office, bathroom, pantry, garage, hallway
- **Clingo Deduced**: sink, bathroom, closet, kitchen, library, trash, cabinet, table, drawer
- **LLM Extracted Features**:
  - Roles: UtensilRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### clothing (✅ HIT)
- **Ground Truth**: closet, drawer
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Lightweight, Soft_Deformable, Washable

### custard (✅ HIT)
- **Ground Truth**: fridge
- **Clingo Deduced**: bedroom, sink, bathroom, pantry, closet, shelf, dining_room, garden, library, trash, cabinet, living_room, storage_room, table, garage, drawer, fridge
- **LLM Extracted Features**:
  - Roles: ConsumableRole
  - Tasks: EatingDrinkingTask
  - Qualities: Perishable, Liquid

### garbagebag (✅ HIT)
- **Ground Truth**: kitchen, bedroom
- **Clingo Deduced**: bedroom, bathroom, pantry, closet, kitchen, garden, library, trash, cabinet, living_room, storage_room, table, garage
- **LLM Extracted Features**:
  - Roles: StorageContainerRole, WasteRole
  - Tasks: WasteDisposalTask
  - Qualities: Lightweight

### handtowelholder (❌ MISS)
- **Ground Truth**: bathroom
- **Clingo Deduced**: bedroom, storage_room
- **LLM Extracted Features**:
  - Roles: StorageContainerRole
  - Tasks: 
  - Qualities: 

### kettle (❌ MISS)
- **Ground Truth**: kitchen
- **Clingo Deduced**: bathroom, pantry, closet, garden, cabinet, living_room, drawer
- **LLM Extracted Features**:
  - Roles: CookwareRole
  - Tasks: FoodPreparationTask
  - Qualities: Heated, Heavy

### bath sheet (✅ HIT)
- **Ground Truth**: laundry_room, living_room, bedroom, closet, storage_room, bathroom, hallway, dining_room, garage, pantry, home_office, kitchen
- **Clingo Deduced**: bedroom, bathroom, closet, shelf, kitchen, library, hallway, living_room, storage_room, table, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: ClothingRole
  - Tasks: DressingTask
  - Qualities: Soft_Deformable, Lightweight, Washable

### column (❌ MISS)
- **Ground Truth**: table
- **Clingo Deduced**: bedroom, closet, shelf, kitchen, garden, music_room, hallway, library, living_room, home_office, storage_room, bed, drawer, garage
- **LLM Extracted Features**:
  - Roles: FurnitureRole
  - Tasks: StorageTask
  - Qualities: Rigid, Heavy

