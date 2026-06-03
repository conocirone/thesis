% ==========================================
% BACKGROUND KNOWLEDGE FORMALE (SOMA)
% Validated with ASP integrity constraints
% ==========================================

% --- account book ---
obj(account_book).
hasPhysicalQuality(account_book, lightweight).
hasRole(account_book, documentRole).
affordsTask(account_book, workStudyTask).

% --- acne medication ---
obj(acne_medication).
hasPhysicalQuality(acne_medication, perishable).
hasPhysicalQuality(acne_medication, toxic_Hazardous).
hasRole(acne_medication, consumableRole).
affordsTask(acne_medication, hygieneTask).

% --- address label ---
obj(address_label).
hasPhysicalQuality(address_label, fragile).
hasPhysicalQuality(address_label, lightweight).
hasRole(address_label, documentRole).

% --- air conditioner ---
obj(air_conditioner).
hasPhysicalQuality(air_conditioner, electronic).
hasPhysicalQuality(air_conditioner, heavy).
hasPhysicalQuality(air_conditioner, requiresCooling).
hasRole(air_conditioner, applianceRole).

% --- album ---
obj(album).
hasPhysicalQuality(album, lightweight).
hasRole(album, documentRole).
affordsTask(album, leisureTask).

% --- alcohol ---
obj(alcohol).
hasPhysicalQuality(alcohol, flammable).
hasRole(alcohol, consumableRole).

% --- aluminum foil ---
obj(aluminum_foil).
hasPhysicalQuality(aluminum_foil, fragile).
hasPhysicalQuality(aluminum_foil, lightweight).
hasPhysicalQuality(aluminum_foil, rigid).
hasRole(aluminum_foil, cookwareRole).
affordsTask(aluminum_foil, foodPreparationTask).

% --- apple ---
obj(apple).
hasPhysicalQuality(apple, fragile).
hasPhysicalQuality(apple, perishable).
hasRole(apple, consumableRole).
affordsTask(apple, eatingDrinkingTask).

% --- appointment book ---
obj(appointment_book).
hasRole(appointment_book, documentRole).

% --- arch ---
obj(arch).
hasPhysicalQuality(arch, heavy).
hasPhysicalQuality(arch, rigid).
hasRole(arch, furnitureRole).

% --- armchair ---
obj(armchair).
hasPhysicalQuality(armchair, heavy).
hasRole(armchair, furnitureRole).
affordsTask(armchair, leisureTask).

% --- armoire ---
obj(armoire).
hasPhysicalQuality(armoire, heavy).
hasPhysicalQuality(armoire, rigid).
hasRole(armoire, furnitureRole).
affordsTask(armoire, storageTask).

% --- artichoke hearts ---
obj(artichoke_hearts).
hasPhysicalQuality(artichoke_hearts, perishable).
hasRole(artichoke_hearts, consumableRole).
affordsTask(artichoke_hearts, eatingDrinkingTask).

% --- artichokes ---
obj(artichokes).
hasPhysicalQuality(artichokes, perishable).
hasRole(artichokes, consumableRole).
affordsTask(artichokes, eatingDrinkingTask).

% --- aspirin ---
obj(aspirin).
hasPhysicalQuality(aspirin, perishable).
hasPhysicalQuality(aspirin, toxic_Hazardous).
hasRole(aspirin, consumableRole).
affordsTask(aspirin, eatingDrinkingTask).

% --- attache case ---
obj(attache_case).
hasPhysicalQuality(attache_case, lightweight).
hasPhysicalQuality(attache_case, soft_Deformable).
hasRole(attache_case, storageContainerRole).
affordsTask(attache_case, workStudyTask).

% --- bag ---
obj(bag).
hasPhysicalQuality(bag, hasContainer).
hasRole(bag, storageContainerRole).
affordsTask(bag, storageTask).

% --- baking oven ---
obj(baking_oven).
hasPhysicalQuality(baking_oven, heated).
hasRole(baking_oven, cookwareRole).
affordsTask(baking_oven, foodPreparationTask).

% --- ballpoint pen ---
obj(ballpoint_pen).
hasPhysicalQuality(ballpoint_pen, lightweight).
hasPhysicalQuality(ballpoint_pen, rigid).
hasRole(ballpoint_pen, toolRole).

% --- banana ---
obj(banana).
hasPhysicalQuality(banana, perishable).
hasRole(banana, consumableRole).
affordsTask(banana, eatingDrinkingTask).

% --- bandages ---
obj(bandages).
hasPhysicalQuality(bandages, lightweight).
hasPhysicalQuality(bandages, washable).
hasRole(bandages, safetyEquipmentRole).
affordsTask(bandages, hygieneTask).

% --- bar stool ---
obj(bar_stool).
hasPhysicalQuality(bar_stool, heavy).
hasPhysicalQuality(bar_stool, rigid).
hasRole(bar_stool, furnitureRole).
affordsTask(bar_stool, leisureTask).

% --- barbecue ---
obj(barbecue).
hasPhysicalQuality(barbecue, heated).
hasRole(barbecue, cookwareRole).
hasRole(barbecue, toolRole).
affordsTask(barbecue, foodPreparationTask).

% --- basket ---
obj(basket).
hasPhysicalQuality(basket, lightweight).
hasPhysicalQuality(basket, rigid).
hasRole(basket, storageContainerRole).
affordsTask(basket, storageTask).

% --- basket with handle ---
obj(basket_with_handle).
hasPhysicalQuality(basket_with_handle, hasContainer).
hasPhysicalQuality(basket_with_handle, lightweight).
hasRole(basket_with_handle, storageContainerRole).
affordsTask(basket_with_handle, storageTask).

% --- bath ---
obj(bath).
hasPhysicalQuality(bath, soft_Deformable).
hasPhysicalQuality(bath, washable).
hasRole(bath, cleaningToolRole).
affordsTask(bath, hygieneTask).

% --- bath shower ---
obj(bath_shower).
hasPhysicalQuality(bath_shower, electronic).
hasPhysicalQuality(bath_shower, heavy).
hasRole(bath_shower, cleaningToolRole).
affordsTask(bath_shower, hygieneTask).

% --- bathroom ---
obj(bathroom).
hasPhysicalQuality(bathroom, heavy).
hasRole(bathroom, furnitureRole).

% --- battery charger ---
obj(battery_charger).
hasPhysicalQuality(battery_charger, electronic).
hasPhysicalQuality(battery_charger, heavy).
hasRole(battery_charger, toolRole).
affordsTask(battery_charger, maintenanceTask).

% --- bay window ---
obj(bay_window).
hasPhysicalQuality(bay_window, heavy).
hasPhysicalQuality(bay_window, rigid).
hasRole(bay_window, furnitureRole).

% --- beam ---
obj(beam).
hasPhysicalQuality(beam, heavy).
hasPhysicalQuality(beam, rigid).
hasRole(beam, toolRole).
affordsTask(beam, maintenanceTask).

% --- bean bag chair ---
obj(bean_bag_chair).
hasPhysicalQuality(bean_bag_chair, lightweight).
hasPhysicalQuality(bean_bag_chair, soft_Deformable).
hasRole(bean_bag_chair, furnitureRole).
affordsTask(bean_bag_chair, leisureTask).

% --- beanbag ---
obj(beanbag).
hasPhysicalQuality(beanbag, lightweight).
hasPhysicalQuality(beanbag, soft_Deformable).
hasRole(beanbag, furnitureRole).
affordsTask(beanbag, leisureTask).

% --- bed ---
obj(bed).
hasPhysicalQuality(bed, heavy).
hasPhysicalQuality(bed, soft_Deformable).
hasRole(bed, furnitureRole).
affordsTask(bed, sleepingTask).

% --- bed sheet ---
obj(bed_sheet).
hasPhysicalQuality(bed_sheet, soft_Deformable).
hasPhysicalQuality(bed_sheet, washable).
hasRole(bed_sheet, beddingRole).
affordsTask(bed_sheet, sleepingTask).

% --- bedroom ---
obj(bedroom).
hasRole(bedroom, furnitureRole).
affordsTask(bedroom, sleepingTask).

% --- beer mug ---
obj(beer_mug).
hasPhysicalQuality(beer_mug, heavy).
hasPhysicalQuality(beer_mug, liquid).
hasRole(beer_mug, utensilRole).
affordsTask(beer_mug, eatingDrinkingTask).

% --- beets ---
obj(beets).
hasPhysicalQuality(beets, perishable).
hasRole(beets, consumableRole).
affordsTask(beets, eatingDrinkingTask).

% --- bell ---
obj(bell).
hasPhysicalQuality(bell, lightweight).
hasPhysicalQuality(bell, rigid).
hasRole(bell, toolRole).
affordsTask(bell, maintenanceTask).

% --- belt ---
obj(belt).
hasPhysicalQuality(belt, lightweight).
hasPhysicalQuality(belt, soft_Deformable).
hasRole(belt, clothingRole).
affordsTask(belt, dressingTask).

% --- bench ---
obj(bench).
hasPhysicalQuality(bench, heavy).
hasPhysicalQuality(bench, rigid).
hasRole(bench, furnitureRole).
affordsTask(bench, storageTask).

% --- beverage ---
obj(beverage).
hasPhysicalQuality(beverage, liquid).
hasRole(beverage, consumableRole).
affordsTask(beverage, eatingDrinkingTask).

% --- bicycle storage area ---
obj(bicycle_storage_area).
hasRole(bicycle_storage_area, storageContainerRole).
affordsTask(bicycle_storage_area, storageTask).

% --- bicycles ---
obj(bicycles).
hasPhysicalQuality(bicycles, heavy).
hasPhysicalQuality(bicycles, rigid).

% --- bike ---
obj(bike).
hasPhysicalQuality(bike, heavy).
hasPhysicalQuality(bike, rigid).
hasRole(bike, furnitureRole).
affordsTask(bike, leisureTask).

% --- bill file ---
obj(bill_file).
hasPhysicalQuality(bill_file, lightweight).
hasPhysicalQuality(bill_file, washable).
hasRole(bill_file, storageContainerRole).
affordsTask(bill_file, storageTask).

% --- binder ---
obj(binder).
hasPhysicalQuality(binder, lightweight).
hasPhysicalQuality(binder, rigid).
hasRole(binder, storageContainerRole).
affordsTask(binder, storageTask).

% --- bird ---
obj(bird).
hasPhysicalQuality(bird, fragile).
hasPhysicalQuality(bird, lightweight).
hasRole(bird, entertainmentRole).
affordsTask(bird, leisureTask).

% --- birds ---
obj(birds).
hasPhysicalQuality(birds, lightweight).
hasPhysicalQuality(birds, soft_Deformable).
hasRole(birds, entertainmentRole).
affordsTask(birds, leisureTask).

% --- birth control pill ---
obj(birth_control_pill).
hasPhysicalQuality(birth_control_pill, liquid).
hasPhysicalQuality(birth_control_pill, perishable).
hasRole(birth_control_pill, consumableRole).
affordsTask(birth_control_pill, eatingDrinkingTask).

% --- blanket ---
obj(blanket).
hasPhysicalQuality(blanket, soft_Deformable).
hasPhysicalQuality(blanket, washable).
hasRole(blanket, beddingRole).
affordsTask(blanket, sleepingTask).

% --- blowdryer ---
obj(blowdryer).
hasPhysicalQuality(blowdryer, electronic).
hasPhysicalQuality(blowdryer, heavy).
hasRole(blowdryer, applianceRole).
affordsTask(blowdryer, leisureTask).

% --- board game ---
obj(board_game).
hasRole(board_game, entertainmentRole).
affordsTask(board_game, leisureTask).

% --- bone ---
obj(bone).
hasPhysicalQuality(bone, fragile).
hasPhysicalQuality(bone, heavy).
hasRole(bone, consumableRole).
affordsTask(bone, foodPreparationTask).

% --- bones ---
obj(bones).
hasPhysicalQuality(bones, fragile).
hasPhysicalQuality(bones, rigid).
hasRole(bones, toolRole).

% --- book ---
obj(book).
hasPhysicalQuality(book, lightweight).
hasPhysicalQuality(book, washable).
hasRole(book, documentRole).
affordsTask(book, leisureTask).

% --- book end ---
obj(book_end).
hasPhysicalQuality(book_end, heavy).
hasPhysicalQuality(book_end, rigid).
hasRole(book_end, furnitureRole).
affordsTask(book_end, storageTask).

% --- bookcase ---
obj(bookcase).
hasPhysicalQuality(bookcase, heavy).
hasPhysicalQuality(bookcase, rigid).
hasRole(bookcase, storageContainerRole).
affordsTask(bookcase, storageTask).

% --- bookend ---
obj(bookend).
hasPhysicalQuality(bookend, heavy).
hasPhysicalQuality(bookend, rigid).
hasRole(bookend, furnitureRole).
affordsTask(bookend, storageTask).

% --- books ---
obj(books).
hasPhysicalQuality(books, lightweight).
hasPhysicalQuality(books, washable).
hasRole(books, documentRole).
affordsTask(books, workStudyTask).

% --- bookshelf ---
obj(bookshelf).
hasPhysicalQuality(bookshelf, heavy).
hasPhysicalQuality(bookshelf, rigid).
hasRole(bookshelf, storageContainerRole).
affordsTask(bookshelf, storageTask).

% --- boots ---
obj(boots).
hasPhysicalQuality(boots, heavy).
hasPhysicalQuality(boots, soft_Deformable).
hasRole(boots, clothingRole).
affordsTask(boots, dressingTask).

% --- bottle ---
obj(bottle).
hasPhysicalQuality(bottle, hasContainer).
hasRole(bottle, storageContainerRole).
affordsTask(bottle, eatingDrinkingTask).

% --- bottled water ---
obj(bottled_water).
hasPhysicalQuality(bottled_water, liquid).
hasRole(bottled_water, consumableRole).
affordsTask(bottled_water, eatingDrinkingTask).

% --- bowl ---
obj(bowl).
hasPhysicalQuality(bowl, hasContainer).
hasRole(bowl, storageContainerRole).
affordsTask(bowl, eatingDrinkingTask).
affordsTask(bowl, foodPreparationTask).

% --- box ---
obj(box).
hasPhysicalQuality(box, heavy).
hasPhysicalQuality(box, rigid).
hasRole(box, storageContainerRole).
affordsTask(box, storageTask).

% --- boxes ---
obj(boxes).
hasPhysicalQuality(boxes, heavy).
hasPhysicalQuality(boxes, rigid).
hasRole(boxes, storageContainerRole).
affordsTask(boxes, storageTask).

% --- bra ---
obj(bra).
hasPhysicalQuality(bra, lightweight).
hasPhysicalQuality(bra, soft_Deformable).
hasRole(bra, clothingRole).
affordsTask(bra, dressingTask).

% --- bread ---
obj(bread).
hasPhysicalQuality(bread, granular).
hasPhysicalQuality(bread, perishable).
hasRole(bread, consumableRole).
affordsTask(bread, eatingDrinkingTask).
affordsTask(bread, foodPreparationTask).

% --- broccoli ---
obj(broccoli).
hasPhysicalQuality(broccoli, granular).
hasPhysicalQuality(broccoli, perishable).
hasRole(broccoli, consumableRole).
affordsTask(broccoli, eatingDrinkingTask).

% --- broken glass ---
obj(broken_glass).
hasPhysicalQuality(broken_glass, fragile).
hasPhysicalQuality(broken_glass, sharp).
hasRole(broken_glass, wasteRole).

% --- broom ---
obj(broom).
hasPhysicalQuality(broom, fragile).
hasPhysicalQuality(broom, lightweight).
hasRole(broom, cleaningToolRole).
affordsTask(broom, cleaningTask).

% --- bucket ---
obj(bucket).
hasPhysicalQuality(bucket, hasContainer).
hasRole(bucket, storageContainerRole).
affordsTask(bucket, storageTask).

% --- bulb ---
obj(bulb).
hasPhysicalQuality(bulb, electronic).
hasRole(bulb, applianceRole).
affordsTask(bulb, leisureTask).

% --- bullet ---
obj(bullet).
hasPhysicalQuality(bullet, sharp).
hasRole(bullet, toolRole).
affordsTask(bullet, maintenanceTask).

% --- bungalow ---
obj(bungalow).
hasRole(bungalow, furnitureRole).

% --- bureau ---
obj(bureau).
hasPhysicalQuality(bureau, heavy).
hasPhysicalQuality(bureau, rigid).
hasRole(bureau, furnitureRole).
affordsTask(bureau, storageTask).

% --- bus seat ---
obj(bus_seat).
hasPhysicalQuality(bus_seat, lightweight).
hasPhysicalQuality(bus_seat, soft_Deformable).
hasRole(bus_seat, furnitureRole).
affordsTask(bus_seat, leisureTask).

% --- butter ---
obj(butter).
hasPhysicalQuality(butter, granular).
hasPhysicalQuality(butter, perishable).
hasRole(butter, consumableRole).
affordsTask(butter, eatingDrinkingTask).

% --- buttons ---
obj(buttons).
hasPhysicalQuality(buttons, lightweight).
hasPhysicalQuality(buttons, rigid).
hasRole(buttons, utensilRole).

% --- cabbage ---
obj(cabbage).
hasPhysicalQuality(cabbage, granular).
hasPhysicalQuality(cabbage, perishable).
hasRole(cabbage, consumableRole).
affordsTask(cabbage, eatingDrinkingTask).

