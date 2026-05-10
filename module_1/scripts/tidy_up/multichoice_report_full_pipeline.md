# Multichoice Evaluation Report — Tidy-Up (full_pipeline)

- **Model**: `mistral-medium-latest`
- **Ablation**: `none`
- **Total Questions**: 50
- **Correct**: 26
- **Accuracy**: 0.5200 (52.00%)
- **LLM Calls**: 100

## Diagnostic Stats

### Clingo Activity
- Produced ranking: 50 / 50
- Empty ranking: 0 / 50

### Hint Mode Distribution
- Engine ignored (0 matches): 7 / 50
- Weak hint (1 match or low score): 20 / 50
- Medium hint: 9 / 50
- Strong hint (high score): 14 / 50

### Correct Answer Coverage
- Correct canonical in Clingo ranking: 27 / 50
- Correct canonical NOT in ranking (mappable): 17 / 50
- Correct answer unmappable (Category A): 6 / 50

### Decision Driver
| Driver | Count | Correct | Wrong | Accuracy |
|---|---|---|---|---|
| Clingo-backed | 31 | 16 | 15 | 51.6% |
| LLM-only | 19 | 10 | 9 | 52.6% |

## Errors

| Object | Correct | Predicted | Clingo Ranking |
|---|---|---|---|
| action figure | pantry room | laundry room | library, drawer, bed, playroom, bedroom |
| adjustable wrench | bedroom | loft | bedroom, garage, bathroom, kitchen, library |
| android figure | corridor | separate room | library, drawer, bed, playroom, bedroom |
| antidepressant | pantry room | larder | bathroom, closet, garden, pantry, storage_room |
| appliance | home | chest | garage, library, bedroom, fridge, kitchen |
| article | press | drawer | bed, drawer, table, fridge, library |
| asparagus | oven | pantry room | kitchen, pantry, storage_room, bathroom, drawer |
| backpack | storage room | children's room | bedroom, home_office, dining_room, shelf, closet |
| balustrade | grand ballroom | motel room | bedroom, garden, kitchen, closet, garage |
| banana | closet | plate | pantry, bedroom, bathroom, drawer, kitchen |
| bar | oven | backyard | bedroom, garden, garage, living_room, closet |
| baseball | lobby | livingroom | library, drawer, bed, playroom, bedroom |
| baseballbat | bedroom | den | living_room, fridge, garage, home_office, library |
| basil | garden | jar | pantry, storage_room, bathroom, fridge, garden |
| basketball | bedroom | cabinet | library, drawer, bed, playroom, bedroom |
| bat | attic | different room | library, drawer, bed, playroom, bedroom |
| batter | box | can | kitchen, pantry, storage_room, trash, bathroom |
| battery | childs room | backyard | bathroom, library, storage_room, bedroom, drawer |
| beacon | range | utility room | bathroom, kitchen |
| beard color gel | utility room | tin | library, cabinet, garden, bathroom, sink |
| beer | can | engine | pantry, garage, bathroom, bedroom, closet |
| beet | can | container | kitchen, pantry, storage_room, bathroom, drawer |
| beverage | bottle | dining room | pantry, garage, bathroom, bedroom, closet |
| binoculars | suitcase | shelf | shelf, bedroom, kitchen, living_room, table |