% --- cabinets ---
obj(cabinets).
hasPhysicalQuality(cabinets, heavy).
hasPhysicalQuality(cabinets, rigid).
hasRole(cabinets, storageContainerRole).
affordsTask(cabinets, storageTask).

% --- cable ---
obj(cable).
hasPhysicalQuality(cable, electronic).
hasRole(cable, toolRole).
affordsTask(cable, maintenanceTask).

% --- caffeine ---
obj(caffeine).
hasPhysicalQuality(caffeine, perishable).
hasRole(caffeine, consumableRole).
affordsTask(caffeine, eatingDrinkingTask).

% --- cake ---
obj(cake).
hasPhysicalQuality(cake, granular).
hasPhysicalQuality(cake, perishable).
hasRole(cake, consumableRole).
affordsTask(cake, eatingDrinkingTask).

% --- calculator ---
obj(calculator).
hasPhysicalQuality(calculator, electronic).
hasPhysicalQuality(calculator, lightweight).
hasRole(calculator, toolRole).
affordsTask(calculator, workStudyTask).

% --- calendar ---
obj(calendar).
hasRole(calendar, documentRole).
affordsTask(calendar, workStudyTask).

% --- calendar pad ---
obj(calendar_pad).
hasPhysicalQuality(calendar_pad, lightweight).
hasRole(calendar_pad, documentRole).
affordsTask(calendar_pad, workStudyTask).

% --- camera ---
obj(camera).
hasPhysicalQuality(camera, electronic).
hasPhysicalQuality(camera, lightweight).
hasRole(camera, toolRole).
affordsTask(camera, workStudyTask).

% --- can opener ---
obj(can_opener).
hasPhysicalQuality(can_opener, electronic).
hasPhysicalQuality(can_opener, heavy).
hasRole(can_opener, toolRole).
affordsTask(can_opener, foodPreparationTask).

% --- candle ---
obj(candle).
hasPhysicalQuality(candle, flammable).
hasPhysicalQuality(candle, heated).
hasRole(candle, lightingRole).
affordsTask(candle, leisureTask).

% --- candy ---
obj(candy).
hasPhysicalQuality(candy, perishable).
hasRole(candy, consumableRole).
affordsTask(candy, eatingDrinkingTask).

% --- cans ---
obj(cans).
hasPhysicalQuality(cans, lightweight).
hasPhysicalQuality(cans, rigid).
hasRole(cans, storageContainerRole).
affordsTask(cans, storageTask).

% --- cans of paint ---
obj(cans_of_paint).
hasPhysicalQuality(cans_of_paint, fragile).
hasPhysicalQuality(cans_of_paint, liquid).
hasRole(cans_of_paint, consumableRole).
affordsTask(cans_of_paint, maintenanceTask).

% --- card ---
obj(card).
hasPhysicalQuality(card, lightweight).
hasRole(card, consumableRole).
hasRole(card, utensilRole).
affordsTask(card, eatingDrinkingTask).

% --- card case ---
obj(card_case).
hasPhysicalQuality(card_case, hasContainer).
hasPhysicalQuality(card_case, lightweight).
hasRole(card_case, storageContainerRole).
affordsTask(card_case, storageTask).

% --- card catalog ---
obj(card_catalog).
hasRole(card_catalog, documentRole).

% --- cardboard ---
obj(cardboard).
hasPhysicalQuality(cardboard, granular).
hasRole(cardboard, furnitureRole).
hasRole(cardboard, storageContainerRole).
affordsTask(cardboard, maintenanceTask).

% --- cardboard box ---
obj(cardboard_box).
hasPhysicalQuality(cardboard_box, lightweight).
hasPhysicalQuality(cardboard_box, rigid).
hasRole(cardboard_box, storageContainerRole).
affordsTask(cardboard_box, storageTask).

% --- cards ---
obj(cards).
hasRole(cards, entertainmentRole).
affordsTask(cards, leisureTask).

% --- carpet ---
obj(carpet).
hasPhysicalQuality(carpet, soft_Deformable).
hasPhysicalQuality(carpet, washable).
hasRole(carpet, furnitureRole).
affordsTask(carpet, leisureTask).

% --- carpeting ---
obj(carpeting).
hasPhysicalQuality(carpeting, soft_Deformable).
hasPhysicalQuality(carpeting, washable).
hasRole(carpeting, furnitureRole).
affordsTask(carpeting, leisureTask).

% --- carrots ---
obj(carrots).
hasPhysicalQuality(carrots, perishable).
hasRole(carrots, consumableRole).
affordsTask(carrots, foodPreparationTask).

% --- cash register ---
obj(cash_register).
hasPhysicalQuality(cash_register, electronic).
hasPhysicalQuality(cash_register, heavy).
hasRole(cash_register, applianceRole).
affordsTask(cash_register, maintenanceTask).

% --- cat ---
obj(cat).
hasPhysicalQuality(cat, lightweight).
hasPhysicalQuality(cat, soft_Deformable).
hasRole(cat, furnitureRole).
affordsTask(cat, leisureTask).

% --- cd rom ---
obj(cd_rom).
hasPhysicalQuality(cd_rom, electronic).
hasPhysicalQuality(cd_rom, lightweight).
hasRole(cd_rom, storageContainerRole).
affordsTask(cd_rom, workStudyTask).

% --- cds ---
obj(cds).
hasPhysicalQuality(cds, lightweight).
hasPhysicalQuality(cds, rigid).
hasRole(cds, storageContainerRole).
affordsTask(cds, leisureTask).

% --- ceiling ---
obj(ceiling).
hasPhysicalQuality(ceiling, rigid).
hasRole(ceiling, furnitureRole).

% --- celery ---
obj(celery).
hasPhysicalQuality(celery, granular).
hasPhysicalQuality(celery, perishable).
hasRole(celery, consumableRole).
affordsTask(celery, eatingDrinkingTask).

% --- cellar ---
obj(cellar).
hasPhysicalQuality(cellar, heavy).
hasPhysicalQuality(cellar, rigid).
hasRole(cellar, storageContainerRole).
affordsTask(cellar, storageTask).

% --- cereal ---
obj(cereal).
hasPhysicalQuality(cereal, granular).
hasPhysicalQuality(cereal, perishable).
hasRole(cereal, consumableRole).
affordsTask(cereal, eatingDrinkingTask).

% --- chain ---
obj(chain).
hasPhysicalQuality(chain, heavy).
hasPhysicalQuality(chain, rigid).
hasRole(chain, toolRole).
affordsTask(chain, maintenanceTask).

% --- chair ---
obj(chair).
hasPhysicalQuality(chair, heavy).
hasPhysicalQuality(chair, rigid).
hasRole(chair, furnitureRole).
affordsTask(chair, storageTask).

% --- check ---
obj(check).
hasPhysicalQuality(check, electronic).
hasRole(check, toolRole).
affordsTask(check, maintenanceTask).

% --- checkbook ---
obj(checkbook).
hasRole(checkbook, documentRole).

% --- checkbook holder ---
obj(checkbook_holder).
hasPhysicalQuality(checkbook_holder, hasContainer).
hasRole(checkbook_holder, storageContainerRole).
affordsTask(checkbook_holder, storageTask).

% --- cheese ---
obj(cheese).
hasPhysicalQuality(cheese, perishable).
hasRole(cheese, consumableRole).
affordsTask(cheese, eatingDrinkingTask).

% --- chess bishop ---
obj(chess_bishop).
hasPhysicalQuality(chess_bishop, rigid).
hasRole(chess_bishop, toolRole).
affordsTask(chess_bishop, leisureTask).

% --- chess board ---
obj(chess_board).
hasPhysicalQuality(chess_board, heavy).
hasPhysicalQuality(chess_board, rigid).
hasRole(chess_board, furnitureRole).
affordsTask(chess_board, leisureTask).

% --- chess king ---
obj(chess_king).
hasPhysicalQuality(chess_king, lightweight).
hasRole(chess_king, entertainmentRole).
affordsTask(chess_king, leisureTask).

% --- chess knight ---
obj(chess_knight).
hasPhysicalQuality(chess_knight, rigid).
hasRole(chess_knight, entertainmentRole).
affordsTask(chess_knight, leisureTask).

% --- chess pawn ---
obj(chess_pawn).
hasPhysicalQuality(chess_pawn, lightweight).
hasRole(chess_pawn, entertainmentRole).
affordsTask(chess_pawn, leisureTask).

% --- chess piece ---
obj(chess_piece).
hasPhysicalQuality(chess_piece, lightweight).
hasRole(chess_piece, entertainmentRole).
affordsTask(chess_piece, leisureTask).

% --- chess queen ---
obj(chess_queen).
hasRole(chess_queen, toolRole).

% --- chess rook ---
obj(chess_rook).
hasPhysicalQuality(chess_rook, heavy).
hasPhysicalQuality(chess_rook, rigid).
hasRole(chess_rook, toolRole).
affordsTask(chess_rook, leisureTask).

% --- chess set ---
obj(chess_set).
hasPhysicalQuality(chess_set, lightweight).
hasPhysicalQuality(chess_set, rigid).
hasRole(chess_set, entertainmentRole).
affordsTask(chess_set, leisureTask).

% --- chest ---
obj(chest).
hasPhysicalQuality(chest, heavy).
hasPhysicalQuality(chest, rigid).
hasRole(chest, storageContainerRole).
affordsTask(chest, storageTask).

% --- chimney ---
obj(chimney).
hasPhysicalQuality(chimney, heavy).
hasRole(chimney, applianceRole).

% --- chine cotton ---
obj(chine_cotton).
hasPhysicalQuality(chine_cotton, lightweight).
hasPhysicalQuality(chine_cotton, soft_Deformable).
hasRole(chine_cotton, clothingRole).
affordsTask(chine_cotton, dressingTask).

% --- chips ---
obj(chips).
hasPhysicalQuality(chips, granular).
hasPhysicalQuality(chips, perishable).
hasRole(chips, consumableRole).
affordsTask(chips, eatingDrinkingTask).

% --- chocolate ---
obj(chocolate).
hasPhysicalQuality(chocolate, perishable).
hasRole(chocolate, consumableRole).
affordsTask(chocolate, eatingDrinkingTask).

% --- cinnamon ---
obj(cinnamon).
hasPhysicalQuality(cinnamon, perishable).
hasRole(cinnamon, consumableRole).
affordsTask(cinnamon, foodPreparationTask).

% --- clip ---
obj(clip).
hasPhysicalQuality(clip, lightweight).
hasRole(clip, toolRole).
affordsTask(clip, maintenanceTask).

% --- clipboard ---
obj(clipboard).
hasPhysicalQuality(clipboard, lightweight).
hasPhysicalQuality(clipboard, rigid).
hasRole(clipboard, utensilRole).
affordsTask(clipboard, foodPreparationTask).

% --- clock ---
obj(clock).
hasPhysicalQuality(clock, rigid).
hasRole(clock, decorationRole).

% --- closet ---
obj(closet).
hasPhysicalQuality(closet, heavy).
hasPhysicalQuality(closet, rigid).
hasRole(closet, storageContainerRole).
affordsTask(closet, storageTask).

% --- cloth ---
obj(cloth).
hasPhysicalQuality(cloth, soft_Deformable).
hasPhysicalQuality(cloth, washable).
hasRole(cloth, clothingRole).
affordsTask(cloth, dressingTask).

% --- clothes ---
obj(clothes).
hasPhysicalQuality(clothes, soft_Deformable).
hasPhysicalQuality(clothes, washable).
hasRole(clothes, clothingRole).
affordsTask(clothes, dressingTask).

% --- clothing ---
obj(clothing).
hasPhysicalQuality(clothing, lightweight).
hasPhysicalQuality(clothing, soft_Deformable).
hasRole(clothing, clothingRole).
affordsTask(clothing, dressingTask).

% --- clothing shelf ---
obj(clothing_shelf).
hasPhysicalQuality(clothing_shelf, heavy).
hasPhysicalQuality(clothing_shelf, rigid).
hasRole(clothing_shelf, storageContainerRole).
affordsTask(clothing_shelf, storageTask).

% --- coal ---
obj(coal).
hasPhysicalQuality(coal, flammable).
hasPhysicalQuality(coal, heavy).
hasRole(coal, consumableRole).
affordsTask(coal, maintenanceTask).

% --- coat hangers ---
obj(coat_hangers).
hasPhysicalQuality(coat_hangers, lightweight).
hasPhysicalQuality(coat_hangers, rigid).
hasRole(coat_hangers, storageContainerRole).
affordsTask(coat_hangers, storageTask).

% --- coats ---
obj(coats).
hasRole(coats, clothingRole).
affordsTask(coats, dressingTask).

% --- coffee ---
obj(coffee).
hasPhysicalQuality(coffee, liquid).
hasPhysicalQuality(coffee, perishable).
hasRole(coffee, consumableRole).
affordsTask(coffee, eatingDrinkingTask).

% --- coffee cups ---
obj(coffee_cups).
hasPhysicalQuality(coffee_cups, hasContainer).
hasPhysicalQuality(coffee_cups, lightweight).
hasRole(coffee_cups, utensilRole).
affordsTask(coffee_cups, eatingDrinkingTask).

% --- coffee mug ---
obj(coffee_mug).
hasPhysicalQuality(coffee_mug, hasContainer).
hasPhysicalQuality(coffee_mug, liquid).
hasRole(coffee_mug, utensilRole).
affordsTask(coffee_mug, eatingDrinkingTask).

% --- coin ---
obj(coin).
hasPhysicalQuality(coin, lightweight).
hasRole(coin, consumableRole).

% --- coins ---
obj(coins).
hasPhysicalQuality(coins, lightweight).
hasRole(coins, consumableRole).
affordsTask(coins, eatingDrinkingTask).

% --- coke ---
obj(coke).
hasPhysicalQuality(coke, liquid).
hasRole(coke, consumableRole).
affordsTask(coke, eatingDrinkingTask).

% --- cold faucet ---
obj(cold_faucet).
hasPhysicalQuality(cold_faucet, heavy).
hasPhysicalQuality(cold_faucet, liquid).
hasRole(cold_faucet, utensilRole).
affordsTask(cold_faucet, eatingDrinkingTask).

% --- cold storage ---
obj(cold_storage).
hasPhysicalQuality(cold_storage, requiresCooling).
hasRole(cold_storage, applianceRole).
affordsTask(cold_storage, storageTask).

% --- cold tap ---
obj(cold_tap).
hasPhysicalQuality(cold_tap, electronic).
hasPhysicalQuality(cold_tap, liquid).
hasRole(cold_tap, toolRole).
affordsTask(cold_tap, hygieneTask).

% --- cold water ---
obj(cold_water).
hasPhysicalQuality(cold_water, liquid).
hasPhysicalQuality(cold_water, perishable).
hasRole(cold_water, consumableRole).
affordsTask(cold_water, eatingDrinkingTask).

% --- column ---
obj(column).
hasPhysicalQuality(column, heavy).
hasPhysicalQuality(column, rigid).
hasRole(column, furnitureRole).

% --- comforter ---
obj(comforter).
hasPhysicalQuality(comforter, soft_Deformable).
hasPhysicalQuality(comforter, washable).
hasRole(comforter, beddingRole).
affordsTask(comforter, sleepingTask).

% --- compost ---
obj(compost).
hasPhysicalQuality(compost, perishable).
hasRole(compost, consumableRole).
hasRole(compost, wasteRole).
affordsTask(compost, maintenanceTask).

% --- computer ---
obj(computer).
hasPhysicalQuality(computer, electronic).
hasPhysicalQuality(computer, heavy).
hasRole(computer, applianceRole).
affordsTask(computer, workStudyTask).

% --- concrete ---
obj(concrete).
hasPhysicalQuality(concrete, granular).
hasPhysicalQuality(concrete, rigid).
hasRole(concrete, consumableRole).

% --- container ---
obj(container).
hasPhysicalQuality(container, hasContainer).
hasRole(container, storageContainerRole).
affordsTask(container, storageTask).

% --- container can ---
obj(container_can).
hasPhysicalQuality(container_can, hasContainer).
hasRole(container_can, storageContainerRole).
affordsTask(container_can, storageTask).

% --- container cup ---
obj(container_cup).
hasPhysicalQuality(container_cup, hasContainer).
hasRole(container_cup, storageContainerRole).
hasRole(container_cup, utensilRole).
affordsTask(container_cup, eatingDrinkingTask).
affordsTask(container_cup, storageTask).

% --- cook ---
obj(cook).
hasPhysicalQuality(cook, heavy).
hasPhysicalQuality(cook, rigid).
hasRole(cook, cookwareRole).
affordsTask(cook, foodPreparationTask).

% --- cookie ---
obj(cookie).
hasPhysicalQuality(cookie, granular).
hasRole(cookie, consumableRole).
affordsTask(cookie, eatingDrinkingTask).

% --- cookie jar ---
obj(cookie_jar).
hasPhysicalQuality(cookie_jar, hasContainer).
hasPhysicalQuality(cookie_jar, heavy).
hasRole(cookie_jar, storageContainerRole).
affordsTask(cookie_jar, storageTask).

% --- cookies ---
obj(cookies).
hasPhysicalQuality(cookies, granular).
hasRole(cookies, consumableRole).
affordsTask(cookies, eatingDrinkingTask).

% --- cooling device ---
obj(cooling_device).
hasPhysicalQuality(cooling_device, requiresCooling).
hasRole(cooling_device, applianceRole).
affordsTask(cooling_device, storageTask).

% --- corner cupboard ---
obj(corner_cupboard).
hasPhysicalQuality(corner_cupboard, heavy).
hasPhysicalQuality(corner_cupboard, rigid).
hasRole(corner_cupboard, storageContainerRole).
affordsTask(corner_cupboard, storageTask).

% --- cotton ---
obj(cotton).
hasPhysicalQuality(cotton, lightweight).
hasPhysicalQuality(cotton, soft_Deformable).
hasRole(cotton, clothingRole).
hasRole(cotton, consumableRole).

% --- couch ---
obj(couch).
hasPhysicalQuality(couch, heavy).
hasPhysicalQuality(couch, rigid).
hasRole(couch, furnitureRole).
affordsTask(couch, leisureTask).

% --- counter ---
obj(counter).
hasPhysicalQuality(counter, heavy).
hasPhysicalQuality(counter, rigid).
hasRole(counter, furnitureRole).
affordsTask(counter, workStudyTask).

% --- coupon ---
obj(coupon).
hasRole(coupon, consumableRole).

% --- cover ---
obj(cover).
hasPhysicalQuality(cover, lightweight).
hasPhysicalQuality(cover, soft_Deformable).
hasRole(cover, beddingRole).
hasRole(cover, furnitureRole).
affordsTask(cover, sleepingTask).

% --- credit card wallet ---
obj(credit_card_wallet).
hasPhysicalQuality(credit_card_wallet, hasContainer).
hasPhysicalQuality(credit_card_wallet, lightweight).
hasRole(credit_card_wallet, storageContainerRole).
affordsTask(credit_card_wallet, leisureTask).

% --- credit cards ---
obj(credit_cards).
hasRole(credit_cards, consumableRole).

% --- crumbs ---
obj(crumbs).
hasPhysicalQuality(crumbs, granular).
hasRole(crumbs, consumableRole).
affordsTask(crumbs, eatingDrinkingTask).

% --- cup ---
obj(cup).
hasPhysicalQuality(cup, hasContainer).
hasRole(cup, utensilRole).
affordsTask(cup, eatingDrinkingTask).

% --- curtain ---
obj(curtain).
hasPhysicalQuality(curtain, lightweight).
hasPhysicalQuality(curtain, soft_Deformable).
hasRole(curtain, furnitureRole).
affordsTask(curtain, leisureTask).

% --- dandruff shampoo ---
obj(dandruff_shampoo).
hasPhysicalQuality(dandruff_shampoo, liquid).
hasPhysicalQuality(dandruff_shampoo, toxic_Hazardous).
hasRole(dandruff_shampoo, cleaningToolRole).
affordsTask(dandruff_shampoo, hygieneTask).

% --- denim ---
obj(denim).
hasPhysicalQuality(denim, soft_Deformable).
hasPhysicalQuality(denim, washable).
hasRole(denim, clothingRole).
affordsTask(denim, dressingTask).

% --- dental floss ---
obj(dental_floss).
hasPhysicalQuality(dental_floss, fragile).
hasPhysicalQuality(dental_floss, lightweight).
hasRole(dental_floss, cleaningToolRole).
affordsTask(dental_floss, hygieneTask).

% --- desk ---
obj(desk).
hasPhysicalQuality(desk, heavy).
hasPhysicalQuality(desk, rigid).
hasRole(desk, furnitureRole).
affordsTask(desk, workStudyTask).

% --- desk drawer ---
obj(desk_drawer).
hasPhysicalQuality(desk_drawer, lightweight).
hasPhysicalQuality(desk_drawer, rigid).
hasRole(desk_drawer, storageContainerRole).
affordsTask(desk_drawer, workStudyTask).

% --- desk tray ---
obj(desk_tray).
hasPhysicalQuality(desk_tray, hasContainer).
hasPhysicalQuality(desk_tray, lightweight).
hasRole(desk_tray, storageContainerRole).
affordsTask(desk_tray, storageTask).

% --- desserts ---
obj(desserts).
hasPhysicalQuality(desserts, perishable).
hasRole(desserts, consumableRole).
affordsTask(desserts, eatingDrinkingTask).

% --- detergent ---
obj(detergent).
hasPhysicalQuality(detergent, liquid).
hasPhysicalQuality(detergent, toxic_Hazardous).
hasRole(detergent, cleaningToolRole).
affordsTask(detergent, cleaningTask).

% --- dice ---
obj(dice).
hasPhysicalQuality(dice, lightweight).
hasPhysicalQuality(dice, rigid).
hasRole(dice, entertainmentRole).
affordsTask(dice, leisureTask).

% --- dictionaries ---
obj(dictionaries).
hasPhysicalQuality(dictionaries, electronic).
hasPhysicalQuality(dictionaries, lightweight).
hasRole(dictionaries, toolRole).
affordsTask(dictionaries, workStudyTask).

% --- dictionary ---
obj(dictionary).
hasPhysicalQuality(dictionary, electronic).
hasPhysicalQuality(dictionary, lightweight).
hasRole(dictionary, toolRole).
affordsTask(dictionary, workStudyTask).

% --- dinner plate ---
obj(dinner_plate).
hasPhysicalQuality(dinner_plate, hasContainer).
hasPhysicalQuality(dinner_plate, rigid).
hasRole(dinner_plate, utensilRole).
affordsTask(dinner_plate, eatingDrinkingTask).

% --- dishwasher ---
obj(dishwasher).
hasPhysicalQuality(dishwasher, electronic).
hasPhysicalQuality(dishwasher, heavy).
hasRole(dishwasher, applianceRole).
affordsTask(dishwasher, cleaningTask).

% --- disk ---
obj(disk).
hasRole(disk, storageContainerRole).
affordsTask(disk, storageTask).

% --- display cabinet ---
obj(display_cabinet).
hasPhysicalQuality(display_cabinet, heavy).
hasPhysicalQuality(display_cabinet, rigid).
hasRole(display_cabinet, furnitureRole).
affordsTask(display_cabinet, storageTask).

% --- disposable razor ---
obj(disposable_razor).
hasPhysicalQuality(disposable_razor, fragile).
hasPhysicalQuality(disposable_razor, sharp).
hasRole(disposable_razor, utensilRole).
affordsTask(disposable_razor, foodPreparationTask).

% --- divider ---
obj(divider).
hasPhysicalQuality(divider, lightweight).
hasPhysicalQuality(divider, rigid).
hasRole(divider, furnitureRole).
affordsTask(divider, storageTask).

% --- dog ---
obj(dog).
hasPhysicalQuality(dog, fragile).
hasPhysicalQuality(dog, soft_Deformable).
affordsTask(dog, leisureTask).

% --- door ---
obj(door).
hasPhysicalQuality(door, rigid).
hasRole(door, furnitureRole).
affordsTask(door, maintenanceTask).

% --- doormat ---
obj(doormat).
hasPhysicalQuality(doormat, lightweight).
hasPhysicalQuality(doormat, soft_Deformable).
hasRole(doormat, furnitureRole).
affordsTask(doormat, cleaningTask).

% --- doorway ---
obj(doorway).
hasPhysicalQuality(doorway, rigid).
hasRole(doorway, furnitureRole).

% --- drawer ---
obj(drawer).
hasPhysicalQuality(drawer, hasContainer).
hasRole(drawer, furnitureRole).
hasRole(drawer, storageContainerRole).
affordsTask(drawer, storageTask).

% --- drawstring bag ---
obj(drawstring_bag).
hasPhysicalQuality(drawstring_bag, lightweight).
hasPhysicalQuality(drawstring_bag, soft_Deformable).
hasRole(drawstring_bag, storageContainerRole).
affordsTask(drawstring_bag, storageTask).

% --- dresser ---
obj(dresser).
hasPhysicalQuality(dresser, heavy).
hasPhysicalQuality(dresser, rigid).
hasRole(dresser, furnitureRole).
affordsTask(dresser, storageTask).

% --- drill ---
obj(drill).
hasPhysicalQuality(drill, heavy).
hasPhysicalQuality(drill, isRotary).
hasPhysicalQuality(drill, rigid).
hasRole(drill, toolRole).
affordsTask(drill, maintenanceTask).

% --- dry storage ---
obj(dry_storage).
hasPhysicalQuality(dry_storage, hasContainer).
hasRole(dry_storage, storageContainerRole).
affordsTask(dry_storage, storageTask).

% --- dryer ---
obj(dryer).
hasPhysicalQuality(dryer, electronic).
hasPhysicalQuality(dryer, heavy).
hasRole(dryer, applianceRole).
affordsTask(dryer, maintenanceTask).

% --- dust ---
obj(dust).
hasPhysicalQuality(dust, fragile).
hasRole(dust, wasteRole).

% --- dustbin ---
obj(dustbin).
hasPhysicalQuality(dustbin, heavy).
hasPhysicalQuality(dustbin, rigid).
hasRole(dustbin, storageContainerRole).
hasRole(dustbin, wasteRole).
affordsTask(dustbin, wasteDisposalTask).

% --- duvet ---
obj(duvet).
hasPhysicalQuality(duvet, soft_Deformable).
hasPhysicalQuality(duvet, washable).
hasRole(duvet, beddingRole).
affordsTask(duvet, sleepingTask).

% --- duvet cover ---
obj(duvet_cover).
hasPhysicalQuality(duvet_cover, soft_Deformable).
hasPhysicalQuality(duvet_cover, washable).
hasRole(duvet_cover, beddingRole).
affordsTask(duvet_cover, sleepingTask).

% --- egg ---
obj(egg).
hasPhysicalQuality(egg, fragile).
hasPhysicalQuality(egg, perishable).
hasRole(egg, consumableRole).
affordsTask(egg, foodPreparationTask).

% --- eggs ---
obj(eggs).
hasPhysicalQuality(eggs, fragile).
hasPhysicalQuality(eggs, perishable).
hasRole(eggs, consumableRole).
affordsTask(eggs, eatingDrinkingTask).

% --- electric blanket ---
obj(electric_blanket).
hasPhysicalQuality(electric_blanket, electronic).
hasPhysicalQuality(electric_blanket, soft_Deformable).
hasPhysicalQuality(electric_blanket, washable).
hasRole(electric_blanket, beddingRole).
affordsTask(electric_blanket, sleepingTask).

% --- electric fan ---
obj(electric_fan).
hasPhysicalQuality(electric_fan, electronic).
hasPhysicalQuality(electric_fan, lightweight).
hasRole(electric_fan, applianceRole).
affordsTask(electric_fan, leisureTask).

% --- electric pencil sharpener ---
obj(electric_pencil_sharpener).
hasPhysicalQuality(electric_pencil_sharpener, electronic).
hasPhysicalQuality(electric_pencil_sharpener, heavy).
hasRole(electric_pencil_sharpener, toolRole).
affordsTask(electric_pencil_sharpener, maintenanceTask).

% --- electric razor ---
obj(electric_razor).
hasPhysicalQuality(electric_razor, electronic).
hasPhysicalQuality(electric_razor, lightweight).
hasRole(electric_razor, toolRole).
affordsTask(electric_razor, hygieneTask).

% --- electric socket ---
obj(electric_socket).
hasPhysicalQuality(electric_socket, electronic).
hasPhysicalQuality(electric_socket, heavy).
hasRole(electric_socket, applianceRole).

% --- eraser ---
obj(eraser).
hasPhysicalQuality(eraser, lightweight).
hasPhysicalQuality(eraser, soft_Deformable).
hasRole(eraser, toolRole).
affordsTask(eraser, maintenanceTask).

% --- eyeglasses case ---
obj(eyeglasses_case).
hasPhysicalQuality(eyeglasses_case, hasContainer).
hasPhysicalQuality(eyeglasses_case, lightweight).
hasRole(eyeglasses_case, storageContainerRole).
affordsTask(eyeglasses_case, storageTask).

% --- faucet ---
obj(faucet).
hasPhysicalQuality(faucet, electronic).
hasPhysicalQuality(faucet, liquid).
hasRole(faucet, toolRole).
affordsTask(faucet, hygieneTask).

% --- faucet overflow ---
obj(faucet_overflow).
hasPhysicalQuality(faucet_overflow, liquid).
hasRole(faucet_overflow, toolRole).
affordsTask(faucet_overflow, maintenanceTask).

% --- feather ---
obj(feather).
hasPhysicalQuality(feather, lightweight).
hasPhysicalQuality(feather, soft_Deformable).
hasRole(feather, consumableRole).
affordsTask(feather, leisureTask).

% --- feathers ---
obj(feathers).
hasPhysicalQuality(feathers, lightweight).
hasPhysicalQuality(feathers, soft_Deformable).
hasRole(feathers, consumableRole).

% --- felt ---
obj(felt).
hasPhysicalQuality(felt, soft_Deformable).
hasRole(felt, consumableRole).
hasRole(felt, toolRole).

% --- file ---
obj(file).
hasPhysicalQuality(file, lightweight).
hasRole(file, documentRole).
affordsTask(file, storageTask).

% --- file cabinet ---
obj(file_cabinet).
hasRole(file_cabinet, storageContainerRole).

% --- files ---
obj(files).
hasRole(files, documentRole).

% --- filing box ---
obj(filing_box).
hasPhysicalQuality(filing_box, hasContainer).
hasPhysicalQuality(filing_box, heavy).
hasRole(filing_box, storageContainerRole).
affordsTask(filing_box, storageTask).

% --- film ---
obj(film).
hasPhysicalQuality(film, fragile).
hasRole(film, entertainmentRole).
affordsTask(film, leisureTask).

% --- fire extinguisher ---
obj(fire_extinguisher).
hasPhysicalQuality(fire_extinguisher, heavy).
hasPhysicalQuality(fire_extinguisher, rigid).
hasRole(fire_extinguisher, safetyEquipmentRole).
affordsTask(fire_extinguisher, maintenanceTask).

% --- fireplace ---
obj(fireplace).
hasPhysicalQuality(fireplace, heated).
hasRole(fireplace, applianceRole).
affordsTask(fireplace, maintenanceTask).

% --- fish ---
obj(fish).
hasPhysicalQuality(fish, liquid).
hasPhysicalQuality(fish, perishable).
hasRole(fish, consumableRole).
affordsTask(fish, eatingDrinkingTask).

% --- flask ---
obj(flask).
hasPhysicalQuality(flask, hasContainer).
hasPhysicalQuality(flask, liquid).
hasRole(flask, utensilRole).
affordsTask(flask, eatingDrinkingTask).

% --- floor ---
obj(floor).
hasPhysicalQuality(floor, heavy).
hasPhysicalQuality(floor, rigid).
hasRole(floor, furnitureRole).
affordsTask(floor, storageTask).

% --- flooring ---
obj(flooring).
hasPhysicalQuality(flooring, rigid).
hasRole(flooring, furnitureRole).

% --- flour ---
obj(flour).
hasPhysicalQuality(flour, granular).
hasRole(flour, consumableRole).
affordsTask(flour, foodPreparationTask).

% --- flower ---
obj(flower).
hasPhysicalQuality(flower, perishable).
hasRole(flower, consumableRole).

% --- folder ---
obj(folder).
hasRole(folder, storageContainerRole).
affordsTask(folder, storageTask).

% --- folding chair ---
obj(folding_chair).
hasPhysicalQuality(folding_chair, lightweight).
hasPhysicalQuality(folding_chair, rigid).
hasRole(folding_chair, furnitureRole).
affordsTask(folding_chair, storageTask).

% --- folding door ---
obj(folding_door).
hasPhysicalQuality(folding_door, lightweight).
hasRole(folding_door, furnitureRole).
affordsTask(folding_door, storageTask).

% --- folding shower door ---
obj(folding_shower_door).
hasPhysicalQuality(folding_shower_door, lightweight).
hasPhysicalQuality(folding_shower_door, rigid).
hasRole(folding_shower_door, furnitureRole).
affordsTask(folding_shower_door, leisureTask).

% --- footstool ---
obj(footstool).
hasPhysicalQuality(footstool, heavy).
hasPhysicalQuality(footstool, rigid).
hasRole(footstool, furnitureRole).
affordsTask(footstool, leisureTask).

% --- fork ---
obj(fork).
hasPhysicalQuality(fork, rigid).
hasPhysicalQuality(fork, sharp).
hasRole(fork, utensilRole).
affordsTask(fork, foodPreparationTask).

% --- forks ---
obj(forks).
hasPhysicalQuality(forks, rigid).
hasPhysicalQuality(forks, sharp).
hasRole(forks, utensilRole).
affordsTask(forks, foodPreparationTask).

% --- foundation ---
obj(foundation).
hasPhysicalQuality(foundation, heavy).
hasRole(foundation, furnitureRole).

% --- freezer ---
obj(freezer).
hasPhysicalQuality(freezer, requiresFreezing).
hasRole(freezer, applianceRole).
affordsTask(freezer, storageTask).

% --- fridge ---
obj(fridge).
hasPhysicalQuality(fridge, electronic).
hasPhysicalQuality(fridge, heavy).
hasRole(fridge, applianceRole).
affordsTask(fridge, storageTask).

% --- frisbee ---
obj(frisbee).
hasPhysicalQuality(frisbee, lightweight).
hasPhysicalQuality(frisbee, rigid).
hasRole(frisbee, entertainmentRole).
hasRole(frisbee, toolRole).
affordsTask(frisbee, leisureTask).
affordsTask(frisbee, maintenanceTask).

% --- frying pan ---
obj(frying_pan).
hasPhysicalQuality(frying_pan, heated).
hasPhysicalQuality(frying_pan, rigid).
hasRole(frying_pan, cookwareRole).
affordsTask(frying_pan, foodPreparationTask).

% --- garage ---
obj(garage).
hasPhysicalQuality(garage, heavy).
hasPhysicalQuality(garage, rigid).
hasRole(garage, furnitureRole).
hasRole(garage, storageContainerRole).
affordsTask(garage, storageTask).

% --- garbage ---
obj(garbage).
hasRole(garbage, consumableRole).
hasRole(garbage, storageContainerRole).
affordsTask(garbage, wasteDisposalTask).

% --- garbage can ---
obj(garbage_can).
hasPhysicalQuality(garbage_can, hasContainer).
hasPhysicalQuality(garbage_can, heavy).
hasRole(garbage_can, storageContainerRole).
affordsTask(garbage_can, wasteDisposalTask).

% --- garbage waste ---
obj(garbage_waste).
hasRole(garbage_waste, consumableRole).
hasRole(garbage_waste, wasteRole).
affordsTask(garbage_waste, wasteDisposalTask).

% --- garden ---
obj(garden).
hasPhysicalQuality(garden, lightweight).
hasPhysicalQuality(garden, soft_Deformable).
hasRole(garden, furnitureRole).
affordsTask(garden, leisureTask).

% --- garden hose ---
obj(garden_hose).
hasPhysicalQuality(garden_hose, liquid).
hasRole(garden_hose, toolRole).
affordsTask(garden_hose, gardeningTask).
affordsTask(garden_hose, hygieneTask).

% --- garlic ---
obj(garlic).
hasPhysicalQuality(garlic, perishable).
hasRole(garlic, consumableRole).
affordsTask(garlic, foodPreparationTask).

% --- garment bag ---
obj(garment_bag).
hasPhysicalQuality(garment_bag, lightweight).
hasPhysicalQuality(garment_bag, soft_Deformable).
hasRole(garment_bag, storageContainerRole).
affordsTask(garment_bag, storageTask).

% --- gate ---
obj(gate).
hasPhysicalQuality(gate, heavy).
hasPhysicalQuality(gate, rigid).
hasRole(gate, furnitureRole).
affordsTask(gate, maintenanceTask).

% --- gate leg table ---
obj(gate_leg_table).
hasPhysicalQuality(gate_leg_table, heavy).
hasPhysicalQuality(gate_leg_table, rigid).
hasRole(gate_leg_table, furnitureRole).
affordsTask(gate_leg_table, storageTask).

% --- gel toothpaste ---
obj(gel_toothpaste).
hasPhysicalQuality(gel_toothpaste, liquid).
hasPhysicalQuality(gel_toothpaste, toxic_Hazardous).
hasRole(gel_toothpaste, cleaningToolRole).
affordsTask(gel_toothpaste, hygieneTask).

% --- glass ---
obj(glass).
hasPhysicalQuality(glass, fragile).
hasPhysicalQuality(glass, rigid).
hasRole(glass, utensilRole).
affordsTask(glass, eatingDrinkingTask).

% --- glass fronted cupboard ---
obj(glass_fronted_cupboard).
hasPhysicalQuality(glass_fronted_cupboard, heavy).
hasPhysicalQuality(glass_fronted_cupboard, rigid).
hasRole(glass_fronted_cupboard, storageContainerRole).
affordsTask(glass_fronted_cupboard, storageTask).

% --- glass fronted display cabinet ---
obj(glass_fronted_display_cabinet).
hasPhysicalQuality(glass_fronted_display_cabinet, heavy).
hasPhysicalQuality(glass_fronted_display_cabinet, rigid).
hasRole(glass_fronted_display_cabinet, furnitureRole).
hasRole(glass_fronted_display_cabinet, storageContainerRole).
affordsTask(glass_fronted_display_cabinet, storageTask).

% --- glass of water ---
obj(glass_of_water).
hasPhysicalQuality(glass_of_water, liquid).
hasRole(glass_of_water, consumableRole).
hasRole(glass_of_water, utensilRole).
affordsTask(glass_of_water, eatingDrinkingTask).

% --- glasses ---
obj(glasses).
hasPhysicalQuality(glasses, lightweight).
hasRole(glasses, utensilRole).
affordsTask(glasses, eatingDrinkingTask).

% --- glasses case ---
obj(glasses_case).
hasPhysicalQuality(glasses_case, lightweight).
hasPhysicalQuality(glasses_case, soft_Deformable).
hasRole(glasses_case, storageContainerRole).
affordsTask(glasses_case, storageTask).

% --- glue ---
obj(glue).
hasPhysicalQuality(glue, fragile).
hasPhysicalQuality(glue, liquid).
hasRole(glue, toolRole).
affordsTask(glue, maintenanceTask).

% --- glue stick ---
obj(glue_stick).
hasPhysicalQuality(glue_stick, fragile).
hasPhysicalQuality(glue_stick, liquid).
hasRole(glue_stick, toolRole).
affordsTask(glue_stick, maintenanceTask).

% --- good book ---
obj(good_book).
hasRole(good_book, documentRole).
affordsTask(good_book, leisureTask).

% --- grape ---
obj(grape).
hasPhysicalQuality(grape, fragile).
hasPhysicalQuality(grape, perishable).
hasRole(grape, consumableRole).
affordsTask(grape, eatingDrinkingTask).

% --- grape juice ---
obj(grape_juice).
hasPhysicalQuality(grape_juice, liquid).
hasRole(grape_juice, consumableRole).
affordsTask(grape_juice, eatingDrinkingTask).

% --- grapes ---
obj(grapes).
hasPhysicalQuality(grapes, perishable).
hasRole(grapes, consumableRole).
affordsTask(grapes, eatingDrinkingTask).

% --- grease ---
obj(grease).
hasPhysicalQuality(grease, fragile).
hasPhysicalQuality(grease, liquid).
hasRole(grease, cleaningToolRole).
affordsTask(grease, maintenanceTask).

% --- grill ---
obj(grill).
hasPhysicalQuality(grill, heated).
hasPhysicalQuality(grill, heavy).
hasRole(grill, cookwareRole).
affordsTask(grill, foodPreparationTask).

% --- groceries ---
obj(groceries).
hasPhysicalQuality(groceries, perishable).
hasRole(groceries, consumableRole).
affordsTask(groceries, eatingDrinkingTask).

% --- gum ---
obj(gum).
hasPhysicalQuality(gum, liquid).
hasPhysicalQuality(gum, perishable).
hasRole(gum, consumableRole).
affordsTask(gum, eatingDrinkingTask).

% --- gutter ---
obj(gutter).
hasPhysicalQuality(gutter, heavy).
hasPhysicalQuality(gutter, rigid).
hasRole(gutter, toolRole).
affordsTask(gutter, maintenanceTask).

% --- hair dryer ---
obj(hair_dryer).
hasPhysicalQuality(hair_dryer, electronic).
hasPhysicalQuality(hair_dryer, heavy).
hasRole(hair_dryer, applianceRole).
affordsTask(hair_dryer, leisureTask).

% --- hairbrush ---
obj(hairbrush).
hasPhysicalQuality(hairbrush, lightweight).
hasPhysicalQuality(hairbrush, rigid).
hasRole(hairbrush, toolRole).
affordsTask(hairbrush, hygieneTask).

% --- hammer ---
obj(hammer).
hasPhysicalQuality(hammer, heavy).
hasPhysicalQuality(hammer, rigid).
hasRole(hammer, toolRole).
affordsTask(hammer, maintenanceTask).

% --- handbag ---
obj(handbag).
hasPhysicalQuality(handbag, lightweight).
hasPhysicalQuality(handbag, soft_Deformable).
hasRole(handbag, storageContainerRole).
affordsTask(handbag, storageTask).

% --- hanger ---
obj(hanger).
hasPhysicalQuality(hanger, lightweight).
hasPhysicalQuality(hanger, rigid).
hasPhysicalQuality(hanger, soft_Deformable).
hasRole(hanger, clothingRole).
affordsTask(hanger, dressingTask).

% --- hard drive ---
obj(hard_drive).
hasPhysicalQuality(hard_drive, electronic).
hasPhysicalQuality(hard_drive, heavy).
hasRole(hard_drive, applianceRole).
affordsTask(hard_drive, storageTask).

% --- hat ---
obj(hat).
hasPhysicalQuality(hat, lightweight).
hasPhysicalQuality(hat, soft_Deformable).
hasRole(hat, clothingRole).
affordsTask(hat, dressingTask).

% --- heated towel rack ---
obj(heated_towel_rack).
hasPhysicalQuality(heated_towel_rack, heated).
hasRole(heated_towel_rack, applianceRole).
affordsTask(heated_towel_rack, hygieneTask).

% --- heater ---
obj(heater).
hasPhysicalQuality(heater, heated).
hasRole(heater, applianceRole).
affordsTask(heater, maintenanceTask).

% --- hide bed ---
obj(hide_bed).
hasPhysicalQuality(hide_bed, lightweight).
hasPhysicalQuality(hide_bed, soft_Deformable).
hasRole(hide_bed, furnitureRole).
affordsTask(hide_bed, sleepingTask).

% --- hide bed sofa ---
obj(hide_bed_sofa).
hasPhysicalQuality(hide_bed_sofa, fragile).
hasPhysicalQuality(hide_bed_sofa, soft_Deformable).
hasRole(hide_bed_sofa, furnitureRole).
affordsTask(hide_bed_sofa, sleepingTask).

% --- highlighter ---
obj(highlighter).
hasPhysicalQuality(highlighter, lightweight).
hasPhysicalQuality(highlighter, rigid).
hasRole(highlighter, utensilRole).
affordsTask(highlighter, foodPreparationTask).

% --- highlighter pen ---
obj(highlighter_pen).
hasPhysicalQuality(highlighter_pen, lightweight).
hasPhysicalQuality(highlighter_pen, rigid).
hasRole(highlighter_pen, utensilRole).
affordsTask(highlighter_pen, foodPreparationTask).

% --- hinged door ---
obj(hinged_door).
hasPhysicalQuality(hinged_door, heavy).
hasPhysicalQuality(hinged_door, rigid).
hasRole(hinged_door, furnitureRole).
affordsTask(hinged_door, storageTask).

% --- holdall ---
obj(holdall).
hasPhysicalQuality(holdall, lightweight).
hasPhysicalQuality(holdall, soft_Deformable).
hasRole(holdall, storageContainerRole).
affordsTask(holdall, storageTask).

% --- hole punch ---
obj(hole_punch).
hasPhysicalQuality(hole_punch, hasBlade).
hasPhysicalQuality(hole_punch, heavy).
hasPhysicalQuality(hole_punch, rigid).
hasPhysicalQuality(hole_punch, sharp).
hasRole(hole_punch, toolRole).
affordsTask(hole_punch, maintenanceTask).

% --- honey ---
obj(honey).
hasPhysicalQuality(honey, perishable).
hasRole(honey, consumableRole).
affordsTask(honey, eatingDrinkingTask).

% --- hook ---
obj(hook).
hasRole(hook, toolRole).

% --- horn ---
obj(horn).
hasPhysicalQuality(horn, lightweight).
hasPhysicalQuality(horn, rigid).
hasRole(horn, musicalInstrumentRole).
affordsTask(horn, leisureTask).

% --- hose ---
obj(hose).
hasPhysicalQuality(hose, isFlexible).
hasPhysicalQuality(hose, liquid).
hasRole(hose, toolRole).
affordsTask(hose, cleaningTask).

% --- hot sauce ---
obj(hot_sauce).
hasPhysicalQuality(hot_sauce, liquid).
hasPhysicalQuality(hot_sauce, perishable).
hasRole(hot_sauce, consumableRole).
affordsTask(hot_sauce, eatingDrinkingTask).

% --- hot table ---
obj(hot_table).
hasPhysicalQuality(hot_table, heated).
hasRole(hot_table, cookwareRole).
hasRole(hot_table, furnitureRole).
affordsTask(hot_table, foodPreparationTask).

% --- house ---
obj(house).
hasPhysicalQuality(house, heavy).
hasRole(house, furnitureRole).
hasRole(house, storageContainerRole).
affordsTask(house, leisureTask).
affordsTask(house, workStudyTask).

% --- ice cream ---
obj(ice_cream).
hasPhysicalQuality(ice_cream, perishable).
hasPhysicalQuality(ice_cream, requiresFreezing).
hasRole(ice_cream, consumableRole).
affordsTask(ice_cream, eatingDrinkingTask).

% --- ice cubes ---
obj(ice_cubes).
hasPhysicalQuality(ice_cubes, perishable).
hasPhysicalQuality(ice_cubes, requiresFreezing).
hasRole(ice_cubes, consumableRole).
affordsTask(ice_cubes, eatingDrinkingTask).

% --- icebox ---
obj(icebox).
hasPhysicalQuality(icebox, requiresFreezing).
hasRole(icebox, applianceRole).
affordsTask(icebox, storageTask).

% --- index card ---
obj(index_card).
hasPhysicalQuality(index_card, lightweight).
hasPhysicalQuality(index_card, rigid).
hasRole(index_card, documentRole).
affordsTask(index_card, workStudyTask).

% --- index card cabinet ---
obj(index_card_cabinet).
hasPhysicalQuality(index_card_cabinet, hasContainer).
hasPhysicalQuality(index_card_cabinet, heavy).
hasRole(index_card_cabinet, storageContainerRole).
affordsTask(index_card_cabinet, storageTask).

% --- ink ---
obj(ink).
hasPhysicalQuality(ink, liquid).
hasPhysicalQuality(ink, toxic_Hazardous).

% --- instrument triangle ---
obj(instrument_triangle).
hasPhysicalQuality(instrument_triangle, lightweight).
hasPhysicalQuality(instrument_triangle, rigid).
hasRole(instrument_triangle, musicalInstrumentRole).
affordsTask(instrument_triangle, leisureTask).

% --- iron ---
obj(iron).
hasPhysicalQuality(iron, heated).
hasPhysicalQuality(iron, heavy).
hasRole(iron, toolRole).
affordsTask(iron, maintenanceTask).

% --- jacket ---
obj(jacket).
hasPhysicalQuality(jacket, soft_Deformable).
hasPhysicalQuality(jacket, washable).
hasRole(jacket, clothingRole).
affordsTask(jacket, dressingTask).

% --- jar ---
obj(jar).
hasPhysicalQuality(jar, hasContainer).
hasRole(jar, storageContainerRole).
affordsTask(jar, storageTask).

% --- jars ---
obj(jars).
hasPhysicalQuality(jars, hasContainer).
hasRole(jars, storageContainerRole).
affordsTask(jars, storageTask).

% --- jeans ---
obj(jeans).
hasPhysicalQuality(jeans, soft_Deformable).
hasPhysicalQuality(jeans, washable).
hasRole(jeans, clothingRole).
affordsTask(jeans, dressingTask).

% --- jello ---
obj(jello).
hasPhysicalQuality(jello, perishable).
hasPhysicalQuality(jello, soft_Deformable).
hasRole(jello, consumableRole).
affordsTask(jello, eatingDrinkingTask).

% --- jelly ---
obj(jelly).
hasPhysicalQuality(jelly, liquid).
hasPhysicalQuality(jelly, soft_Deformable).
hasRole(jelly, consumableRole).
affordsTask(jelly, eatingDrinkingTask).

% --- juice ---
obj(juice).
hasPhysicalQuality(juice, liquid).
hasPhysicalQuality(juice, perishable).
hasRole(juice, consumableRole).
affordsTask(juice, eatingDrinkingTask).

% --- ketchup ---
obj(ketchup).
hasPhysicalQuality(ketchup, liquid).
hasPhysicalQuality(ketchup, perishable).
hasRole(ketchup, consumableRole).
affordsTask(ketchup, eatingDrinkingTask).

% --- kettle ---
obj(kettle).
hasPhysicalQuality(kettle, heated).
hasPhysicalQuality(kettle, heavy).
hasRole(kettle, cookwareRole).
affordsTask(kettle, foodPreparationTask).

% --- key ---
obj(key).
hasPhysicalQuality(key, sharp).
hasRole(key, toolRole).
affordsTask(key, maintenanceTask).

% --- keyboard ---
obj(keyboard).
hasPhysicalQuality(keyboard, electronic).
hasPhysicalQuality(keyboard, lightweight).
hasRole(keyboard, toolRole).
affordsTask(keyboard, workStudyTask).

% --- keys ---
obj(keys).
hasPhysicalQuality(keys, lightweight).
hasPhysicalQuality(keys, rigid).
hasRole(keys, toolRole).
affordsTask(keys, maintenanceTask).

% --- kitchen table ---
obj(kitchen_table).
hasPhysicalQuality(kitchen_table, heavy).
hasPhysicalQuality(kitchen_table, rigid).
hasRole(kitchen_table, furnitureRole).
affordsTask(kitchen_table, eatingDrinkingTask).
affordsTask(kitchen_table, foodPreparationTask).

% --- kitchen utensil ---
obj(kitchen_utensil).
hasPhysicalQuality(kitchen_utensil, rigid).
hasPhysicalQuality(kitchen_utensil, sharp).
hasRole(kitchen_utensil, utensilRole).
affordsTask(kitchen_utensil, foodPreparationTask).

% --- kitchenette ---
obj(kitchenette).
hasPhysicalQuality(kitchenette, heavy).
hasPhysicalQuality(kitchenette, rigid).
hasRole(kitchenette, cookwareRole).
hasRole(kitchenette, storageContainerRole).
affordsTask(kitchenette, eatingDrinkingTask).
affordsTask(kitchenette, foodPreparationTask).

% --- kleenex ---
obj(kleenex).
hasPhysicalQuality(kleenex, lightweight).
hasPhysicalQuality(kleenex, soft_Deformable).
hasRole(kleenex, consumableRole).
affordsTask(kleenex, hygieneTask).

% --- knife ---
obj(knife).
hasPhysicalQuality(knife, rigid).
hasPhysicalQuality(knife, sharp).
hasRole(knife, utensilRole).
affordsTask(knife, foodPreparationTask).

% --- knives ---
obj(knives).
hasPhysicalQuality(knives, rigid).
hasPhysicalQuality(knives, sharp).
hasRole(knives, utensilRole).
affordsTask(knives, foodPreparationTask).

% --- knob ---
obj(knob).
hasPhysicalQuality(knob, lightweight).
hasPhysicalQuality(knob, rigid).
hasRole(knob, toolRole).
affordsTask(knob, maintenanceTask).

% --- label maker ---
obj(label_maker).
hasPhysicalQuality(label_maker, electronic).
hasPhysicalQuality(label_maker, lightweight).
hasRole(label_maker, toolRole).
affordsTask(label_maker, workStudyTask).

% --- ladder ---
obj(ladder).
hasPhysicalQuality(ladder, heavy).
hasPhysicalQuality(ladder, rigid).
hasRole(ladder, toolRole).
affordsTask(ladder, maintenanceTask).

% --- lamp ---
obj(lamp).
hasPhysicalQuality(lamp, electronic).
hasPhysicalQuality(lamp, lightweight).
hasRole(lamp, lightingRole).
affordsTask(lamp, leisureTask).

% --- led ---
obj(led).
hasPhysicalQuality(led, electronic).
hasPhysicalQuality(led, lightweight).
hasRole(led, toolRole).
affordsTask(led, maintenanceTask).

% --- ledger ---
obj(ledger).
hasPhysicalQuality(ledger, lightweight).
hasRole(ledger, documentRole).
affordsTask(ledger, workStudyTask).

% --- leg ---
obj(leg).
hasPhysicalQuality(leg, heavy).
hasPhysicalQuality(leg, rigid).
hasRole(leg, furnitureRole).

% --- legs ---
obj(legs).
hasRole(legs, furnitureRole).

% --- lemon ---
obj(lemon).
hasPhysicalQuality(lemon, fragile).
hasPhysicalQuality(lemon, perishable).
hasRole(lemon, consumableRole).
affordsTask(lemon, eatingDrinkingTask).

% --- lemon curd ---
obj(lemon_curd).
hasPhysicalQuality(lemon_curd, perishable).
hasRole(lemon_curd, consumableRole).
affordsTask(lemon_curd, eatingDrinkingTask).

% --- lemon juice ---
obj(lemon_juice).
hasPhysicalQuality(lemon_juice, liquid).
hasPhysicalQuality(lemon_juice, perishable).
hasRole(lemon_juice, consumableRole).
affordsTask(lemon_juice, eatingDrinkingTask).

% --- letter slot ---
obj(letter_slot).
hasPhysicalQuality(letter_slot, lightweight).
hasRole(letter_slot, storageContainerRole).
affordsTask(letter_slot, wasteDisposalTask).

% --- letters ---
obj(letters).
hasPhysicalQuality(letters, lightweight).
hasRole(letters, documentRole).

% --- lettuce ---
obj(lettuce).
hasPhysicalQuality(lettuce, perishable).
hasRole(lettuce, consumableRole).
affordsTask(lettuce, foodPreparationTask).

% --- level ---
obj(level).
hasPhysicalQuality(level, rigid).
hasRole(level, toolRole).
affordsTask(level, maintenanceTask).

% --- light ---
obj(light).
hasPhysicalQuality(light, electronic).
hasPhysicalQuality(light, lightweight).
hasRole(light, lightingRole).
affordsTask(light, leisureTask).

% --- light bulb ---
obj(light_bulb).
hasPhysicalQuality(light_bulb, electronic).
hasPhysicalQuality(light_bulb, lightweight).
hasRole(light_bulb, lightingRole).
affordsTask(light_bulb, leisureTask).

% --- light source ---
obj(light_source).
hasPhysicalQuality(light_source, electronic).
hasPhysicalQuality(light_source, heated).
hasRole(light_source, lightingRole).
affordsTask(light_source, leisureTask).

% --- lightbulb ---
obj(lightbulb).
hasPhysicalQuality(lightbulb, electronic).
hasPhysicalQuality(lightbulb, lightweight).
hasRole(lightbulb, lightingRole).
affordsTask(lightbulb, leisureTask).

% --- limes ---
obj(limes).
hasPhysicalQuality(limes, perishable).
hasRole(limes, consumableRole).
affordsTask(limes, eatingDrinkingTask).

% --- line ---
obj(line).
hasPhysicalQuality(line, lightweight).
hasPhysicalQuality(line, rigid).
hasRole(line, toolRole).
affordsTask(line, maintenanceTask).

% --- linen ---
obj(linen).
hasPhysicalQuality(linen, soft_Deformable).
hasPhysicalQuality(linen, washable).
hasRole(linen, clothingRole).
affordsTask(linen, dressingTask).

% --- linen chest ---
obj(linen_chest).
hasPhysicalQuality(linen_chest, heavy).
hasPhysicalQuality(linen_chest, rigid).
hasRole(linen_chest, storageContainerRole).
affordsTask(linen_chest, storageTask).

% --- linoleum ---
obj(linoleum).
hasPhysicalQuality(linoleum, fragile).
hasRole(linoleum, furnitureRole).

% --- liquids ---
obj(liquids).
hasPhysicalQuality(liquids, liquid).
hasRole(liquids, consumableRole).
affordsTask(liquids, eatingDrinkingTask).

% --- liquor glass ---
obj(liquor_glass).
hasPhysicalQuality(liquor_glass, lightweight).
hasPhysicalQuality(liquor_glass, rigid).
hasRole(liquor_glass, utensilRole).
affordsTask(liquor_glass, eatingDrinkingTask).

% --- lock ---
obj(lock).
hasPhysicalQuality(lock, heavy).
hasRole(lock, toolRole).
affordsTask(lock, maintenanceTask).

% --- love seat ---
obj(love_seat).
hasPhysicalQuality(love_seat, heavy).
hasPhysicalQuality(love_seat, soft_Deformable).
hasRole(love_seat, furnitureRole).
affordsTask(love_seat, storageTask).

% --- luggage ---
obj(luggage).
hasPhysicalQuality(luggage, hasContainer).
hasPhysicalQuality(luggage, lightweight).
hasRole(luggage, storageContainerRole).

% --- machine ---
obj(machine).
hasPhysicalQuality(machine, electronic).
hasPhysicalQuality(machine, heavy).
hasRole(machine, toolRole).
affordsTask(machine, maintenanceTask).

% --- magazines ---
obj(magazines).
hasPhysicalQuality(magazines, lightweight).
hasRole(magazines, documentRole).
affordsTask(magazines, leisureTask).

% --- magnet ---
obj(magnet).
hasPhysicalQuality(magnet, rigid).
hasRole(magnet, toolRole).
affordsTask(magnet, maintenanceTask).

% --- mail ---
obj(mail).
hasRole(mail, consumableRole).

% --- mailbox ---
obj(mailbox).
hasPhysicalQuality(mailbox, heavy).
hasRole(mailbox, storageContainerRole).
affordsTask(mailbox, storageTask).

% --- map ---
obj(map).
hasPhysicalQuality(map, lightweight).
hasRole(map, toolRole).
affordsTask(map, leisureTask).

% --- maps ---
obj(maps).
hasRole(maps, toolRole).
affordsTask(maps, leisureTask).

% --- marble ---
obj(marble).
hasPhysicalQuality(marble, granular).
hasPhysicalQuality(marble, rigid).
hasRole(marble, decorationRole).

% --- marker ---
obj(marker).
hasPhysicalQuality(marker, lightweight).
hasRole(marker, toolRole).
affordsTask(marker, foodPreparationTask).

% --- mat ---
obj(mat).
hasPhysicalQuality(mat, lightweight).
hasPhysicalQuality(mat, soft_Deformable).
hasRole(mat, furnitureRole).
affordsTask(mat, storageTask).

% --- matches ---
obj(matches).
hasPhysicalQuality(matches, fragile).
hasPhysicalQuality(matches, lightweight).
hasRole(matches, toolRole).
affordsTask(matches, maintenanceTask).

% --- material ---
obj(material).
hasPhysicalQuality(material, granular).
hasRole(material, consumableRole).

% --- mayonnaise ---
obj(mayonnaise).
hasPhysicalQuality(mayonnaise, liquid).
hasPhysicalQuality(mayonnaise, perishable).
hasRole(mayonnaise, consumableRole).
affordsTask(mayonnaise, eatingDrinkingTask).

% --- meat ---
obj(meat).
hasPhysicalQuality(meat, perishable).
hasRole(meat, consumableRole).
affordsTask(meat, eatingDrinkingTask).
affordsTask(meat, foodPreparationTask).

% --- mechanical pencil ---
obj(mechanical_pencil).
hasPhysicalQuality(mechanical_pencil, lightweight).
hasPhysicalQuality(mechanical_pencil, rigid).
hasRole(mechanical_pencil, toolRole).
affordsTask(mechanical_pencil, workStudyTask).

% --- medicine ---
obj(medicine).
hasPhysicalQuality(medicine, perishable).
hasRole(medicine, consumableRole).
affordsTask(medicine, eatingDrinkingTask).

% --- microwave ---
obj(microwave).
hasPhysicalQuality(microwave, electronic).
hasPhysicalQuality(microwave, heated).
hasRole(microwave, applianceRole).
affordsTask(microwave, foodPreparationTask).

% --- microwave oven ---
obj(microwave_oven).
hasPhysicalQuality(microwave_oven, electronic).
hasPhysicalQuality(microwave_oven, heated).
hasRole(microwave_oven, applianceRole).
affordsTask(microwave_oven, foodPreparationTask).

% --- milk ---
obj(milk).
hasPhysicalQuality(milk, perishable).
hasRole(milk, consumableRole).
affordsTask(milk, eatingDrinkingTask).

% --- mirror ---
obj(mirror).
hasPhysicalQuality(mirror, electronic).
hasPhysicalQuality(mirror, rigid).
hasRole(mirror, decorationRole).

% --- monitor ---
obj(monitor).
hasRole(monitor, entertainmentRole).
affordsTask(monitor, leisureTask).

% --- motherboard ---
obj(motherboard).
hasPhysicalQuality(motherboard, electronic).
hasPhysicalQuality(motherboard, rigid).
hasRole(motherboard, toolRole).

% --- mouse ---
obj(mouse).
hasPhysicalQuality(mouse, lightweight).
hasRole(mouse, consumableRole).

% --- mouthwash ---
obj(mouthwash).
hasPhysicalQuality(mouthwash, liquid).
hasPhysicalQuality(mouthwash, toxic_Hazardous).
hasRole(mouthwash, cleaningToolRole).
affordsTask(mouthwash, hygieneTask).

% --- mug ---
obj(mug).
hasPhysicalQuality(mug, hasContainer).
hasPhysicalQuality(mug, liquid).
hasRole(mug, utensilRole).
affordsTask(mug, eatingDrinkingTask).

% --- music stand ---
obj(music_stand).
hasPhysicalQuality(music_stand, lightweight).
hasPhysicalQuality(music_stand, rigid).
hasRole(music_stand, furnitureRole).
affordsTask(music_stand, workStudyTask).

% --- musical instrument ---
obj(musical_instrument).
hasRole(musical_instrument, musicalInstrumentRole).

% --- mustard ---
obj(mustard).
hasPhysicalQuality(mustard, liquid).
hasRole(mustard, consumableRole).
affordsTask(mustard, eatingDrinkingTask).

% --- nail clippers ---
obj(nail_clippers).
hasPhysicalQuality(nail_clippers, rigid).
hasPhysicalQuality(nail_clippers, sharp).
hasRole(nail_clippers, toolRole).
affordsTask(nail_clippers, hygieneTask).

% --- nails ---
obj(nails).
hasPhysicalQuality(nails, rigid).
hasPhysicalQuality(nails, sharp).
hasRole(nails, toolRole).
affordsTask(nails, maintenanceTask).

% --- nest of tables ---
obj(nest_of_tables).
hasRole(nest_of_tables, furnitureRole).

% --- net ---
obj(net).
hasRole(net, toolRole).

% --- night table ---
obj(night_table).
hasPhysicalQuality(night_table, heavy).
hasPhysicalQuality(night_table, rigid).
hasRole(night_table, furnitureRole).
affordsTask(night_table, storageTask).

% --- notebook ---
obj(notebook).
hasPhysicalQuality(notebook, lightweight).
hasPhysicalQuality(notebook, rigid).
hasRole(notebook, documentRole).
affordsTask(notebook, workStudyTask).

% --- notepad ---
obj(notepad).
hasPhysicalQuality(notepad, lightweight).
hasPhysicalQuality(notepad, rigid).
hasRole(notepad, documentRole).
affordsTask(notepad, workStudyTask).

% --- nuts ---
obj(nuts).
hasPhysicalQuality(nuts, granular).
hasPhysicalQuality(nuts, perishable).
hasRole(nuts, consumableRole).
affordsTask(nuts, eatingDrinkingTask).

% --- nylon ---
obj(nylon).
hasPhysicalQuality(nylon, lightweight).
hasPhysicalQuality(nylon, soft_Deformable).

% --- oilcloth ---
obj(oilcloth).
hasPhysicalQuality(oilcloth, soft_Deformable).
hasPhysicalQuality(oilcloth, washable).
hasRole(oilcloth, clothingRole).
affordsTask(oilcloth, leisureTask).

% --- old books ---
obj(old_books).
hasPhysicalQuality(old_books, fragile).
hasPhysicalQuality(old_books, lightweight).
hasRole(old_books, documentRole).
affordsTask(old_books, leisureTask).

% --- old dress ---
obj(old_dress).
hasPhysicalQuality(old_dress, lightweight).
hasPhysicalQuality(old_dress, soft_Deformable).
hasRole(old_dress, clothingRole).
affordsTask(old_dress, dressingTask).

% --- olives ---
obj(olives).
hasPhysicalQuality(olives, perishable).
hasRole(olives, consumableRole).
affordsTask(olives, eatingDrinkingTask).

% --- one person chair ---
obj(one_person_chair).
hasPhysicalQuality(one_person_chair, rigid).
hasRole(one_person_chair, furnitureRole).
affordsTask(one_person_chair, leisureTask).

% --- onions ---
obj(onions).
hasPhysicalQuality(onions, perishable).
hasRole(onions, consumableRole).
affordsTask(onions, foodPreparationTask).

% --- orange juice ---
obj(orange_juice).
hasPhysicalQuality(orange_juice, perishable).
hasRole(orange_juice, consumableRole).
affordsTask(orange_juice, eatingDrinkingTask).

% --- ottoman ---
obj(ottoman).
hasPhysicalQuality(ottoman, heavy).
hasPhysicalQuality(ottoman, soft_Deformable).
hasRole(ottoman, furnitureRole).
affordsTask(ottoman, leisureTask).

% --- oven ---
obj(oven).
hasPhysicalQuality(oven, heated).
hasRole(oven, cookwareRole).
affordsTask(oven, foodPreparationTask).

% --- oven mitts ---
obj(oven_mitts).
hasPhysicalQuality(oven_mitts, lightweight).
hasPhysicalQuality(oven_mitts, soft_Deformable).
hasRole(oven_mitts, utensilRole).
affordsTask(oven_mitts, foodPreparationTask).

% --- page ---
obj(page).
hasRole(page, documentRole).

% --- pail ---
obj(pail).
hasPhysicalQuality(pail, hasContainer).
hasRole(pail, storageContainerRole).
affordsTask(pail, storageTask).

% --- paint ---
obj(paint).
hasPhysicalQuality(paint, liquid).
hasPhysicalQuality(paint, toxic_Hazardous).
affordsTask(paint, maintenanceTask).

% --- pair of pants ---
obj(pair_of_pants).
hasPhysicalQuality(pair_of_pants, lightweight).
hasPhysicalQuality(pair_of_pants, soft_Deformable).
hasRole(pair_of_pants, clothingRole).
affordsTask(pair_of_pants, dressingTask).

% --- pair of scissors ---
obj(pair_of_scissors).
hasPhysicalQuality(pair_of_scissors, rigid).
hasPhysicalQuality(pair_of_scissors, sharp).
hasRole(pair_of_scissors, toolRole).
affordsTask(pair_of_scissors, maintenanceTask).

% --- pan ---
obj(pan).
hasPhysicalQuality(pan, heated).
hasPhysicalQuality(pan, rigid).
hasRole(pan, cookwareRole).
affordsTask(pan, foodPreparationTask).

% --- pantry ---
obj(pantry).
hasPhysicalQuality(pantry, hasContainer).
hasRole(pantry, applianceRole).
hasRole(pantry, storageContainerRole).
affordsTask(pantry, storageTask).

% --- paper ---
obj(paper).
hasPhysicalQuality(paper, flammable).
hasPhysicalQuality(paper, fragile).
hasRole(paper, consumableRole).
affordsTask(paper, eatingDrinkingTask).

% --- paper and pencil ---
obj(paper_and_pencil).
hasPhysicalQuality(paper_and_pencil, lightweight).
hasPhysicalQuality(paper_and_pencil, rigid).
hasRole(paper_and_pencil, toolRole).
affordsTask(paper_and_pencil, workStudyTask).

% --- paper clip ---
obj(paper_clip).
hasPhysicalQuality(paper_clip, lightweight).
hasPhysicalQuality(paper_clip, rigid).
hasRole(paper_clip, toolRole).
affordsTask(paper_clip, maintenanceTask).

% --- paper clips ---
obj(paper_clips).
hasPhysicalQuality(paper_clips, lightweight).
hasPhysicalQuality(paper_clips, rigid).
hasRole(paper_clips, toolRole).
affordsTask(paper_clips, maintenanceTask).

% --- paper fastener ---
obj(paper_fastener).
hasPhysicalQuality(paper_fastener, lightweight).
hasPhysicalQuality(paper_fastener, rigid).
hasRole(paper_fastener, toolRole).
affordsTask(paper_fastener, maintenanceTask).

% --- paper towels ---
obj(paper_towels).
hasPhysicalQuality(paper_towels, lightweight).
hasPhysicalQuality(paper_towels, soft_Deformable).
hasPhysicalQuality(paper_towels, washable).
hasRole(paper_towels, cleaningToolRole).
affordsTask(paper_towels, cleaningTask).

% --- paperweight ---
obj(paperweight).
hasPhysicalQuality(paperweight, heavy).
hasPhysicalQuality(paperweight, rigid).
hasRole(paperweight, storageContainerRole).

% --- parlor ---
obj(parlor).
hasRole(parlor, furnitureRole).

% --- patio door ---
obj(patio_door).
hasPhysicalQuality(patio_door, heavy).
hasPhysicalQuality(patio_door, rigid).
hasRole(patio_door, furnitureRole).
affordsTask(patio_door, leisureTask).

% --- peanut butter ---
obj(peanut_butter).
hasPhysicalQuality(peanut_butter, liquid).
hasPhysicalQuality(peanut_butter, perishable).
hasRole(peanut_butter, consumableRole).
affordsTask(peanut_butter, eatingDrinkingTask).

% --- peanuts ---
obj(peanuts).
hasPhysicalQuality(peanuts, granular).
hasPhysicalQuality(peanuts, perishable).
hasRole(peanuts, consumableRole).
affordsTask(peanuts, eatingDrinkingTask).

% --- pears ---
obj(pears).
hasPhysicalQuality(pears, perishable).
hasRole(pears, consumableRole).
affordsTask(pears, eatingDrinkingTask).

% --- peas ---
obj(peas).
hasPhysicalQuality(peas, perishable).
hasRole(peas, consumableRole).
affordsTask(peas, eatingDrinkingTask).

% --- pen ---
obj(pen).
hasPhysicalQuality(pen, lightweight).
hasPhysicalQuality(pen, rigid).
hasRole(pen, toolRole).
affordsTask(pen, workStudyTask).

% --- pencil ---
obj(pencil).
hasPhysicalQuality(pencil, lightweight).
hasPhysicalQuality(pencil, rigid).
hasRole(pencil, toolRole).

% --- pencil sharpener ---
obj(pencil_sharpener).
hasPhysicalQuality(pencil_sharpener, heavy).
hasPhysicalQuality(pencil_sharpener, rigid).
hasRole(pencil_sharpener, toolRole).
affordsTask(pencil_sharpener, maintenanceTask).

% --- pens and pencils ---
obj(pens_and_pencils).
hasPhysicalQuality(pens_and_pencils, lightweight).
hasRole(pens_and_pencils, utensilRole).
affordsTask(pens_and_pencils, workStudyTask).

% --- phillips head screwdriver ---
obj(phillips_head_screwdriver).
hasPhysicalQuality(phillips_head_screwdriver, heavy).
hasPhysicalQuality(phillips_head_screwdriver, rigid).
hasRole(phillips_head_screwdriver, toolRole).
affordsTask(phillips_head_screwdriver, maintenanceTask).

% --- phillips screwdriver ---
obj(phillips_screwdriver).
hasPhysicalQuality(phillips_screwdriver, lightweight).
hasPhysicalQuality(phillips_screwdriver, rigid).
hasRole(phillips_screwdriver, toolRole).
affordsTask(phillips_screwdriver, maintenanceTask).

% --- phone ---
obj(phone).
hasPhysicalQuality(phone, electronic).
hasPhysicalQuality(phone, lightweight).
hasRole(phone, toolRole).
affordsTask(phone, workStudyTask).

% --- phone book ---
obj(phone_book).
hasPhysicalQuality(phone_book, heavy).
hasRole(phone_book, documentRole).

% --- photograph ---
obj(photograph).
hasRole(photograph, documentRole).
affordsTask(photograph, leisureTask).

% --- piano ---
obj(piano).
hasPhysicalQuality(piano, electronic).
hasPhysicalQuality(piano, rigid).
hasRole(piano, musicalInstrumentRole).
affordsTask(piano, leisureTask).

% --- pickle ---
obj(pickle).
hasPhysicalQuality(pickle, perishable).
hasRole(pickle, consumableRole).
affordsTask(pickle, eatingDrinkingTask).

% --- picnic basket ---
obj(picnic_basket).
hasPhysicalQuality(picnic_basket, hasContainer).
hasRole(picnic_basket, furnitureRole).
hasRole(picnic_basket, storageContainerRole).
affordsTask(picnic_basket, eatingDrinkingTask).
affordsTask(picnic_basket, foodPreparationTask).

% --- picture frame ---
obj(picture_frame).
hasPhysicalQuality(picture_frame, lightweight).
hasPhysicalQuality(picture_frame, rigid).
hasRole(picture_frame, decorationRole).

% --- pictures ---
obj(pictures).
hasPhysicalQuality(pictures, lightweight).
hasRole(pictures, decorationRole).

% --- pillow ---
obj(pillow).
hasPhysicalQuality(pillow, lightweight).
hasPhysicalQuality(pillow, soft_Deformable).
hasRole(pillow, beddingRole).
affordsTask(pillow, sleepingTask).

% --- pillow case ---
obj(pillow_case).
hasPhysicalQuality(pillow_case, soft_Deformable).
hasPhysicalQuality(pillow_case, washable).
hasRole(pillow_case, beddingRole).
affordsTask(pillow_case, sleepingTask).

% --- pineapple ---
obj(pineapple).
hasPhysicalQuality(pineapple, perishable).
hasRole(pineapple, consumableRole).
affordsTask(pineapple, eatingDrinkingTask).

% --- pipe ---
obj(pipe).
hasPhysicalQuality(pipe, heavy).
hasRole(pipe, toolRole).
affordsTask(pipe, maintenanceTask).

% --- plastic ---
obj(plastic).
hasPhysicalQuality(plastic, granular).
hasPhysicalQuality(plastic, rigid).

% --- plate ---
obj(plate).
hasPhysicalQuality(plate, hasContainer).
hasPhysicalQuality(plate, rigid).
hasRole(plate, utensilRole).
affordsTask(plate, eatingDrinkingTask).

% --- plates ---
obj(plates).
hasPhysicalQuality(plates, lightweight).
hasPhysicalQuality(plates, rigid).
hasRole(plates, utensilRole).
affordsTask(plates, eatingDrinkingTask).

% --- plumbing ---
obj(plumbing).
hasPhysicalQuality(plumbing, heavy).
hasPhysicalQuality(plumbing, rigid).
hasRole(plumbing, toolRole).
affordsTask(plumbing, maintenanceTask).

% --- pocket ---
obj(pocket).
hasPhysicalQuality(pocket, lightweight).
hasPhysicalQuality(pocket, soft_Deformable).
hasRole(pocket, storageContainerRole).
affordsTask(pocket, storageTask).

% --- poker chips ---
obj(poker_chips).
hasPhysicalQuality(poker_chips, fragile).
hasPhysicalQuality(poker_chips, lightweight).
hasPhysicalQuality(poker_chips, rigid).
hasRole(poker_chips, entertainmentRole).
affordsTask(poker_chips, leisureTask).

% --- polish ---
obj(polish).
hasPhysicalQuality(polish, liquid).
hasRole(polish, cleaningToolRole).
affordsTask(polish, cleaningTask).

% --- popcorn ---
obj(popcorn).
hasPhysicalQuality(popcorn, perishable).
hasRole(popcorn, consumableRole).
affordsTask(popcorn, eatingDrinkingTask).

% --- pork ---
obj(pork).
hasPhysicalQuality(pork, perishable).
hasRole(pork, consumableRole).
affordsTask(pork, eatingDrinkingTask).

% --- portable shower head ---
obj(portable_shower_head).
hasPhysicalQuality(portable_shower_head, lightweight).
hasPhysicalQuality(portable_shower_head, liquid).
hasRole(portable_shower_head, cleaningToolRole).
affordsTask(portable_shower_head, hygieneTask).

% --- post note ---
obj(post_note).
hasRole(post_note, documentRole).

% --- post notes ---
obj(post_notes).
hasRole(post_notes, documentRole).

% --- poster ---
obj(poster).
hasRole(poster, decorationRole).

% --- pot ---
obj(pot).
hasPhysicalQuality(pot, heavy).
hasPhysicalQuality(pot, rigid).
hasRole(pot, cookwareRole).
affordsTask(pot, foodPreparationTask).

% --- potatoes ---
obj(potatoes).
hasPhysicalQuality(potatoes, perishable).
hasRole(potatoes, consumableRole).
affordsTask(potatoes, foodPreparationTask).

% --- pouch ---
obj(pouch).
hasPhysicalQuality(pouch, lightweight).
hasPhysicalQuality(pouch, soft_Deformable).
hasRole(pouch, storageContainerRole).
affordsTask(pouch, storageTask).

% --- power screwdriver ---
obj(power_screwdriver).
hasPhysicalQuality(power_screwdriver, electronic).
hasPhysicalQuality(power_screwdriver, heavy).
hasPhysicalQuality(power_screwdriver, rigid).
hasRole(power_screwdriver, toolRole).
affordsTask(power_screwdriver, maintenanceTask).

% --- printer ---
obj(printer).
hasPhysicalQuality(printer, electronic).
hasPhysicalQuality(printer, heavy).
hasRole(printer, applianceRole).
affordsTask(printer, workStudyTask).

% --- pump ---
obj(pump).
hasPhysicalQuality(pump, electronic).
hasPhysicalQuality(pump, heavy).
hasRole(pump, toolRole).
affordsTask(pump, maintenanceTask).

% --- purse ---
obj(purse).
hasPhysicalQuality(purse, lightweight).
hasPhysicalQuality(purse, soft_Deformable).
hasRole(purse, storageContainerRole).
affordsTask(purse, storageTask).

% --- puzzle ---
obj(puzzle).
hasRole(puzzle, entertainmentRole).
affordsTask(puzzle, leisureTask).

% --- quill brush ---
obj(quill_brush).
hasPhysicalQuality(quill_brush, lightweight).
hasPhysicalQuality(quill_brush, soft_Deformable).
hasRole(quill_brush, toolRole).

% --- radiator ---
obj(radiator).
hasPhysicalQuality(radiator, heated).
hasRole(radiator, applianceRole).
affordsTask(radiator, maintenanceTask).

% --- radio ---
obj(radio).
hasPhysicalQuality(radio, electronic).
hasPhysicalQuality(radio, lightweight).
hasRole(radio, applianceRole).
affordsTask(radio, leisureTask).

% --- rafter ---
obj(rafter).
hasPhysicalQuality(rafter, heavy).
hasPhysicalQuality(rafter, rigid).
hasRole(rafter, furnitureRole).

% --- railing ---
obj(railing).
hasPhysicalQuality(railing, rigid).
hasRole(railing, furnitureRole).

% --- ratchet screwdriver ---
obj(ratchet_screwdriver).
hasPhysicalQuality(ratchet_screwdriver, electronic).
hasPhysicalQuality(ratchet_screwdriver, heavy).
hasPhysicalQuality(ratchet_screwdriver, isRotary).
hasPhysicalQuality(ratchet_screwdriver, rigid).
hasRole(ratchet_screwdriver, toolRole).
affordsTask(ratchet_screwdriver, maintenanceTask).

% --- recycling bin ---
obj(recycling_bin).
hasPhysicalQuality(recycling_bin, hasContainer).
hasPhysicalQuality(recycling_bin, heavy).
hasRole(recycling_bin, storageContainerRole).
affordsTask(recycling_bin, wasteDisposalTask).

% --- refrigerator ---
obj(refrigerator).
hasPhysicalQuality(refrigerator, electronic).
hasPhysicalQuality(refrigerator, heavy).
hasPhysicalQuality(refrigerator, requiresCooling).
hasRole(refrigerator, applianceRole).
affordsTask(refrigerator, storageTask).

% --- remote control ---
obj(remote_control).
hasPhysicalQuality(remote_control, electronic).
hasPhysicalQuality(remote_control, lightweight).
hasRole(remote_control, toolRole).
affordsTask(remote_control, leisureTask).

% --- ribbon ---
obj(ribbon).
hasPhysicalQuality(ribbon, lightweight).
hasPhysicalQuality(ribbon, soft_Deformable).
hasRole(ribbon, clothingRole).
affordsTask(ribbon, dressingTask).

% --- rice ---
obj(rice).
hasPhysicalQuality(rice, granular).
hasRole(rice, consumableRole).
affordsTask(rice, foodPreparationTask).

% --- ring ---
obj(ring).
hasPhysicalQuality(ring, lightweight).
hasPhysicalQuality(ring, rigid).
hasRole(ring, utensilRole).

% --- roof ---
obj(roof).
hasPhysicalQuality(roof, heavy).
hasPhysicalQuality(roof, rigid).
hasRole(roof, furnitureRole).

% --- roots ---
obj(roots).
hasPhysicalQuality(roots, perishable).
hasRole(roots, consumableRole).

% --- rose ---
obj(rose).
hasPhysicalQuality(rose, perishable).
hasRole(rose, consumableRole).

% --- rotten food ---
obj(rotten_food).
hasPhysicalQuality(rotten_food, perishable).
hasPhysicalQuality(rotten_food, toxic_Hazardous).
hasRole(rotten_food, consumableRole).

% --- round brush ---
obj(round_brush).
hasPhysicalQuality(round_brush, lightweight).
hasPhysicalQuality(round_brush, soft_Deformable).
hasRole(round_brush, toolRole).
affordsTask(round_brush, cleaningTask).

% --- rug ---
obj(rug).
hasPhysicalQuality(rug, lightweight).
hasPhysicalQuality(rug, soft_Deformable).
hasRole(rug, furnitureRole).
affordsTask(rug, leisureTask).

% --- rule ---
obj(rule).
hasPhysicalQuality(rule, rigid).
hasRole(rule, toolRole).
affordsTask(rule, maintenanceTask).

% --- ruler ---
obj(ruler).
hasPhysicalQuality(ruler, rigid).
hasRole(ruler, toolRole).
affordsTask(ruler, maintenanceTask).

% --- salad ---
obj(salad).
hasPhysicalQuality(salad, perishable).
hasRole(salad, consumableRole).
affordsTask(salad, eatingDrinkingTask).

% --- salad bowl ---
obj(salad_bowl).
hasPhysicalQuality(salad_bowl, hasContainer).
hasRole(salad_bowl, storageContainerRole).
hasRole(salad_bowl, utensilRole).
affordsTask(salad_bowl, foodPreparationTask).

% --- salad spinner ---
obj(salad_spinner).
hasPhysicalQuality(salad_spinner, lightweight).
hasPhysicalQuality(salad_spinner, rigid).
hasRole(salad_spinner, utensilRole).
affordsTask(salad_spinner, foodPreparationTask).

% --- salt ---
obj(salt).
hasPhysicalQuality(salt, granular).
hasRole(salt, consumableRole).
affordsTask(salt, foodPreparationTask).

% --- salt and pepper ---
obj(salt_and_pepper).
hasPhysicalQuality(salt_and_pepper, granular).
hasRole(salt_and_pepper, consumableRole).
affordsTask(salt_and_pepper, foodPreparationTask).

% --- saltshaker ---
obj(saltshaker).
hasPhysicalQuality(saltshaker, granular).
hasPhysicalQuality(saltshaker, lightweight).
hasRole(saltshaker, utensilRole).
affordsTask(saltshaker, foodPreparationTask).

% --- sauce ---
obj(sauce).
hasPhysicalQuality(sauce, liquid).
hasPhysicalQuality(sauce, perishable).
hasRole(sauce, consumableRole).
affordsTask(sauce, foodPreparationTask).

% --- saucepan ---
obj(saucepan).
hasPhysicalQuality(saucepan, heated).
hasPhysicalQuality(saucepan, heavy).
hasRole(saucepan, cookwareRole).
affordsTask(saucepan, foodPreparationTask).

% --- saucer ---
obj(saucer).
hasPhysicalQuality(saucer, lightweight).
hasPhysicalQuality(saucer, rigid).
hasRole(saucer, utensilRole).
affordsTask(saucer, eatingDrinkingTask).

% --- scale ---
obj(scale).
hasPhysicalQuality(scale, electronic).
hasPhysicalQuality(scale, heavy).
hasRole(scale, toolRole).
affordsTask(scale, maintenanceTask).

% --- scissors ---
obj(scissors).
hasPhysicalQuality(scissors, rigid).
hasPhysicalQuality(scissors, sharp).
hasRole(scissors, toolRole).
affordsTask(scissors, maintenanceTask).

% --- scotch tape ---
obj(scotch_tape).
hasPhysicalQuality(scotch_tape, lightweight).
hasPhysicalQuality(scotch_tape, soft_Deformable).
hasRole(scotch_tape, toolRole).
affordsTask(scotch_tape, leisureTask).

% --- screwdriver ---
obj(screwdriver).
hasPhysicalQuality(screwdriver, lightweight).
hasPhysicalQuality(screwdriver, rigid).
hasRole(screwdriver, toolRole).
affordsTask(screwdriver, maintenanceTask).

% --- screws ---
obj(screws).
hasPhysicalQuality(screws, granular).
hasRole(screws, toolRole).
affordsTask(screws, maintenanceTask).

% --- seat ---
obj(seat).
hasPhysicalQuality(seat, heavy).
hasPhysicalQuality(seat, rigid).
hasRole(seat, furnitureRole).
affordsTask(seat, leisureTask).

% --- second floor ---
obj(second_floor).
hasRole(second_floor, furnitureRole).

% --- seeds ---
obj(seeds).
hasPhysicalQuality(seeds, perishable).
hasRole(seeds, consumableRole).

% --- self adhesive label ---
obj(self_adhesive_label).
hasPhysicalQuality(self_adhesive_label, lightweight).
hasPhysicalQuality(self_adhesive_label, soft_Deformable).
hasRole(self_adhesive_label, toolRole).
affordsTask(self_adhesive_label, maintenanceTask).

% --- separate shower ---
obj(separate_shower).
hasPhysicalQuality(separate_shower, electronic).
hasPhysicalQuality(separate_shower, heavy).
hasRole(separate_shower, furnitureRole).
affordsTask(separate_shower, hygieneTask).

% --- serving trolley ---
obj(serving_trolley).
hasPhysicalQuality(serving_trolley, heavy).
hasPhysicalQuality(serving_trolley, rigid).
hasRole(serving_trolley, furnitureRole).
affordsTask(serving_trolley, foodPreparationTask).

% --- shades ---
obj(shades).
hasPhysicalQuality(shades, lightweight).
hasPhysicalQuality(shades, rigid).
hasRole(shades, decorationRole).
affordsTask(shades, leisureTask).

% --- shampoo and conditioner ---
obj(shampoo_and_conditioner).
hasPhysicalQuality(shampoo_and_conditioner, liquid).
hasRole(shampoo_and_conditioner, cleaningToolRole).
affordsTask(shampoo_and_conditioner, hygieneTask).

% --- sheet ---
obj(sheet).
hasPhysicalQuality(sheet, soft_Deformable).
hasPhysicalQuality(sheet, washable).
hasRole(sheet, beddingRole).
affordsTask(sheet, sleepingTask).

% --- shelf ---
obj(shelf).
hasPhysicalQuality(shelf, heavy).
hasPhysicalQuality(shelf, rigid).
hasRole(shelf, storageContainerRole).
affordsTask(shelf, storageTask).

% --- shellac ---
obj(shellac).
hasPhysicalQuality(shellac, liquid).
hasRole(shellac, cleaningToolRole).
affordsTask(shellac, maintenanceTask).

% --- shirt ---
obj(shirt).
hasPhysicalQuality(shirt, lightweight).
hasPhysicalQuality(shirt, soft_Deformable).
hasRole(shirt, clothingRole).
affordsTask(shirt, dressingTask).

% --- shoes ---
obj(shoes).
hasPhysicalQuality(shoes, fragile).
hasPhysicalQuality(shoes, lightweight).
hasRole(shoes, clothingRole).
affordsTask(shoes, dressingTask).

% --- shopping bag ---
obj(shopping_bag).
hasPhysicalQuality(shopping_bag, hasContainer).
hasPhysicalQuality(shopping_bag, lightweight).
hasRole(shopping_bag, storageContainerRole).
affordsTask(shopping_bag, storageTask).

% --- shopping basket ---
obj(shopping_basket).
hasPhysicalQuality(shopping_basket, lightweight).
hasPhysicalQuality(shopping_basket, rigid).
hasRole(shopping_basket, storageContainerRole).

% --- shower door ---
obj(shower_door).
hasPhysicalQuality(shower_door, fragile).
hasPhysicalQuality(shower_door, rigid).
hasRole(shower_door, furnitureRole).
affordsTask(shower_door, hygieneTask).

% --- shower switch ---
obj(shower_switch).
hasPhysicalQuality(shower_switch, electronic).
hasPhysicalQuality(shower_switch, lightweight).
hasRole(shower_switch, toolRole).
affordsTask(shower_switch, maintenanceTask).

% --- shrimp ---
obj(shrimp).
hasPhysicalQuality(shrimp, fragile).
hasPhysicalQuality(shrimp, perishable).
hasRole(shrimp, consumableRole).
affordsTask(shrimp, eatingDrinkingTask).

% --- side chair ---
obj(side_chair).
hasPhysicalQuality(side_chair, heavy).
hasPhysicalQuality(side_chair, rigid).
hasRole(side_chair, furnitureRole).

% --- sideboard ---
obj(sideboard).
hasPhysicalQuality(sideboard, heavy).
hasPhysicalQuality(sideboard, rigid).
hasRole(sideboard, furnitureRole).
affordsTask(sideboard, storageTask).

% --- signs ---
obj(signs).
hasRole(signs, decorationRole).

% --- silk ---
obj(silk).
hasPhysicalQuality(silk, lightweight).
hasPhysicalQuality(silk, soft_Deformable).
hasRole(silk, clothingRole).

% --- silverware ---
obj(silverware).
hasPhysicalQuality(silverware, rigid).
hasPhysicalQuality(silverware, sharp).
hasRole(silverware, utensilRole).
affordsTask(silverware, foodPreparationTask).

% --- sink ---
obj(sink).
hasPhysicalQuality(sink, hasContainer).
hasPhysicalQuality(sink, heavy).
hasRole(sink, cleaningToolRole).
affordsTask(sink, cleaningTask).
affordsTask(sink, hygieneTask).

% --- skirt ---
obj(skirt).
hasPhysicalQuality(skirt, lightweight).
hasPhysicalQuality(skirt, soft_Deformable).
hasRole(skirt, clothingRole).
affordsTask(skirt, dressingTask).

% --- skirts ---
obj(skirts).
hasRole(skirts, clothingRole).
affordsTask(skirts, dressingTask).

% --- skylight ---
obj(skylight).
hasRole(skylight, lightingRole).
affordsTask(skylight, leisureTask).

% --- slipper ---
obj(slipper).
hasPhysicalQuality(slipper, lightweight).
hasPhysicalQuality(slipper, soft_Deformable).
hasRole(slipper, clothingRole).
affordsTask(slipper, dressingTask).

% --- slippers ---
obj(slippers).
hasPhysicalQuality(slippers, lightweight).
hasPhysicalQuality(slippers, soft_Deformable).
hasRole(slippers, clothingRole).
affordsTask(slippers, dressingTask).

% --- smoothie ---
obj(smoothie).
hasPhysicalQuality(smoothie, liquid).
hasPhysicalQuality(smoothie, perishable).
hasRole(smoothie, consumableRole).
affordsTask(smoothie, eatingDrinkingTask).

% --- soap ---
obj(soap).
hasPhysicalQuality(soap, fragile).
hasPhysicalQuality(soap, liquid).
hasRole(soap, cleaningToolRole).
affordsTask(soap, hygieneTask).

% --- soap dish ---
obj(soap_dish).
hasPhysicalQuality(soap_dish, lightweight).
hasPhysicalQuality(soap_dish, rigid).
hasRole(soap_dish, storageContainerRole).
affordsTask(soap_dish, hygieneTask).

% --- sock ---
obj(sock).
hasPhysicalQuality(sock, lightweight).
hasPhysicalQuality(sock, soft_Deformable).
hasRole(sock, clothingRole).
affordsTask(sock, dressingTask).

% --- sofa ---
obj(sofa).
hasPhysicalQuality(sofa, heavy).
hasPhysicalQuality(sofa, soft_Deformable).
hasRole(sofa, furnitureRole).
affordsTask(sofa, leisureTask).

% --- sofabed ---
obj(sofabed).
hasPhysicalQuality(sofabed, fragile).
hasPhysicalQuality(sofabed, soft_Deformable).
hasRole(sofabed, furnitureRole).
affordsTask(sofabed, sleepingTask).

% --- spatula ---
obj(spatula).
hasPhysicalQuality(spatula, hasBlade).
hasPhysicalQuality(spatula, rigid).
hasPhysicalQuality(spatula, sharp).
hasRole(spatula, utensilRole).
affordsTask(spatula, foodPreparationTask).

% --- speaker ---
obj(speaker).
hasPhysicalQuality(speaker, electronic).
hasRole(speaker, toolRole).
affordsTask(speaker, leisureTask).

% --- spices ---
obj(spices).
hasPhysicalQuality(spices, granular).
hasRole(spices, consumableRole).
affordsTask(spices, foodPreparationTask).

% --- spoon ---
obj(spoon).
hasPhysicalQuality(spoon, lightweight).
hasPhysicalQuality(spoon, rigid).
hasPhysicalQuality(spoon, sharp).
hasRole(spoon, utensilRole).
affordsTask(spoon, foodPreparationTask).

% --- spray hose ---
obj(spray_hose).
hasPhysicalQuality(spray_hose, gas_Aerosol).
hasPhysicalQuality(spray_hose, liquid).
hasRole(spray_hose, toolRole).
affordsTask(spray_hose, maintenanceTask).

% --- stacking chairs ---
obj(stacking_chairs).
hasPhysicalQuality(stacking_chairs, lightweight).
hasRole(stacking_chairs, storageContainerRole).
affordsTask(stacking_chairs, storageTask).

% --- stain ---
obj(stain).
hasRole(stain, cleaningToolRole).
affordsTask(stain, cleaningTask).

% --- staircase ---
obj(staircase).
hasPhysicalQuality(staircase, heavy).
hasPhysicalQuality(staircase, rigid).
hasRole(staircase, furnitureRole).
affordsTask(staircase, maintenanceTask).

% --- stairs ---
obj(stairs).
hasPhysicalQuality(stairs, heavy).
hasPhysicalQuality(stairs, rigid).
hasRole(stairs, furnitureRole).
affordsTask(stairs, maintenanceTask).

% --- stamp pad ---
obj(stamp_pad).
hasPhysicalQuality(stamp_pad, lightweight).
hasRole(stamp_pad, toolRole).
affordsTask(stamp_pad, maintenanceTask).

% --- stapler ---
obj(stapler).
hasPhysicalQuality(stapler, heavy).
hasPhysicalQuality(stapler, rigid).
hasRole(stapler, toolRole).
affordsTask(stapler, maintenanceTask).

% --- staples ---
obj(staples).
hasPhysicalQuality(staples, sharp).
hasRole(staples, toolRole).
affordsTask(staples, maintenanceTask).

% --- steak ---
obj(steak).
hasPhysicalQuality(steak, fragile).
hasPhysicalQuality(steak, perishable).
hasRole(steak, consumableRole).
affordsTask(steak, eatingDrinkingTask).
affordsTask(steak, foodPreparationTask).

% --- steel ---
obj(steel).
hasPhysicalQuality(steel, heavy).
hasPhysicalQuality(steel, rigid).
hasRole(steel, toolRole).

% --- stick of butter ---
obj(stick_of_butter).
hasPhysicalQuality(stick_of_butter, granular).
hasPhysicalQuality(stick_of_butter, perishable).
hasRole(stick_of_butter, consumableRole).
affordsTask(stick_of_butter, foodPreparationTask).

% --- storage ---
obj(storage).
hasPhysicalQuality(storage, hasContainer).
hasRole(storage, storageContainerRole).
affordsTask(storage, storageTask).

% --- storage furniture ---
obj(storage_furniture).
hasPhysicalQuality(storage_furniture, heavy).
hasPhysicalQuality(storage_furniture, rigid).
hasRole(storage_furniture, furnitureRole).
affordsTask(storage_furniture, storageTask).

% --- stove ---
obj(stove).
hasPhysicalQuality(stove, heated).
hasRole(stove, cookwareRole).
affordsTask(stove, foodPreparationTask).

% --- strawberries ---
obj(strawberries).
hasPhysicalQuality(strawberries, perishable).
hasRole(strawberries, consumableRole).
affordsTask(strawberries, eatingDrinkingTask).

% --- studio pedestal ---
obj(studio_pedestal).
hasPhysicalQuality(studio_pedestal, heavy).
hasPhysicalQuality(studio_pedestal, rigid).
hasRole(studio_pedestal, furnitureRole).
affordsTask(studio_pedestal, storageTask).

% --- sugar ---
obj(sugar).
hasPhysicalQuality(sugar, granular).
hasRole(sugar, consumableRole).
affordsTask(sugar, eatingDrinkingTask).

% --- suit ---
obj(suit).
hasPhysicalQuality(suit, fragile).
hasPhysicalQuality(suit, rigid).
hasRole(suit, clothingRole).
affordsTask(suit, dressingTask).

% --- suntan lotion ---
obj(suntan_lotion).
hasPhysicalQuality(suntan_lotion, liquid).
hasPhysicalQuality(suntan_lotion, washable).
hasRole(suntan_lotion, consumableRole).
affordsTask(suntan_lotion, hygieneTask).

% --- swiss cheese ---
obj(swiss_cheese).
hasPhysicalQuality(swiss_cheese, perishable).
hasRole(swiss_cheese, consumableRole).
affordsTask(swiss_cheese, eatingDrinkingTask).

% --- tabby cat ---
obj(tabby_cat).
hasPhysicalQuality(tabby_cat, fragile).
hasPhysicalQuality(tabby_cat, soft_Deformable).
hasRole(tabby_cat, entertainmentRole).
affordsTask(tabby_cat, leisureTask).

% --- table cloth ---
obj(table_cloth).
hasPhysicalQuality(table_cloth, lightweight).
hasPhysicalQuality(table_cloth, soft_Deformable).
hasRole(table_cloth, beddingRole).

% --- tablecloth ---
obj(tablecloth).
hasPhysicalQuality(tablecloth, soft_Deformable).
hasPhysicalQuality(tablecloth, washable).
hasRole(tablecloth, decorationRole).
affordsTask(tablecloth, leisureTask).

% --- tables ---
obj(tables).
hasPhysicalQuality(tables, heavy).
hasPhysicalQuality(tables, rigid).
hasRole(tables, furnitureRole).
affordsTask(tables, storageTask).

% --- tablespoon ---
obj(tablespoon).
hasPhysicalQuality(tablespoon, hasContainer).
hasPhysicalQuality(tablespoon, lightweight).
hasRole(tablespoon, utensilRole).
affordsTask(tablespoon, foodPreparationTask).

% --- tack ---
obj(tack).
hasPhysicalQuality(tack, rigid).
hasPhysicalQuality(tack, sharp).
hasRole(tack, utensilRole).
affordsTask(tack, foodPreparationTask).

% --- tap ---
obj(tap).
hasPhysicalQuality(tap, lightweight).
hasPhysicalQuality(tap, rigid).
hasRole(tap, toolRole).
affordsTask(tap, maintenanceTask).

% --- tape ---
obj(tape).
hasPhysicalQuality(tape, isFlexible).
hasPhysicalQuality(tape, lightweight).
hasRole(tape, toolRole).
affordsTask(tape, maintenanceTask).

% --- tape dispenser ---
obj(tape_dispenser).
hasPhysicalQuality(tape_dispenser, lightweight).
hasPhysicalQuality(tape_dispenser, rigid).
hasRole(tape_dispenser, toolRole).
affordsTask(tape_dispenser, maintenanceTask).

% --- tape measure ---
obj(tape_measure).
hasPhysicalQuality(tape_measure, lightweight).
hasPhysicalQuality(tape_measure, rigid).
hasRole(tape_measure, toolRole).
affordsTask(tape_measure, maintenanceTask).

% --- tar ---
obj(tar).
hasPhysicalQuality(tar, fragile).
hasPhysicalQuality(tar, granular).
hasRole(tar, consumableRole).

% --- tea ---
obj(tea).
hasPhysicalQuality(tea, liquid).
hasPhysicalQuality(tea, perishable).
hasRole(tea, consumableRole).
affordsTask(tea, eatingDrinkingTask).

% --- teakettle ---
obj(teakettle).
hasPhysicalQuality(teakettle, heated).
hasRole(teakettle, cookwareRole).
affordsTask(teakettle, foodPreparationTask).

% --- teaspoon ---
obj(teaspoon).
hasPhysicalQuality(teaspoon, lightweight).
hasPhysicalQuality(teaspoon, rigid).
hasRole(teaspoon, utensilRole).
affordsTask(teaspoon, foodPreparationTask).

% --- teddy bear ---
obj(teddy_bear).
hasRole(teddy_bear, entertainmentRole).
affordsTask(teddy_bear, leisureTask).

% --- telephone ---
obj(telephone).
hasPhysicalQuality(telephone, electronic).
hasPhysicalQuality(telephone, lightweight).
hasRole(telephone, toolRole).
affordsTask(telephone, workStudyTask).

% --- telephone book ---
obj(telephone_book).
hasPhysicalQuality(telephone_book, fragile).
hasPhysicalQuality(telephone_book, lightweight).
hasRole(telephone_book, documentRole).
affordsTask(telephone_book, workStudyTask).

% --- telephone directory ---
obj(telephone_directory).
hasRole(telephone_directory, documentRole).

% --- telephone index ---
obj(telephone_index).
hasPhysicalQuality(telephone_index, electronic).
hasPhysicalQuality(telephone_index, lightweight).
hasRole(telephone_index, toolRole).
affordsTask(telephone_index, workStudyTask).

% --- television ---
obj(television).
hasPhysicalQuality(television, electronic).
hasPhysicalQuality(television, heavy).
hasRole(television, applianceRole).
affordsTask(television, leisureTask).

% --- terrace railing ---
obj(terrace_railing).
hasPhysicalQuality(terrace_railing, heavy).
hasPhysicalQuality(terrace_railing, rigid).
hasRole(terrace_railing, furnitureRole).

% --- textile ---
obj(textile).
hasPhysicalQuality(textile, lightweight).
hasPhysicalQuality(textile, soft_Deformable).
hasRole(textile, clothingRole).

% --- thermostat ---
obj(thermostat).
hasPhysicalQuality(thermostat, electronic).
hasPhysicalQuality(thermostat, heavy).
hasRole(thermostat, applianceRole).

% --- thumb tack ---
obj(thumb_tack).
hasPhysicalQuality(thumb_tack, lightweight).
hasPhysicalQuality(thumb_tack, sharp).
hasRole(thumb_tack, toolRole).
affordsTask(thumb_tack, maintenanceTask).

% --- tiles ---
obj(tiles).
hasPhysicalQuality(tiles, granular).
hasPhysicalQuality(tiles, rigid).
hasRole(tiles, furnitureRole).

% --- tin cans ---
obj(tin_cans).
hasPhysicalQuality(tin_cans, heavy).
hasPhysicalQuality(tin_cans, rigid).
hasRole(tin_cans, storageContainerRole).
affordsTask(tin_cans, storageTask).

% --- tissue holder ---
obj(tissue_holder).
hasPhysicalQuality(tissue_holder, lightweight).
hasPhysicalQuality(tissue_holder, rigid).
hasRole(tissue_holder, storageContainerRole).
affordsTask(tissue_holder, storageTask).

% --- tofu ---
obj(tofu).
hasPhysicalQuality(tofu, lightweight).
hasPhysicalQuality(tofu, perishable).
hasRole(tofu, consumableRole).
affordsTask(tofu, eatingDrinkingTask).

% --- toilet brush ---
obj(toilet_brush).
hasPhysicalQuality(toilet_brush, fragile).
hasPhysicalQuality(toilet_brush, lightweight).
hasRole(toilet_brush, cleaningToolRole).
affordsTask(toilet_brush, cleaningTask).

% --- toilet paper ---
obj(toilet_paper).
hasPhysicalQuality(toilet_paper, soft_Deformable).
hasPhysicalQuality(toilet_paper, washable).
hasRole(toilet_paper, consumableRole).
affordsTask(toilet_paper, hygieneTask).

% --- toilet seat ---
obj(toilet_seat).
hasPhysicalQuality(toilet_seat, fragile).
hasRole(toilet_seat, utensilRole).
affordsTask(toilet_seat, eatingDrinkingTask).

% --- toilet tank ---
obj(toilet_tank).
hasPhysicalQuality(toilet_tank, heavy).
hasRole(toilet_tank, applianceRole).
affordsTask(toilet_tank, wasteDisposalTask).

% --- tomato ---
obj(tomato).
hasPhysicalQuality(tomato, fragile).
hasPhysicalQuality(tomato, perishable).
hasRole(tomato, consumableRole).
affordsTask(tomato, eatingDrinkingTask).

% --- tomato plants ---
obj(tomato_plants).
hasPhysicalQuality(tomato_plants, perishable).

% --- tomatoes ---
obj(tomatoes).
hasPhysicalQuality(tomatoes, perishable).
hasRole(tomatoes, consumableRole).
affordsTask(tomatoes, eatingDrinkingTask).

% --- toolbox ---
obj(toolbox).
hasPhysicalQuality(toolbox, heavy).
hasPhysicalQuality(toolbox, rigid).
hasRole(toolbox, toolRole).
affordsTask(toolbox, maintenanceTask).

% --- toothbrush ---
obj(toothbrush).
hasPhysicalQuality(toothbrush, fragile).
hasPhysicalQuality(toothbrush, lightweight).
affordsTask(toothbrush, hygieneTask).

% --- toothbrush bristle ---
obj(toothbrush_bristle).
hasPhysicalQuality(toothbrush_bristle, lightweight).
hasPhysicalQuality(toothbrush_bristle, soft_Deformable).
affordsTask(toothbrush_bristle, hygieneTask).

% --- toothbrush head ---
obj(toothbrush_head).
hasPhysicalQuality(toothbrush_head, fragile).
hasPhysicalQuality(toothbrush_head, lightweight).
affordsTask(toothbrush_head, eatingDrinkingTask).

% --- toothpaste ---
obj(toothpaste).
hasPhysicalQuality(toothpaste, liquid).
hasPhysicalQuality(toothpaste, toxic_Hazardous).
hasRole(toothpaste, cleaningToolRole).
affordsTask(toothpaste, hygieneTask).

% --- torch ---
obj(torch).
hasPhysicalQuality(torch, electronic).
hasPhysicalQuality(torch, heated).
hasRole(torch, lightingRole).
affordsTask(torch, leisureTask).

% --- tote bag ---
obj(tote_bag).
hasPhysicalQuality(tote_bag, lightweight).
hasPhysicalQuality(tote_bag, soft_Deformable).
hasRole(tote_bag, clothingRole).
affordsTask(tote_bag, storageTask).

% --- towel ---
obj(towel).
hasPhysicalQuality(towel, soft_Deformable).
hasPhysicalQuality(towel, washable).
hasRole(towel, cleaningToolRole).
affordsTask(towel, hygieneTask).

% --- towel bar ---
obj(towel_bar).
hasPhysicalQuality(towel_bar, electronic).
hasPhysicalQuality(towel_bar, rigid).
hasRole(towel_bar, storageContainerRole).
affordsTask(towel_bar, hygieneTask).

% --- towel rack ---
obj(towel_rack).
hasPhysicalQuality(towel_rack, heavy).
hasPhysicalQuality(towel_rack, rigid).
hasRole(towel_rack, storageContainerRole).
affordsTask(towel_rack, storageTask).

% --- toy ---
obj(toy).
hasRole(toy, entertainmentRole).
affordsTask(toy, leisureTask).

% --- toys ---
obj(toys).
hasPhysicalQuality(toys, lightweight).
hasRole(toys, entertainmentRole).
affordsTask(toys, leisureTask).

% --- trash ---
obj(trash).
hasRole(trash, storageContainerRole).
affordsTask(trash, wasteDisposalTask).

% --- trash can ---
obj(trash_can).
hasPhysicalQuality(trash_can, heavy).
hasRole(trash_can, storageContainerRole).
hasRole(trash_can, wasteRole).
affordsTask(trash_can, wasteDisposalTask).

% --- trash container ---
obj(trash_container).
hasPhysicalQuality(trash_container, hasContainer).
hasPhysicalQuality(trash_container, heavy).
hasRole(trash_container, storageContainerRole).
affordsTask(trash_container, wasteDisposalTask).

% --- tub ---
obj(tub).
hasPhysicalQuality(tub, hasContainer).
hasPhysicalQuality(tub, heavy).
hasRole(tub, storageContainerRole).
affordsTask(tub, eatingDrinkingTask).

% --- tuna ---
obj(tuna).
hasPhysicalQuality(tuna, perishable).
hasRole(tuna, consumableRole).
affordsTask(tuna, eatingDrinkingTask).

% --- tuning fork ---
obj(tuning_fork).
hasPhysicalQuality(tuning_fork, electronic).
hasPhysicalQuality(tuning_fork, rigid).
hasRole(tuning_fork, toolRole).
affordsTask(tuning_fork, maintenanceTask).

% --- turkey ---
obj(turkey).
hasPhysicalQuality(turkey, perishable).
hasRole(turkey, consumableRole).
affordsTask(turkey, eatingDrinkingTask).

% --- tv ---
obj(tv).
hasPhysicalQuality(tv, electronic).
hasPhysicalQuality(tv, heavy).
hasRole(tv, applianceRole).
affordsTask(tv, leisureTask).

% --- typewriter ---
obj(typewriter).
hasPhysicalQuality(typewriter, heavy).
hasPhysicalQuality(typewriter, rigid).
hasRole(typewriter, toolRole).
affordsTask(typewriter, workStudyTask).

% --- umbrella ---
obj(umbrella).
hasPhysicalQuality(umbrella, isFlexible).
hasPhysicalQuality(umbrella, lightweight).
hasRole(umbrella, toolRole).

% --- underwear ---
obj(underwear).
hasPhysicalQuality(underwear, lightweight).
hasPhysicalQuality(underwear, soft_Deformable).
hasRole(underwear, clothingRole).
affordsTask(underwear, dressingTask).

% --- upright piano ---
obj(upright_piano).
hasPhysicalQuality(upright_piano, heavy).
hasPhysicalQuality(upright_piano, rigid).
hasRole(upright_piano, entertainmentRole).
hasRole(upright_piano, musicalInstrumentRole).
affordsTask(upright_piano, leisureTask).
affordsTask(upright_piano, workStudyTask).

% --- utensils ---
obj(utensils).
hasRole(utensils, utensilRole).

% --- utility case ---
obj(utility_case).
hasPhysicalQuality(utility_case, hasContainer).
hasRole(utility_case, storageContainerRole).
affordsTask(utility_case, storageTask).

% --- vacuum ---
obj(vacuum).
hasPhysicalQuality(vacuum, electronic).
hasPhysicalQuality(vacuum, heavy).
hasRole(vacuum, cleaningToolRole).
affordsTask(vacuum, cleaningTask).

% --- vanity case ---
obj(vanity_case).
hasPhysicalQuality(vanity_case, hasContainer).
hasPhysicalQuality(vanity_case, lightweight).
hasRole(vanity_case, storageContainerRole).
affordsTask(vanity_case, leisureTask).

% --- varnish ---
obj(varnish).
hasPhysicalQuality(varnish, liquid).
hasPhysicalQuality(varnish, toxic_Hazardous).
hasRole(varnish, toolRole).
affordsTask(varnish, maintenanceTask).

% --- vase ---
obj(vase).
hasPhysicalQuality(vase, fragile).
hasPhysicalQuality(vase, rigid).
hasRole(vase, decorationRole).

% --- vcr ---
obj(vcr).
hasPhysicalQuality(vcr, electronic).
hasPhysicalQuality(vcr, heavy).
hasRole(vcr, applianceRole).
affordsTask(vcr, leisureTask).

% --- vegetables ---
obj(vegetables).
hasPhysicalQuality(vegetables, granular).
hasPhysicalQuality(vegetables, perishable).
hasRole(vegetables, consumableRole).
affordsTask(vegetables, eatingDrinkingTask).
affordsTask(vegetables, foodPreparationTask).

% --- velvet ---
obj(velvet).
hasPhysicalQuality(velvet, soft_Deformable).
hasPhysicalQuality(velvet, washable).
hasRole(velvet, clothingRole).
affordsTask(velvet, dressingTask).

% --- vent brush ---
obj(vent_brush).
hasPhysicalQuality(vent_brush, lightweight).
hasPhysicalQuality(vent_brush, soft_Deformable).
hasRole(vent_brush, cleaningToolRole).
affordsTask(vent_brush, cleaningTask).

% --- ventilation system ---
obj(ventilation_system).
hasPhysicalQuality(ventilation_system, electronic).
hasPhysicalQuality(ventilation_system, heavy).
hasRole(ventilation_system, applianceRole).
affordsTask(ventilation_system, maintenanceTask).

% --- vice ---
obj(vice).
hasPhysicalQuality(vice, heavy).
hasPhysicalQuality(vice, rigid).
hasRole(vice, toolRole).
affordsTask(vice, maintenanceTask).

% --- vinyl ---
obj(vinyl).
hasPhysicalQuality(vinyl, granular).
hasRole(vinyl, consumableRole).

% --- violin ---
obj(violin).
hasPhysicalQuality(violin, electronic).
hasPhysicalQuality(violin, rigid).
hasRole(violin, musicalInstrumentRole).
affordsTask(violin, leisureTask).

% --- waffles ---
obj(waffles).
hasPhysicalQuality(waffles, granular).
hasPhysicalQuality(waffles, perishable).
hasRole(waffles, consumableRole).
affordsTask(waffles, eatingDrinkingTask).

% --- wall ---
obj(wall).
hasPhysicalQuality(wall, rigid).
hasRole(wall, furnitureRole).

% --- wardrobe ---
obj(wardrobe).
hasPhysicalQuality(wardrobe, heavy).
hasPhysicalQuality(wardrobe, rigid).
hasRole(wardrobe, furnitureRole).
affordsTask(wardrobe, storageTask).

% --- wash cloth ---
obj(wash_cloth).
hasPhysicalQuality(wash_cloth, soft_Deformable).
hasPhysicalQuality(wash_cloth, washable).
hasRole(wash_cloth, cleaningToolRole).
affordsTask(wash_cloth, hygieneTask).

% --- washcloth ---
obj(washcloth).
hasPhysicalQuality(washcloth, soft_Deformable).
hasPhysicalQuality(washcloth, washable).
hasRole(washcloth, cleaningToolRole).
affordsTask(washcloth, hygieneTask).

% --- washing machine ---
obj(washing_machine).
hasPhysicalQuality(washing_machine, electronic).
hasPhysicalQuality(washing_machine, heavy).
hasRole(washing_machine, applianceRole).
affordsTask(washing_machine, cleaningTask).

% --- water ---
obj(water).
hasPhysicalQuality(water, liquid).
hasRole(water, cleaningToolRole).
hasRole(water, consumableRole).
affordsTask(water, eatingDrinkingTask).
affordsTask(water, hygieneTask).

% --- wax ---
obj(wax).
hasPhysicalQuality(wax, liquid).
hasPhysicalQuality(wax, perishable).
hasRole(wax, consumableRole).
affordsTask(wax, eatingDrinkingTask).

% --- weather vane ---
obj(weather_vane).
hasRole(weather_vane, toolRole).

% --- wheel ---
obj(wheel).
hasPhysicalQuality(wheel, lightweight).
hasPhysicalQuality(wheel, rigid).
hasRole(wheel, toolRole).
affordsTask(wheel, maintenanceTask).

% --- whisk ---
obj(whisk).
hasPhysicalQuality(whisk, hasBlade).
hasPhysicalQuality(whisk, lightweight).
hasPhysicalQuality(whisk, rigid).
hasPhysicalQuality(whisk, sharp).
hasRole(whisk, utensilRole).
affordsTask(whisk, foodPreparationTask).

% --- whisky ---
obj(whisky).
hasPhysicalQuality(whisky, liquid).
hasPhysicalQuality(whisky, perishable).
hasRole(whisky, consumableRole).
affordsTask(whisky, eatingDrinkingTask).

% --- window ---
obj(window).
hasPhysicalQuality(window, lightweight).
hasPhysicalQuality(window, rigid).
hasRole(window, furnitureRole).
affordsTask(window, leisureTask).

% --- window curtain ---
obj(window_curtain).
hasPhysicalQuality(window_curtain, lightweight).
hasPhysicalQuality(window_curtain, soft_Deformable).
hasRole(window_curtain, decorationRole).
affordsTask(window_curtain, leisureTask).

% --- wine ---
obj(wine).
hasPhysicalQuality(wine, liquid).
hasPhysicalQuality(wine, perishable).
hasRole(wine, consumableRole).
affordsTask(wine, eatingDrinkingTask).

% --- wine glass ---
obj(wine_glass).
hasPhysicalQuality(wine_glass, fragile).
hasPhysicalQuality(wine_glass, lightweight).
hasRole(wine_glass, utensilRole).
affordsTask(wine_glass, eatingDrinkingTask).

% --- wooden floor ---
obj(wooden_floor).
hasPhysicalQuality(wooden_floor, fragile).
hasPhysicalQuality(wooden_floor, rigid).

% --- wool ---
obj(wool).
hasPhysicalQuality(wool, soft_Deformable).
hasPhysicalQuality(wool, washable).
hasRole(wool, clothingRole).
affordsTask(wool, dressingTask).

% --- wrench ---
obj(wrench).
hasPhysicalQuality(wrench, heavy).
hasPhysicalQuality(wrench, rigid).
hasRole(wrench, toolRole).
affordsTask(wrench, maintenanceTask).

