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

% --- acorns ---
obj(acorns).
hasPhysicalQuality(acorns, granular).
hasRole(acorns, consumableRole).
affordsTask(acorns, eatingDrinkingTask).

% --- acoustic guitar ---
obj(acoustic_guitar).
hasPhysicalQuality(acoustic_guitar, electronic).
hasPhysicalQuality(acoustic_guitar, rigid).
hasRole(acoustic_guitar, musicalInstrumentRole).
affordsTask(acoustic_guitar, leisureTask).
affordsTask(acoustic_guitar, workStudyTask).

% --- acrylic ---
obj(acrylic).
hasPhysicalQuality(acrylic, lightweight).
hasPhysicalQuality(acrylic, rigid).
hasRole(acrylic, toolRole).
affordsTask(acrylic, maintenanceTask).

% --- air conditioner ---
obj(air_conditioner).
hasPhysicalQuality(air_conditioner, requiresCooling).
hasRole(air_conditioner, applianceRole).
affordsTask(air_conditioner, maintenanceTask).

% --- air conditioning ---
obj(air_conditioning).
hasPhysicalQuality(air_conditioning, electronic).
hasPhysicalQuality(air_conditioning, heavy).
hasRole(air_conditioning, applianceRole).
affordsTask(air_conditioning, storageTask).

% --- album ---
obj(album).
hasPhysicalQuality(album, lightweight).
hasRole(album, storageContainerRole).
affordsTask(album, leisureTask).

% --- alcohol ---
obj(alcohol).
hasPhysicalQuality(alcohol, flammable).
hasRole(alcohol, consumableRole).
affordsTask(alcohol, leisureTask).

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

% --- apples ---
obj(apples).
hasPhysicalQuality(apples, fragile).
hasPhysicalQuality(apples, perishable).
hasRole(apples, consumableRole).
affordsTask(apples, eatingDrinkingTask).

% --- appointment book ---
obj(appointment_book).
hasPhysicalQuality(appointment_book, lightweight).
hasRole(appointment_book, documentRole).
affordsTask(appointment_book, workStudyTask).

% --- arch ---
obj(arch).
hasPhysicalQuality(arch, heavy).
hasPhysicalQuality(arch, rigid).
hasRole(arch, furnitureRole).
affordsTask(arch, storageTask).

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
hasPhysicalQuality(aspirin, toxic_Hazardous).

% --- attache case ---
obj(attache_case).
hasPhysicalQuality(attache_case, lightweight).
hasPhysicalQuality(attache_case, soft_Deformable).
hasRole(attache_case, storageContainerRole).
affordsTask(attache_case, storageTask).

% --- baby ---
obj(baby).
hasPhysicalQuality(baby, lightweight).
hasRole(baby, entertainmentRole).
affordsTask(baby, leisureTask).

% --- back garden ---
obj(back_garden).
hasRole(back_garden, storageContainerRole).
affordsTask(back_garden, gardeningTask).

% --- backyard ---
obj(backyard).
hasRole(backyard, furnitureRole).
affordsTask(backyard, gardeningTask).
affordsTask(backyard, leisureTask).

% --- bag ---
obj(bag).
hasPhysicalQuality(bag, lightweight).
hasPhysicalQuality(bag, soft_Deformable).
hasPhysicalQuality(bag, washable).
hasRole(bag, storageContainerRole).
affordsTask(bag, storageTask).

% --- baggage trunk ---
obj(baggage_trunk).
hasPhysicalQuality(baggage_trunk, heavy).
hasPhysicalQuality(baggage_trunk, rigid).
hasRole(baggage_trunk, storageContainerRole).
affordsTask(baggage_trunk, storageTask).

% --- baking oven ---
obj(baking_oven).
hasPhysicalQuality(baking_oven, heated).
hasRole(baking_oven, cookwareRole).
affordsTask(baking_oven, foodPreparationTask).

% --- balcony ---
obj(balcony).
hasPhysicalQuality(balcony, rigid).
hasRole(balcony, furnitureRole).
affordsTask(balcony, leisureTask).

% --- balcony railing ---
obj(balcony_railing).
hasPhysicalQuality(balcony_railing, heavy).
hasPhysicalQuality(balcony_railing, rigid).
hasRole(balcony_railing, furnitureRole).
affordsTask(balcony_railing, leisureTask).

% --- balcony seat ---
obj(balcony_seat).
hasPhysicalQuality(balcony_seat, fragile).
hasPhysicalQuality(balcony_seat, lightweight).
hasRole(balcony_seat, furnitureRole).
affordsTask(balcony_seat, leisureTask).

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

% --- banana peels ---
obj(banana_peels).
hasPhysicalQuality(banana_peels, perishable).
hasRole(banana_peels, wasteRole).
affordsTask(banana_peels, wasteDisposalTask).

% --- bandages ---
obj(bandages).
hasPhysicalQuality(bandages, fragile).
hasPhysicalQuality(bandages, lightweight).
hasPhysicalQuality(bandages, washable).
hasRole(bandages, safetyEquipmentRole).
affordsTask(bandages, hygieneTask).

% --- bandaids ---
obj(bandaids).
hasPhysicalQuality(bandaids, fragile).
hasPhysicalQuality(bandaids, lightweight).
hasRole(bandaids, consumableRole).
hasRole(bandaids, safetyEquipmentRole).
affordsTask(bandaids, hygieneTask).
affordsTask(bandaids, wasteDisposalTask).

% --- bar stool ---
obj(bar_stool).
hasPhysicalQuality(bar_stool, fragile).
hasPhysicalQuality(bar_stool, rigid).
hasRole(bar_stool, furnitureRole).
affordsTask(bar_stool, leisureTask).

% --- barbecue ---
obj(barbecue).
hasPhysicalQuality(barbecue, heated).
hasRole(barbecue, cookwareRole).
affordsTask(barbecue, foodPreparationTask).

% --- basement ---
obj(basement).
hasPhysicalQuality(basement, heavy).
hasRole(basement, furnitureRole).
affordsTask(basement, storageTask).

% --- basket ---
obj(basket).
hasPhysicalQuality(basket, lightweight).
hasPhysicalQuality(basket, rigid).
hasRole(basket, storageContainerRole).
affordsTask(basket, storageTask).

% --- basket with handle ---
obj(basket_with_handle).
hasPhysicalQuality(basket_with_handle, lightweight).
hasPhysicalQuality(basket_with_handle, rigid).
hasRole(basket_with_handle, storageContainerRole).
affordsTask(basket_with_handle, storageTask).

% --- bass ---
obj(bass).
hasPhysicalQuality(bass, fragile).
hasRole(bass, consumableRole).
affordsTask(bass, eatingDrinkingTask).

% --- bat ---
obj(bat).
hasPhysicalQuality(bat, fragile).
hasPhysicalQuality(bat, lightweight).
hasRole(bat, toolRole).
affordsTask(bat, leisureTask).

% --- bath ---
obj(bath).
hasPhysicalQuality(bath, liquid).
hasPhysicalQuality(bath, washable).
hasRole(bath, cleaningToolRole).
affordsTask(bath, hygieneTask).
affordsTask(bath, leisureTask).

% --- bath shower ---
obj(bath_shower).
hasPhysicalQuality(bath_shower, electronic).
hasPhysicalQuality(bath_shower, liquid).
hasRole(bath_shower, cleaningToolRole).
affordsTask(bath_shower, hygieneTask).

% --- bathroom ---
obj(bathroom).
hasPhysicalQuality(bathroom, electronic).
hasPhysicalQuality(bathroom, fragile).
hasRole(bathroom, furnitureRole).
affordsTask(bathroom, hygieneTask).
affordsTask(bathroom, leisureTask).

% --- batten ---
obj(batten).
hasPhysicalQuality(batten, rigid).
hasRole(batten, toolRole).
affordsTask(batten, maintenanceTask).

% --- batter ---
obj(batter).
hasPhysicalQuality(batter, liquid).
hasRole(batter, consumableRole).
affordsTask(batter, foodPreparationTask).

% --- battery charger ---
obj(battery_charger).
hasPhysicalQuality(battery_charger, electronic).
hasPhysicalQuality(battery_charger, heavy).
hasRole(battery_charger, toolRole).
affordsTask(battery_charger, maintenanceTask).

% --- bay ---
obj(bay).
hasPhysicalQuality(bay, heavy).
hasRole(bay, storageContainerRole).
affordsTask(bay, storageTask).

% --- bay window ---
obj(bay_window).
hasPhysicalQuality(bay_window, fragile).
hasRole(bay_window, furnitureRole).
affordsTask(bay_window, leisureTask).

% --- beach towel ---
obj(beach_towel).
hasPhysicalQuality(beach_towel, heavy).
hasPhysicalQuality(beach_towel, soft_Deformable).
hasPhysicalQuality(beach_towel, washable).
hasRole(beach_towel, beddingRole).
affordsTask(beach_towel, leisureTask).

% --- beam ---
obj(beam).
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
hasPhysicalQuality(beanbag, soft_Deformable).
hasRole(beanbag, furnitureRole).
affordsTask(beanbag, leisureTask).

% --- beanbag chair ---
obj(beanbag_chair).
hasPhysicalQuality(beanbag_chair, lightweight).
hasPhysicalQuality(beanbag_chair, soft_Deformable).
hasRole(beanbag_chair, furnitureRole).
affordsTask(beanbag_chair, leisureTask).
affordsTask(beanbag_chair, sleepingTask).

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

% --- beds ---
obj(beds).
hasPhysicalQuality(beds, heavy).
hasPhysicalQuality(beds, soft_Deformable).
hasRole(beds, furnitureRole).
affordsTask(beds, sleepingTask).

% --- beer ---
obj(beer).
hasPhysicalQuality(beer, liquid).
hasPhysicalQuality(beer, perishable).
hasRole(beer, consumableRole).
affordsTask(beer, eatingDrinkingTask).

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
affordsTask(bench, leisureTask).
affordsTask(bench, storageTask).

% --- beverage ---
obj(beverage).
hasPhysicalQuality(beverage, liquid).
hasRole(beverage, consumableRole).
affordsTask(beverage, eatingDrinkingTask).

% --- bicycle ---
obj(bicycle).
hasPhysicalQuality(bicycle, heavy).
hasPhysicalQuality(bicycle, rigid).
hasRole(bicycle, furnitureRole).
affordsTask(bicycle, leisureTask).
affordsTask(bicycle, workStudyTask).

% --- bicycle storage area ---
obj(bicycle_storage_area).
hasRole(bicycle_storage_area, storageContainerRole).
affordsTask(bicycle_storage_area, storageTask).

% --- bicycles ---
obj(bicycles).
hasPhysicalQuality(bicycles, lightweight).
hasPhysicalQuality(bicycles, rigid).

% --- bike ---
obj(bike).
hasPhysicalQuality(bike, heavy).
hasPhysicalQuality(bike, rigid).
hasRole(bike, furnitureRole).
affordsTask(bike, leisureTask).
affordsTask(bike, workStudyTask).

% --- bill ---
obj(bill).
hasPhysicalQuality(bill, lightweight).
hasRole(bill, documentRole).
affordsTask(bill, leisureTask).

% --- bill file ---
obj(bill_file).
hasPhysicalQuality(bill_file, lightweight).
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
affordsTask(bird, gardeningTask).
affordsTask(bird, leisureTask).

% --- birds ---
obj(birds).
hasPhysicalQuality(birds, lightweight).
hasPhysicalQuality(birds, rigid).
hasRole(birds, consumableRole).
affordsTask(birds, eatingDrinkingTask).

% --- birth control pill ---
obj(birth_control_pill).
hasPhysicalQuality(birth_control_pill, perishable).
hasRole(birth_control_pill, consumableRole).
affordsTask(birth_control_pill, eatingDrinkingTask).

% --- blanket ---
obj(blanket).
hasPhysicalQuality(blanket, soft_Deformable).
hasPhysicalQuality(blanket, washable).
hasRole(blanket, beddingRole).
affordsTask(blanket, sleepingTask).

% --- blanketing ---
obj(blanketing).
hasPhysicalQuality(blanketing, soft_Deformable).
hasPhysicalQuality(blanketing, washable).
hasRole(blanketing, beddingRole).
affordsTask(blanketing, sleepingTask).

% --- blankets ---
obj(blankets).
hasPhysicalQuality(blankets, soft_Deformable).
hasPhysicalQuality(blankets, washable).
hasRole(blankets, beddingRole).
affordsTask(blankets, sleepingTask).

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

% --- book ---
obj(book).
hasPhysicalQuality(book, lightweight).
hasPhysicalQuality(book, washable).
hasRole(book, documentRole).
affordsTask(book, leisureTask).
affordsTask(book, workStudyTask).

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
affordsTask(books, leisureTask).
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
hasPhysicalQuality(boots, washable).
hasRole(boots, clothingRole).
affordsTask(boots, dressingTask).

% --- bottle ---
obj(bottle).
hasPhysicalQuality(bottle, lightweight).
hasRole(bottle, storageContainerRole).
affordsTask(bottle, eatingDrinkingTask).

% --- bottle of vodka ---
obj(bottle_of_vodka).
hasPhysicalQuality(bottle_of_vodka, liquid).
hasRole(bottle_of_vodka, consumableRole).
affordsTask(bottle_of_vodka, eatingDrinkingTask).

% --- bottled water ---
obj(bottled_water).
hasPhysicalQuality(bottled_water, liquid).
hasRole(bottled_water, consumableRole).
affordsTask(bottled_water, eatingDrinkingTask).

% --- bowl ---
obj(bowl).
hasPhysicalQuality(bowl, lightweight).
hasPhysicalQuality(bowl, rigid).
hasRole(bowl, utensilRole).
affordsTask(bowl, eatingDrinkingTask).

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

% --- brass ---
obj(brass).
hasPhysicalQuality(brass, heavy).
hasPhysicalQuality(brass, rigid).
hasRole(brass, decorationRole).

% --- bread ---
obj(bread).
hasPhysicalQuality(bread, granular).
hasPhysicalQuality(bread, perishable).
hasRole(bread, consumableRole).
affordsTask(bread, eatingDrinkingTask).
affordsTask(bread, foodPreparationTask).

% --- breakfast ---
obj(breakfast).
hasRole(breakfast, consumableRole).
affordsTask(breakfast, eatingDrinkingTask).

% --- bricks ---
obj(bricks).
hasPhysicalQuality(bricks, heavy).
hasPhysicalQuality(bricks, rigid).
hasRole(bricks, toolRole).
affordsTask(bricks, maintenanceTask).

% --- briefcase ---
obj(briefcase).
hasPhysicalQuality(briefcase, heavy).
hasPhysicalQuality(briefcase, rigid).
hasRole(briefcase, storageContainerRole).
affordsTask(briefcase, storageTask).

% --- broccoli ---
obj(broccoli).
hasPhysicalQuality(broccoli, perishable).
hasRole(broccoli, consumableRole).
affordsTask(broccoli, eatingDrinkingTask).

% --- broom ---
obj(broom).
hasPhysicalQuality(broom, fragile).
hasPhysicalQuality(broom, lightweight).
hasPhysicalQuality(broom, rigid).
hasRole(broom, cleaningToolRole).
affordsTask(broom, cleaningTask).

% --- brush ---
obj(brush).
hasPhysicalQuality(brush, fragile).
hasPhysicalQuality(brush, lightweight).
hasRole(brush, toolRole).
affordsTask(brush, cleaningTask).

% --- bucket ---
obj(bucket).
hasPhysicalQuality(bucket, lightweight).
hasPhysicalQuality(bucket, rigid).
hasRole(bucket, storageContainerRole).
affordsTask(bucket, storageTask).

% --- bulb ---
obj(bulb).
hasPhysicalQuality(bulb, lightweight).
hasPhysicalQuality(bulb, rigid).
hasRole(bulb, lightingRole).
affordsTask(bulb, leisureTask).

% --- bullet ---
obj(bullet).
hasPhysicalQuality(bullet, sharp).
hasRole(bullet, toolRole).
affordsTask(bullet, maintenanceTask).

% --- bungalow ---
obj(bungalow).
hasRole(bungalow, furnitureRole).
affordsTask(bungalow, leisureTask).

% --- bureau ---
obj(bureau).
hasPhysicalQuality(bureau, heavy).
hasPhysicalQuality(bureau, rigid).
hasRole(bureau, furnitureRole).
affordsTask(bureau, storageTask).

% --- butter ---
obj(butter).
hasPhysicalQuality(butter, lightweight).
hasPhysicalQuality(butter, perishable).
hasPhysicalQuality(butter, soft_Deformable).
hasRole(butter, consumableRole).
affordsTask(butter, eatingDrinkingTask).

% --- buttons ---
obj(buttons).
hasPhysicalQuality(buttons, lightweight).
hasPhysicalQuality(buttons, rigid).
hasRole(buttons, toolRole).
affordsTask(buttons, maintenanceTask).

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
hasPhysicalQuality(cable, heavy).
hasPhysicalQuality(cable, rigid).
hasRole(cable, toolRole).
affordsTask(cable, maintenanceTask).

% --- cafe ---
obj(cafe).
hasPhysicalQuality(cafe, liquid).
hasRole(cafe, consumableRole).
affordsTask(cafe, eatingDrinkingTask).

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
hasRole(calendar_pad, storageContainerRole).
affordsTask(calendar_pad, leisureTask).

% --- camera ---
obj(camera).
hasPhysicalQuality(camera, electronic).
hasPhysicalQuality(camera, lightweight).
hasRole(camera, toolRole).
affordsTask(camera, leisureTask).
affordsTask(camera, workStudyTask).

% --- can ---
obj(can).
hasPhysicalQuality(can, lightweight).
hasPhysicalQuality(can, rigid).
hasRole(can, storageContainerRole).
affordsTask(can, storageTask).

% --- can opener ---
obj(can_opener).
hasPhysicalQuality(can_opener, electronic).
hasPhysicalQuality(can_opener, heavy).
hasRole(can_opener, toolRole).
affordsTask(can_opener, foodPreparationTask).

% --- candle ---
obj(candle).
hasPhysicalQuality(candle, fragile).
hasPhysicalQuality(candle, heated).
hasRole(candle, lightingRole).
affordsTask(candle, leisureTask).

% --- candlestick ---
obj(candlestick).
hasPhysicalQuality(candlestick, heavy).
hasPhysicalQuality(candlestick, rigid).
hasRole(candlestick, utensilRole).
affordsTask(candlestick, leisureTask).

% --- candy ---
obj(candy).
hasPhysicalQuality(candy, perishable).
hasRole(candy, consumableRole).
affordsTask(candy, eatingDrinkingTask).

% --- cannabis ---
obj(cannabis).
hasPhysicalQuality(cannabis, perishable).
hasPhysicalQuality(cannabis, toxic_Hazardous).
hasRole(cannabis, consumableRole).
affordsTask(cannabis, leisureTask).

% --- cans ---
obj(cans).
hasPhysicalQuality(cans, heavy).
hasRole(cans, storageContainerRole).
affordsTask(cans, storageTask).

% --- cans of paint ---
obj(cans_of_paint).
hasPhysicalQuality(cans_of_paint, fragile).
hasPhysicalQuality(cans_of_paint, heavy).
hasRole(cans_of_paint, storageContainerRole).
affordsTask(cans_of_paint, maintenanceTask).

% --- card ---
obj(card).
hasPhysicalQuality(card, lightweight).
hasRole(card, consumableRole).
affordsTask(card, eatingDrinkingTask).

% --- card case ---
obj(card_case).
hasPhysicalQuality(card_case, lightweight).
hasPhysicalQuality(card_case, rigid).
hasRole(card_case, storageContainerRole).
affordsTask(card_case, storageTask).

% --- card catalog ---
obj(card_catalog).
hasPhysicalQuality(card_catalog, lightweight).
hasRole(card_catalog, storageContainerRole).
affordsTask(card_catalog, storageTask).

% --- cardboard ---
obj(cardboard).
hasPhysicalQuality(cardboard, granular).
hasRole(cardboard, storageContainerRole).
affordsTask(cardboard, storageTask).

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
hasPhysicalQuality(carrots, granular).
hasPhysicalQuality(carrots, perishable).
hasRole(carrots, consumableRole).
affordsTask(carrots, eatingDrinkingTask).
affordsTask(carrots, foodPreparationTask).

% --- cash register ---
obj(cash_register).
hasPhysicalQuality(cash_register, electronic).
hasPhysicalQuality(cash_register, heavy).
hasRole(cash_register, applianceRole).
affordsTask(cash_register, workStudyTask).

% --- cat ---
obj(cat).
hasPhysicalQuality(cat, fragile).
hasPhysicalQuality(cat, lightweight).
hasPhysicalQuality(cat, soft_Deformable).
hasRole(cat, consumableRole).
affordsTask(cat, leisureTask).

% --- cats ---
obj(cats).
hasPhysicalQuality(cats, fragile).
hasPhysicalQuality(cats, lightweight).
hasPhysicalQuality(cats, soft_Deformable).
hasRole(cats, consumableRole).
affordsTask(cats, eatingDrinkingTask).

% --- cd rom ---
obj(cd_rom).
hasPhysicalQuality(cd_rom, electronic).
hasPhysicalQuality(cd_rom, lightweight).
hasRole(cd_rom, storageContainerRole).
affordsTask(cd_rom, storageTask).

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
affordsTask(ceiling, storageTask).

% --- celery ---
obj(celery).
hasPhysicalQuality(celery, fragile).
hasPhysicalQuality(celery, perishable).
hasRole(celery, consumableRole).
affordsTask(celery, eatingDrinkingTask).

% --- cellar ---
obj(cellar).
hasPhysicalQuality(cellar, heavy).
hasRole(cellar, storageContainerRole).
affordsTask(cellar, storageTask).

% --- cereal ---
obj(cereal).
hasPhysicalQuality(cereal, granular).
hasRole(cereal, consumableRole).
affordsTask(cereal, eatingDrinkingTask).

% --- cereal bowl ---
obj(cereal_bowl).
hasPhysicalQuality(cereal_bowl, lightweight).
hasPhysicalQuality(cereal_bowl, rigid).
hasRole(cereal_bowl, utensilRole).
affordsTask(cereal_bowl, eatingDrinkingTask).

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
affordsTask(chair, leisureTask).
affordsTask(chair, storageTask).

% --- chairs ---
obj(chairs).
hasPhysicalQuality(chairs, heavy).
hasRole(chairs, furnitureRole).
affordsTask(chairs, leisureTask).

% --- change ---
obj(change).
hasPhysicalQuality(change, fragile).
hasRole(change, entertainmentRole).
affordsTask(change, leisureTask).

% --- channel ---
obj(channel).
hasRole(channel, storageContainerRole).
affordsTask(channel, leisureTask).

% --- checkbook ---
obj(checkbook).
hasPhysicalQuality(checkbook, lightweight).
hasRole(checkbook, documentRole).
affordsTask(checkbook, workStudyTask).

% --- checkbook holder ---
obj(checkbook_holder).
hasPhysicalQuality(checkbook_holder, lightweight).
hasPhysicalQuality(checkbook_holder, rigid).
hasRole(checkbook_holder, storageContainerRole).
affordsTask(checkbook_holder, storageTask).

% --- cheese ---
obj(cheese).
hasPhysicalQuality(cheese, perishable).
hasRole(cheese, consumableRole).
affordsTask(cheese, eatingDrinkingTask).

% --- cheque book ---
obj(cheque_book).
hasPhysicalQuality(cheque_book, lightweight).
hasRole(cheque_book, documentRole).
affordsTask(cheque_book, eatingDrinkingTask).

% --- cheque book holder ---
obj(cheque_book_holder).
hasPhysicalQuality(cheque_book_holder, lightweight).
hasPhysicalQuality(cheque_book_holder, rigid).
hasRole(cheque_book_holder, storageContainerRole).
affordsTask(cheque_book_holder, storageTask).

% --- chess bishop ---
obj(chess_bishop).
hasPhysicalQuality(chess_bishop, rigid).
hasRole(chess_bishop, toolRole).
affordsTask(chess_bishop, leisureTask).

% --- chess board ---
obj(chess_board).
hasPhysicalQuality(chess_board, rigid).
hasRole(chess_board, furnitureRole).
affordsTask(chess_board, leisureTask).

% --- chess king ---
obj(chess_king).
hasPhysicalQuality(chess_king, rigid).
hasRole(chess_king, entertainmentRole).
affordsTask(chess_king, leisureTask).

% --- chess knight ---
obj(chess_knight).
hasPhysicalQuality(chess_knight, rigid).
hasRole(chess_knight, toolRole).
affordsTask(chess_knight, leisureTask).

% --- chess pawn ---
obj(chess_pawn).
hasPhysicalQuality(chess_pawn, lightweight).
hasRole(chess_pawn, entertainmentRole).
affordsTask(chess_pawn, leisureTask).

% --- chess piece ---
obj(chess_piece).
hasPhysicalQuality(chess_piece, rigid).
hasRole(chess_piece, entertainmentRole).
affordsTask(chess_piece, leisureTask).

% --- chess queen ---
obj(chess_queen).
hasPhysicalQuality(chess_queen, rigid).
hasRole(chess_queen, entertainmentRole).
affordsTask(chess_queen, leisureTask).

% --- chess rook ---
obj(chess_rook).
hasPhysicalQuality(chess_rook, rigid).
hasRole(chess_rook, toolRole).
affordsTask(chess_rook, leisureTask).

% --- chess set ---
obj(chess_set).
hasPhysicalQuality(chess_set, rigid).
hasRole(chess_set, entertainmentRole).
affordsTask(chess_set, leisureTask).

% --- chesspiece ---
obj(chesspiece).
hasPhysicalQuality(chesspiece, rigid).
hasRole(chesspiece, entertainmentRole).
affordsTask(chesspiece, leisureTask).

% --- chest ---
obj(chest).
hasPhysicalQuality(chest, heavy).
hasRole(chest, storageContainerRole).
affordsTask(chest, storageTask).

% --- chicken ---
obj(chicken).
hasPhysicalQuality(chicken, perishable).
hasRole(chicken, consumableRole).
affordsTask(chicken, eatingDrinkingTask).

% --- chimney ---
obj(chimney).
hasPhysicalQuality(chimney, rigid).
hasRole(chimney, furnitureRole).
affordsTask(chimney, maintenanceTask).

% --- chine cotton ---
obj(chine_cotton).
hasPhysicalQuality(chine_cotton, lightweight).
hasPhysicalQuality(chine_cotton, soft_Deformable).
hasRole(chine_cotton, clothingRole).
affordsTask(chine_cotton, dressingTask).

% --- chinese food ---
obj(chinese_food).
hasPhysicalQuality(chinese_food, perishable).
hasRole(chinese_food, consumableRole).
affordsTask(chinese_food, eatingDrinkingTask).

% --- chips ---
obj(chips).
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
hasPhysicalQuality(cinnamon, granular).
hasRole(cinnamon, consumableRole).
affordsTask(cinnamon, foodPreparationTask).

% --- clam ---
obj(clam).
hasPhysicalQuality(clam, fragile).
hasPhysicalQuality(clam, rigid).
hasRole(clam, consumableRole).
affordsTask(clam, eatingDrinkingTask).

% --- clavichord ---
obj(clavichord).
hasPhysicalQuality(clavichord, rigid).
hasRole(clavichord, musicalInstrumentRole).
affordsTask(clavichord, leisureTask).

% --- clip ---
obj(clip).
hasPhysicalQuality(clip, lightweight).
hasRole(clip, toolRole).
affordsTask(clip, maintenanceTask).

% --- clipboard ---
obj(clipboard).
hasPhysicalQuality(clipboard, lightweight).
hasPhysicalQuality(clipboard, rigid).
hasRole(clipboard, toolRole).
affordsTask(clipboard, workStudyTask).

% --- clippers ---
obj(clippers).
hasPhysicalQuality(clippers, rigid).
hasPhysicalQuality(clippers, sharp).
hasRole(clippers, toolRole).
affordsTask(clippers, maintenanceTask).

% --- clock ---
obj(clock).
hasPhysicalQuality(clock, rigid).
hasRole(clock, decorationRole).
affordsTask(clock, leisureTask).

% --- closet ---
obj(closet).
hasPhysicalQuality(closet, heavy).
hasRole(closet, storageContainerRole).
affordsTask(closet, storageTask).

% --- cloth ---
obj(cloth).
hasPhysicalQuality(cloth, soft_Deformable).
hasPhysicalQuality(cloth, washable).
hasRole(cloth, clothingRole).
affordsTask(cloth, dressingTask).
affordsTask(cloth, storageTask).

% --- cloth linen ---
obj(cloth_linen).
hasPhysicalQuality(cloth_linen, soft_Deformable).
hasPhysicalQuality(cloth_linen, washable).
hasRole(cloth_linen, clothingRole).
affordsTask(cloth_linen, dressingTask).

% --- clothes ---
obj(clothes).
hasPhysicalQuality(clothes, soft_Deformable).
hasPhysicalQuality(clothes, washable).
hasRole(clothes, clothingRole).
affordsTask(clothes, dressingTask).

% --- clothes closet ---
obj(clothes_closet).
hasPhysicalQuality(clothes_closet, heavy).
hasRole(clothes_closet, storageContainerRole).
affordsTask(clothes_closet, storageTask).

% --- clothes dryer ---
obj(clothes_dryer).
hasPhysicalQuality(clothes_dryer, electronic).
hasPhysicalQuality(clothes_dryer, heavy).
hasRole(clothes_dryer, applianceRole).
affordsTask(clothes_dryer, maintenanceTask).

% --- clothing ---
obj(clothing).
hasPhysicalQuality(clothing, lightweight).
hasPhysicalQuality(clothing, soft_Deformable).
hasRole(clothing, clothingRole).
affordsTask(clothing, dressingTask).

% --- clothing closet ---
obj(clothing_closet).
hasPhysicalQuality(clothing_closet, heavy).
hasRole(clothing_closet, storageContainerRole).
affordsTask(clothing_closet, storageTask).

% --- clothing shelf ---
obj(clothing_shelf).
hasPhysicalQuality(clothing_shelf, heavy).
hasPhysicalQuality(clothing_shelf, rigid).
hasRole(clothing_shelf, storageContainerRole).
affordsTask(clothing_shelf, storageTask).

% --- coal ---
obj(coal).
hasPhysicalQuality(coal, fragile).
hasPhysicalQuality(coal, granular).
hasRole(coal, consumableRole).
affordsTask(coal, leisureTask).

% --- coast ---
obj(coast).
hasPhysicalQuality(coast, lightweight).
hasRole(coast, toolRole).
affordsTask(coast, maintenanceTask).

% --- coat ---
obj(coat).
hasPhysicalQuality(coat, soft_Deformable).
hasPhysicalQuality(coat, washable).
hasRole(coat, clothingRole).
affordsTask(coat, dressingTask).

% --- coat hangers ---
obj(coat_hangers).
hasPhysicalQuality(coat_hangers, lightweight).
hasPhysicalQuality(coat_hangers, rigid).
hasRole(coat_hangers, storageContainerRole).
affordsTask(coat_hangers, storageTask).

% --- coats ---
obj(coats).
hasPhysicalQuality(coats, soft_Deformable).
hasPhysicalQuality(coats, washable).
hasRole(coats, clothingRole).
affordsTask(coats, dressingTask).

% --- cocktail cabinet ---
obj(cocktail_cabinet).
hasRole(cocktail_cabinet, storageContainerRole).
affordsTask(cocktail_cabinet, storageTask).

% --- coffe table ---
obj(coffe_table).
hasPhysicalQuality(coffe_table, heavy).
hasPhysicalQuality(coffe_table, rigid).
hasRole(coffe_table, furnitureRole).
affordsTask(coffe_table, leisureTask).

% --- coffee ---
obj(coffee).
hasPhysicalQuality(coffee, heated).
hasPhysicalQuality(coffee, liquid).
hasPhysicalQuality(coffee, perishable).
hasRole(coffee, consumableRole).
affordsTask(coffee, eatingDrinkingTask).

% --- coffee cups ---
obj(coffee_cups).
hasPhysicalQuality(coffee_cups, fragile).
hasPhysicalQuality(coffee_cups, lightweight).
hasRole(coffee_cups, utensilRole).
affordsTask(coffee_cups, eatingDrinkingTask).

% --- coffee mug ---
obj(coffee_mug).
hasPhysicalQuality(coffee_mug, lightweight).
hasPhysicalQuality(coffee_mug, rigid).
hasPhysicalQuality(coffee_mug, washable).
hasRole(coffee_mug, utensilRole).
affordsTask(coffee_mug, eatingDrinkingTask).

% --- coffee table ---
obj(coffee_table).
hasPhysicalQuality(coffee_table, heavy).
hasPhysicalQuality(coffee_table, rigid).
hasRole(coffee_table, furnitureRole).
affordsTask(coffee_table, leisureTask).
affordsTask(coffee_table, storageTask).

% --- coil ---
obj(coil).
hasPhysicalQuality(coil, rigid).
hasRole(coil, toolRole).
affordsTask(coil, maintenanceTask).

% --- coin ---
obj(coin).
hasPhysicalQuality(coin, fragile).
hasPhysicalQuality(coin, lightweight).
hasRole(coin, consumableRole).
affordsTask(coin, eatingDrinkingTask).
affordsTask(coin, leisureTask).

% --- coins ---
obj(coins).
hasPhysicalQuality(coins, fragile).
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
hasRole(cold_faucet, toolRole).
affordsTask(cold_faucet, eatingDrinkingTask).

% --- cold storage ---
obj(cold_storage).
hasPhysicalQuality(cold_storage, requiresCooling).
hasRole(cold_storage, applianceRole).
affordsTask(cold_storage, storageTask).

% --- cold tap ---
obj(cold_tap).
hasPhysicalQuality(cold_tap, heavy).
hasPhysicalQuality(cold_tap, liquid).
hasRole(cold_tap, toolRole).
affordsTask(cold_tap, eatingDrinkingTask).
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
hasRole(column, storageContainerRole).
affordsTask(column, storageTask).

% --- comforter ---
obj(comforter).
hasPhysicalQuality(comforter, soft_Deformable).
hasPhysicalQuality(comforter, washable).
hasRole(comforter, beddingRole).
affordsTask(comforter, sleepingTask).

% --- compost ---
obj(compost).
hasPhysicalQuality(compost, perishable).
hasRole(compost, wasteRole).
affordsTask(compost, wasteDisposalTask).

% --- computer ---
obj(computer).
hasPhysicalQuality(computer, electronic).
hasPhysicalQuality(computer, heavy).
hasRole(computer, applianceRole).
affordsTask(computer, leisureTask).
affordsTask(computer, workStudyTask).

% --- concrete ---
obj(concrete).
hasPhysicalQuality(concrete, heavy).
hasPhysicalQuality(concrete, rigid).
hasRole(concrete, toolRole).
affordsTask(concrete, maintenanceTask).

% --- container ---
obj(container).
hasRole(container, storageContainerRole).
affordsTask(container, storageTask).

% --- container can ---
obj(container_can).
hasRole(container_can, storageContainerRole).
affordsTask(container_can, storageTask).

% --- container cup ---
obj(container_cup).
hasPhysicalQuality(container_cup, lightweight).
hasPhysicalQuality(container_cup, rigid).
hasRole(container_cup, utensilRole).
affordsTask(container_cup, eatingDrinkingTask).

% --- continental quilt ---
obj(continental_quilt).
hasPhysicalQuality(continental_quilt, soft_Deformable).
hasPhysicalQuality(continental_quilt, washable).
hasRole(continental_quilt, beddingRole).
affordsTask(continental_quilt, sleepingTask).

% --- cook ---
obj(cook).
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
hasPhysicalQuality(cookie_jar, heavy).
hasPhysicalQuality(cookie_jar, rigid).
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

% --- corn ---
obj(corn).
hasPhysicalQuality(corn, perishable).
hasRole(corn, consumableRole).
affordsTask(corn, eatingDrinkingTask).

% --- corner cupboard ---
obj(corner_cupboard).
hasPhysicalQuality(corner_cupboard, heavy).
hasPhysicalQuality(corner_cupboard, rigid).
hasRole(corner_cupboard, storageContainerRole).
affordsTask(corner_cupboard, storageTask).

% --- correction fluid ---
obj(correction_fluid).
hasPhysicalQuality(correction_fluid, liquid).
hasRole(correction_fluid, cleaningToolRole).
affordsTask(correction_fluid, maintenanceTask).

% --- cottage cheese ---
obj(cottage_cheese).
hasPhysicalQuality(cottage_cheese, perishable).
hasRole(cottage_cheese, consumableRole).
affordsTask(cottage_cheese, eatingDrinkingTask).

% --- cotton ---
obj(cotton).
hasPhysicalQuality(cotton, soft_Deformable).
hasPhysicalQuality(cotton, washable).
hasRole(cotton, consumableRole).
affordsTask(cotton, dressingTask).
affordsTask(cotton, storageTask).

% --- couch ---
obj(couch).
hasPhysicalQuality(couch, heavy).
hasPhysicalQuality(couch, rigid).
hasRole(couch, furnitureRole).
affordsTask(couch, leisureTask).
affordsTask(couch, sleepingTask).

% --- counter ---
obj(counter).
hasPhysicalQuality(counter, heavy).
hasPhysicalQuality(counter, rigid).
hasRole(counter, furnitureRole).
affordsTask(counter, workStudyTask).

% --- coupon ---
obj(coupon).
hasRole(coupon, consumableRole).
affordsTask(coupon, leisureTask).

% --- crab ---
obj(crab).
hasPhysicalQuality(crab, fragile).
hasPhysicalQuality(crab, rigid).
hasRole(crab, consumableRole).
affordsTask(crab, eatingDrinkingTask).

% --- crackers ---
obj(crackers).
hasPhysicalQuality(crackers, granular).
hasPhysicalQuality(crackers, rigid).
hasRole(crackers, consumableRole).
affordsTask(crackers, eatingDrinkingTask).

% --- crash cymbal ---
obj(crash_cymbal).
hasPhysicalQuality(crash_cymbal, heavy).
hasPhysicalQuality(crash_cymbal, rigid).
hasRole(crash_cymbal, musicalInstrumentRole).
affordsTask(crash_cymbal, leisureTask).

% --- cup ---
obj(cup).
hasPhysicalQuality(cup, lightweight).
hasPhysicalQuality(cup, liquid).
hasRole(cup, utensilRole).
affordsTask(cup, eatingDrinkingTask).

% --- cup of coffee ---
obj(cup_of_coffee).
hasPhysicalQuality(cup_of_coffee, liquid).
hasRole(cup_of_coffee, consumableRole).
affordsTask(cup_of_coffee, eatingDrinkingTask).

% --- cupboard ---
obj(cupboard).
hasPhysicalQuality(cupboard, heavy).
hasRole(cupboard, storageContainerRole).
affordsTask(cupboard, storageTask).

% --- cups ---
obj(cups).
hasPhysicalQuality(cups, lightweight).
hasPhysicalQuality(cups, liquid).
hasRole(cups, utensilRole).
affordsTask(cups, eatingDrinkingTask).

% --- curling iron ---
obj(curling_iron).
hasPhysicalQuality(curling_iron, heated).
hasPhysicalQuality(curling_iron, heavy).
hasRole(curling_iron, toolRole).
affordsTask(curling_iron, hygieneTask).

% --- curtain ---
obj(curtain).
hasPhysicalQuality(curtain, lightweight).
hasPhysicalQuality(curtain, soft_Deformable).
hasRole(curtain, furnitureRole).
affordsTask(curtain, leisureTask).

% --- dandruff shampoo ---
obj(dandruff_shampoo).
hasPhysicalQuality(dandruff_shampoo, liquid).
hasPhysicalQuality(dandruff_shampoo, washable).
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
affordsTask(desk_drawer, storageTask).

% --- desk tray ---
obj(desk_tray).
hasPhysicalQuality(desk_tray, lightweight).
hasPhysicalQuality(desk_tray, rigid).
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
hasPhysicalQuality(dice, granular).
hasRole(dice, toolRole).
affordsTask(dice, leisureTask).

% --- dictionaries ---
obj(dictionaries).
hasPhysicalQuality(dictionaries, lightweight).
hasPhysicalQuality(dictionaries, soft_Deformable).
hasRole(dictionaries, toolRole).
affordsTask(dictionaries, workStudyTask).

% --- dictionary ---
obj(dictionary).
hasPhysicalQuality(dictionary, electronic).
hasRole(dictionary, toolRole).
affordsTask(dictionary, workStudyTask).

% --- dining area ---
obj(dining_area).
hasRole(dining_area, furnitureRole).
affordsTask(dining_area, eatingDrinkingTask).
affordsTask(dining_area, leisureTask).

% --- dining room table ---
obj(dining_room_table).
hasPhysicalQuality(dining_room_table, heavy).
hasPhysicalQuality(dining_room_table, rigid).
hasRole(dining_room_table, furnitureRole).
affordsTask(dining_room_table, eatingDrinkingTask).
affordsTask(dining_room_table, leisureTask).

% --- dining table ---
obj(dining_table).
hasPhysicalQuality(dining_table, heavy).
hasPhysicalQuality(dining_table, rigid).
hasRole(dining_table, furnitureRole).
affordsTask(dining_table, eatingDrinkingTask).
affordsTask(dining_table, leisureTask).
affordsTask(dining_table, storageTask).

% --- dinner ---
obj(dinner).
hasPhysicalQuality(dinner, perishable).
hasRole(dinner, consumableRole).
affordsTask(dinner, eatingDrinkingTask).

% --- dinner plate ---
obj(dinner_plate).
hasPhysicalQuality(dinner_plate, lightweight).
hasPhysicalQuality(dinner_plate, rigid).
hasRole(dinner_plate, utensilRole).
affordsTask(dinner_plate, eatingDrinkingTask).

% --- dirty dishes ---
obj(dirty_dishes).
hasPhysicalQuality(dirty_dishes, fragile).
hasRole(dirty_dishes, utensilRole).
affordsTask(dirty_dishes, cleaningTask).

% --- dish ---
obj(dish).
hasPhysicalQuality(dish, rigid).
hasRole(dish, utensilRole).
affordsTask(dish, eatingDrinkingTask).

% --- dishes ---
obj(dishes).
hasPhysicalQuality(dishes, rigid).
hasRole(dishes, utensilRole).
affordsTask(dishes, eatingDrinkingTask).
affordsTask(dishes, foodPreparationTask).

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
hasRole(display_cabinet, storageContainerRole).
affordsTask(display_cabinet, leisureTask).
affordsTask(display_cabinet, storageTask).

% --- disposable razor ---
obj(disposable_razor).
hasPhysicalQuality(disposable_razor, fragile).
hasPhysicalQuality(disposable_razor, sharp).
hasRole(disposable_razor, utensilRole).
affordsTask(disposable_razor, foodPreparationTask).

% --- divider ---
obj(divider).
hasPhysicalQuality(divider, rigid).
hasRole(divider, furnitureRole).
affordsTask(divider, storageTask).

% --- dog ---
obj(dog).
hasPhysicalQuality(dog, fragile).
hasPhysicalQuality(dog, rigid).
hasRole(dog, consumableRole).
affordsTask(dog, eatingDrinkingTask).
affordsTask(dog, leisureTask).

% --- dogs ---
obj(dogs).
hasPhysicalQuality(dogs, fragile).
hasPhysicalQuality(dogs, rigid).
hasRole(dogs, consumableRole).
affordsTask(dogs, eatingDrinkingTask).

% --- door ---
obj(door).
hasPhysicalQuality(door, rigid).
hasRole(door, furnitureRole).
affordsTask(door, storageTask).

% --- door with lock ---
obj(door_with_lock).
hasPhysicalQuality(door_with_lock, heavy).
hasRole(door_with_lock, furnitureRole).
affordsTask(door_with_lock, maintenanceTask).

% --- doormat ---
obj(doormat).
hasPhysicalQuality(doormat, lightweight).
hasPhysicalQuality(doormat, soft_Deformable).
hasRole(doormat, furnitureRole).
affordsTask(doormat, cleaningTask).

% --- doorway ---
obj(doorway).
hasPhysicalQuality(doorway, heavy).
hasRole(doorway, furnitureRole).
affordsTask(doorway, leisureTask).

% --- double edged razor ---
obj(double_edged_razor).
hasPhysicalQuality(double_edged_razor, sharp).
hasRole(double_edged_razor, utensilRole).
affordsTask(double_edged_razor, foodPreparationTask).

% --- drawer ---
obj(drawer).
hasPhysicalQuality(drawer, heavy).
hasRole(drawer, storageContainerRole).
affordsTask(drawer, storageTask).

% --- drawing room ---
obj(drawing_room).
hasPhysicalQuality(drawing_room, rigid).
hasRole(drawing_room, furnitureRole).
affordsTask(drawing_room, leisureTask).

% --- drawstring bag ---
obj(drawstring_bag).
hasPhysicalQuality(drawstring_bag, lightweight).
hasPhysicalQuality(drawstring_bag, soft_Deformable).
hasRole(drawstring_bag, storageContainerRole).
affordsTask(drawstring_bag, storageTask).

% --- dress ---
obj(dress).
hasPhysicalQuality(dress, lightweight).
hasPhysicalQuality(dress, soft_Deformable).
hasRole(dress, clothingRole).
affordsTask(dress, dressingTask).

% --- dresser ---
obj(dresser).
hasPhysicalQuality(dresser, heavy).
hasPhysicalQuality(dresser, rigid).
hasRole(dresser, furnitureRole).
affordsTask(dresser, storageTask).

% --- drill ---
obj(drill).
hasPhysicalQuality(drill, heavy).
hasPhysicalQuality(drill, rigid).
hasRole(drill, toolRole).
affordsTask(drill, maintenanceTask).

% --- drink ---
obj(drink).
hasPhysicalQuality(drink, liquid).
hasRole(drink, consumableRole).
affordsTask(drink, eatingDrinkingTask).

% --- drinking water ---
obj(drinking_water).
hasPhysicalQuality(drinking_water, liquid).
hasRole(drinking_water, consumableRole).
affordsTask(drinking_water, eatingDrinkingTask).

% --- drinks ---
obj(drinks).
hasPhysicalQuality(drinks, liquid).
hasRole(drinks, consumableRole).
affordsTask(drinks, eatingDrinkingTask).

% --- dryer ---
obj(dryer).
hasPhysicalQuality(dryer, electronic).
hasPhysicalQuality(dryer, heavy).
hasRole(dryer, applianceRole).
affordsTask(dryer, maintenanceTask).

% --- dust ---
obj(dust).
hasPhysicalQuality(dust, granular).
hasRole(dust, wasteRole).
affordsTask(dust, cleaningTask).

% --- dustbin ---
obj(dustbin).
hasPhysicalQuality(dustbin, heavy).
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
hasPhysicalQuality(egg, lightweight).
hasRole(egg, consumableRole).
affordsTask(egg, eatingDrinkingTask).
affordsTask(egg, foodPreparationTask).

% --- egg shells ---
obj(egg_shells).
hasPhysicalQuality(egg_shells, fragile).
hasRole(egg_shells, wasteRole).

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
hasPhysicalQuality(electric_fan, heavy).
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
hasPhysicalQuality(electric_razor, heavy).
hasPhysicalQuality(electric_razor, sharp).
hasRole(electric_razor, toolRole).
affordsTask(electric_razor, foodPreparationTask).

% --- electric socket ---
obj(electric_socket).
hasPhysicalQuality(electric_socket, electronic).
hasPhysicalQuality(electric_socket, heavy).
hasRole(electric_socket, applianceRole).
affordsTask(electric_socket, workStudyTask).

% --- electricity ---
obj(electricity).
hasPhysicalQuality(electricity, electronic).
hasPhysicalQuality(electricity, toxic_Hazardous).
hasRole(electricity, applianceRole).
affordsTask(electricity, leisureTask).
affordsTask(electricity, workStudyTask).

% --- electronic appliance ---
obj(electronic_appliance).
hasPhysicalQuality(electronic_appliance, electronic).
hasPhysicalQuality(electronic_appliance, heavy).
hasRole(electronic_appliance, applianceRole).
affordsTask(electronic_appliance, leisureTask).
affordsTask(electronic_appliance, workStudyTask).

% --- encyclopedia ---
obj(encyclopedia).
hasRole(encyclopedia, documentRole).
affordsTask(encyclopedia, workStudyTask).

% --- entrance ---
obj(entrance).
hasPhysicalQuality(entrance, rigid).
hasRole(entrance, furnitureRole).
affordsTask(entrance, leisureTask).

% --- entrance hall ---
obj(entrance_hall).
hasRole(entrance_hall, furnitureRole).

% --- entranceway ---
obj(entranceway).
hasRole(entranceway, furnitureRole).
affordsTask(entranceway, leisureTask).

% --- entryway ---
obj(entryway).
hasRole(entryway, furnitureRole).
affordsTask(entryway, leisureTask).

% --- envelope ---
obj(envelope).
hasPhysicalQuality(envelope, lightweight).
hasRole(envelope, storageContainerRole).
affordsTask(envelope, storageTask).

% --- eraser ---
obj(eraser).
hasPhysicalQuality(eraser, lightweight).
hasPhysicalQuality(eraser, soft_Deformable).
hasRole(eraser, toolRole).
affordsTask(eraser, maintenanceTask).

% --- eyeglasses case ---
obj(eyeglasses_case).
hasPhysicalQuality(eyeglasses_case, lightweight).
hasPhysicalQuality(eyeglasses_case, soft_Deformable).
hasRole(eyeglasses_case, storageContainerRole).
affordsTask(eyeglasses_case, storageTask).

% --- fan ---
obj(fan).
hasPhysicalQuality(fan, electronic).
hasPhysicalQuality(fan, lightweight).
hasRole(fan, applianceRole).
affordsTask(fan, leisureTask).

% --- fans ---
obj(fans).
hasPhysicalQuality(fans, lightweight).
hasPhysicalQuality(fans, rigid).
hasRole(fans, applianceRole).
affordsTask(fans, leisureTask).

% --- faucet ---
obj(faucet).
hasPhysicalQuality(faucet, liquid).
hasRole(faucet, toolRole).
affordsTask(faucet, eatingDrinkingTask).
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
hasRole(feathers, beddingRole).
affordsTask(feathers, leisureTask).

% --- felt ---
obj(felt).
hasPhysicalQuality(felt, soft_Deformable).
hasPhysicalQuality(felt, washable).
hasRole(felt, consumableRole).
affordsTask(felt, leisureTask).

% --- ferret ---
obj(ferret).
hasPhysicalQuality(ferret, fragile).
hasPhysicalQuality(ferret, lightweight).
hasRole(ferret, entertainmentRole).
affordsTask(ferret, leisureTask).

% --- fertilizer ---
obj(fertilizer).
hasPhysicalQuality(fertilizer, fragile).
hasPhysicalQuality(fertilizer, liquid).
hasRole(fertilizer, toolRole).
affordsTask(fertilizer, gardeningTask).

% --- fiberglass ---
obj(fiberglass).
hasPhysicalQuality(fiberglass, rigid).
hasRole(fiberglass, storageContainerRole).
affordsTask(fiberglass, maintenanceTask).

% --- file ---
obj(file).
hasPhysicalQuality(file, lightweight).
hasRole(file, storageContainerRole).
affordsTask(file, storageTask).

% --- file cabinet ---
obj(file_cabinet).
hasRole(file_cabinet, storageContainerRole).
affordsTask(file_cabinet, storageTask).

% --- files ---
obj(files).
hasRole(files, storageContainerRole).
affordsTask(files, storageTask).

% --- filing box ---
obj(filing_box).
hasPhysicalQuality(filing_box, heavy).
hasPhysicalQuality(filing_box, rigid).
hasRole(filing_box, storageContainerRole).
affordsTask(filing_box, storageTask).

% --- film ---
obj(film).
hasPhysicalQuality(film, fragile).
hasRole(film, consumableRole).
affordsTask(film, leisureTask).

% --- fire ---
obj(fire).
hasPhysicalQuality(fire, heated).
hasRole(fire, toolRole).
affordsTask(fire, leisureTask).
affordsTask(fire, maintenanceTask).

% --- fire extinguisher ---
obj(fire_extinguisher).
hasPhysicalQuality(fire_extinguisher, heavy).
hasRole(fire_extinguisher, safetyEquipmentRole).
affordsTask(fire_extinguisher, maintenanceTask).

% --- fireplace ---
obj(fireplace).
hasPhysicalQuality(fireplace, heated).
hasRole(fireplace, cookwareRole).
affordsTask(fireplace, foodPreparationTask).

% --- fish ---
obj(fish).
hasPhysicalQuality(fish, fragile).
hasPhysicalQuality(fish, perishable).
hasRole(fish, consumableRole).
affordsTask(fish, eatingDrinkingTask).

% --- fishes ---
obj(fishes).
hasPhysicalQuality(fishes, fragile).
hasRole(fishes, consumableRole).
affordsTask(fishes, eatingDrinkingTask).

% --- flask ---
obj(flask).
hasPhysicalQuality(flask, lightweight).
hasRole(flask, storageContainerRole).
affordsTask(flask, eatingDrinkingTask).
affordsTask(flask, storageTask).

% --- flight bag ---
obj(flight_bag).
hasPhysicalQuality(flight_bag, lightweight).
hasPhysicalQuality(flight_bag, rigid).
hasRole(flight_bag, storageContainerRole).

% --- floor ---
obj(floor).
hasPhysicalQuality(floor, heavy).
hasPhysicalQuality(floor, rigid).
hasRole(floor, furnitureRole).
affordsTask(floor, leisureTask).
affordsTask(floor, storageTask).

% --- flooring ---
obj(flooring).
hasPhysicalQuality(flooring, rigid).
hasRole(flooring, furnitureRole).
affordsTask(flooring, leisureTask).

% --- flour ---
obj(flour).
hasPhysicalQuality(flour, granular).
hasRole(flour, consumableRole).
affordsTask(flour, foodPreparationTask).

% --- flower ---
obj(flower).
hasRole(flower, consumableRole).
affordsTask(flower, eatingDrinkingTask).

% --- flowers ---
obj(flowers).
hasPhysicalQuality(flowers, perishable).
hasPhysicalQuality(flowers, soft_Deformable).
hasRole(flowers, consumableRole).
affordsTask(flowers, gardeningTask).
affordsTask(flowers, leisureTask).

% --- fluoride mouthwash ---
obj(fluoride_mouthwash).
hasPhysicalQuality(fluoride_mouthwash, liquid).
hasPhysicalQuality(fluoride_mouthwash, toxic_Hazardous).
hasRole(fluoride_mouthwash, cleaningToolRole).
affordsTask(fluoride_mouthwash, hygieneTask).

% --- folder ---
obj(folder).
hasPhysicalQuality(folder, lightweight).
hasRole(folder, storageContainerRole).
affordsTask(folder, storageTask).

% --- folding chair ---
obj(folding_chair).
hasPhysicalQuality(folding_chair, lightweight).
hasPhysicalQuality(folding_chair, rigid).
hasRole(folding_chair, furnitureRole).
affordsTask(folding_chair, leisureTask).
affordsTask(folding_chair, storageTask).

% --- folding door ---
obj(folding_door).
hasPhysicalQuality(folding_door, fragile).
hasPhysicalQuality(folding_door, lightweight).
hasRole(folding_door, furnitureRole).
affordsTask(folding_door, storageTask).

% --- folding shower door ---
obj(folding_shower_door).
hasPhysicalQuality(folding_shower_door, lightweight).
hasPhysicalQuality(folding_shower_door, rigid).
hasRole(folding_shower_door, furnitureRole).
affordsTask(folding_shower_door, leisureTask).

% --- food ---
obj(food).
hasPhysicalQuality(food, granular).
hasPhysicalQuality(food, perishable).
hasRole(food, consumableRole).
affordsTask(food, eatingDrinkingTask).

% --- food can ---
obj(food_can).
hasRole(food_can, storageContainerRole).
affordsTask(food_can, storageTask).

% --- football ---
obj(football).
hasPhysicalQuality(football, lightweight).
hasPhysicalQuality(football, rigid).
hasRole(football, entertainmentRole).
affordsTask(football, leisureTask).

% --- footstool ---
obj(footstool).
hasPhysicalQuality(footstool, fragile).
hasPhysicalQuality(footstool, rigid).
hasRole(footstool, furnitureRole).
affordsTask(footstool, leisureTask).
affordsTask(footstool, storageTask).

% --- fork ---
obj(fork).
hasPhysicalQuality(fork, rigid).
hasPhysicalQuality(fork, sharp).
hasRole(fork, utensilRole).
affordsTask(fork, eatingDrinkingTask).
affordsTask(fork, foodPreparationTask).

% --- forks ---
obj(forks).
hasPhysicalQuality(forks, rigid).
hasPhysicalQuality(forks, sharp).
hasRole(forks, utensilRole).
affordsTask(forks, eatingDrinkingTask).
affordsTask(forks, foodPreparationTask).

% --- foundation ---
obj(foundation).
hasPhysicalQuality(foundation, heavy).
hasRole(foundation, furnitureRole).
affordsTask(foundation, maintenanceTask).

% --- fountain ---
obj(fountain).
hasRole(fountain, storageContainerRole).
affordsTask(fountain, leisureTask).

% --- fountain pen ---
obj(fountain_pen).
hasPhysicalQuality(fountain_pen, lightweight).
hasPhysicalQuality(fountain_pen, rigid).
hasRole(fountain_pen, toolRole).

% --- foyer ---
obj(foyer).
hasPhysicalQuality(foyer, fragile).
hasRole(foyer, furnitureRole).
affordsTask(foyer, leisureTask).

% --- frame ---
obj(frame).
hasPhysicalQuality(frame, rigid).
hasRole(frame, furnitureRole).
affordsTask(frame, leisureTask).

% --- freezer ---
obj(freezer).
hasPhysicalQuality(freezer, requiresFreezing).
hasRole(freezer, applianceRole).
affordsTask(freezer, storageTask).

% --- fresh fruit ---
obj(fresh_fruit).
hasPhysicalQuality(fresh_fruit, perishable).
hasRole(fresh_fruit, consumableRole).
affordsTask(fresh_fruit, eatingDrinkingTask).

% --- fresh vegetables ---
obj(fresh_vegetables).
hasPhysicalQuality(fresh_vegetables, perishable).
hasRole(fresh_vegetables, consumableRole).
affordsTask(fresh_vegetables, eatingDrinkingTask).

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
affordsTask(frisbee, leisureTask).

% --- front courtyard ---
obj(front_courtyard).
hasRole(front_courtyard, furnitureRole).
affordsTask(front_courtyard, gardeningTask).
affordsTask(front_courtyard, leisureTask).

% --- front garden ---
obj(front_garden).
hasRole(front_garden, decorationRole).
affordsTask(front_garden, leisureTask).

% --- front yard ---
obj(front_yard).
hasRole(front_yard, furnitureRole).
affordsTask(front_yard, gardeningTask).
affordsTask(front_yard, leisureTask).

% --- fruit ---
obj(fruit).
hasPhysicalQuality(fruit, perishable).
hasRole(fruit, consumableRole).
affordsTask(fruit, eatingDrinkingTask).

% --- frying pan ---
obj(frying_pan).
hasPhysicalQuality(frying_pan, heated).
hasPhysicalQuality(frying_pan, rigid).
hasRole(frying_pan, cookwareRole).
affordsTask(frying_pan, foodPreparationTask).

% --- fur ---
obj(fur).
hasPhysicalQuality(fur, soft_Deformable).
hasRole(fur, consumableRole).
affordsTask(fur, eatingDrinkingTask).

% --- furnace ---
obj(furnace).
hasPhysicalQuality(furnace, heated).
hasRole(furnace, applianceRole).
affordsTask(furnace, maintenanceTask).

% --- furniture ---
obj(furniture).
hasPhysicalQuality(furniture, heavy).
hasPhysicalQuality(furniture, rigid).
hasRole(furniture, furnitureRole).
affordsTask(furniture, storageTask).

% --- furniture dresser ---
obj(furniture_dresser).
hasPhysicalQuality(furniture_dresser, heavy).
hasPhysicalQuality(furniture_dresser, rigid).
hasRole(furniture_dresser, furnitureRole).
affordsTask(furniture_dresser, storageTask).

% --- furniture secretary ---
obj(furniture_secretary).
hasPhysicalQuality(furniture_secretary, heavy).
hasPhysicalQuality(furniture_secretary, rigid).
hasRole(furniture_secretary, furnitureRole).
affordsTask(furniture_secretary, workStudyTask).

% --- game ---
obj(game).
hasRole(game, entertainmentRole).
affordsTask(game, leisureTask).

% --- games ---
obj(games).
hasRole(games, entertainmentRole).
affordsTask(games, leisureTask).

% --- garage ---
obj(garage).
hasPhysicalQuality(garage, heavy).
hasRole(garage, storageContainerRole).
affordsTask(garage, storageTask).

% --- garbage ---
obj(garbage).
hasPhysicalQuality(garbage, fragile).
hasPhysicalQuality(garbage, heavy).
hasRole(garbage, storageContainerRole).
hasRole(garbage, wasteRole).
affordsTask(garbage, wasteDisposalTask).

% --- garbage can ---
obj(garbage_can).
hasPhysicalQuality(garbage_can, heavy).
hasRole(garbage_can, storageContainerRole).
affordsTask(garbage_can, wasteDisposalTask).

% --- garbage waste ---
obj(garbage_waste).
hasRole(garbage_waste, consumableRole).
affordsTask(garbage_waste, wasteDisposalTask).

% --- garden ---
obj(garden).
hasPhysicalQuality(garden, fragile).
hasPhysicalQuality(garden, rigid).
hasRole(garden, furnitureRole).
affordsTask(garden, gardeningTask).

% --- garden hose ---
obj(garden_hose).
hasPhysicalQuality(garden_hose, heavy).
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

% --- gasoline ---
obj(gasoline).
hasPhysicalQuality(gasoline, flammable).
hasRole(gasoline, consumableRole).
affordsTask(gasoline, leisureTask).
affordsTask(gasoline, workStudyTask).

% --- gate ---
obj(gate).
hasPhysicalQuality(gate, rigid).
hasRole(gate, furnitureRole).
affordsTask(gate, maintenanceTask).

% --- gate leg table ---
obj(gate_leg_table).
hasPhysicalQuality(gate_leg_table, heavy).
hasPhysicalQuality(gate_leg_table, rigid).
hasRole(gate_leg_table, furnitureRole).
affordsTask(gate_leg_table, leisureTask).
affordsTask(gate_leg_table, workStudyTask).

% --- gel ---
obj(gel).
hasPhysicalQuality(gel, fragile).
hasPhysicalQuality(gel, liquid).
hasPhysicalQuality(gel, soft_Deformable).
hasRole(gel, consumableRole).
affordsTask(gel, hygieneTask).
affordsTask(gel, leisureTask).

% --- gel toothpaste ---
obj(gel_toothpaste).
hasPhysicalQuality(gel_toothpaste, liquid).
hasPhysicalQuality(gel_toothpaste, toxic_Hazardous).
hasRole(gel_toothpaste, cleaningToolRole).
affordsTask(gel_toothpaste, hygieneTask).

% --- gift ---
obj(gift).
hasPhysicalQuality(gift, lightweight).
hasRole(gift, consumableRole).
affordsTask(gift, leisureTask).

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
hasRole(glass_fronted_display_cabinet, storageContainerRole).
affordsTask(glass_fronted_display_cabinet, storageTask).

% --- glass of water ---
obj(glass_of_water).
hasPhysicalQuality(glass_of_water, liquid).
hasRole(glass_of_water, consumableRole).
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
hasRole(grill, cookwareRole).
affordsTask(grill, foodPreparationTask).

% --- groceries ---
obj(groceries).
hasPhysicalQuality(groceries, perishable).
hasRole(groceries, consumableRole).
affordsTask(groceries, eatingDrinkingTask).

% --- guitar ---
obj(guitar).
hasPhysicalQuality(guitar, rigid).
hasRole(guitar, musicalInstrumentRole).
affordsTask(guitar, leisureTask).

% --- gum ---
obj(gum).
hasPhysicalQuality(gum, lightweight).
hasRole(gum, consumableRole).
affordsTask(gum, eatingDrinkingTask).

% --- gutter ---
obj(gutter).
hasPhysicalQuality(gutter, heavy).
hasPhysicalQuality(gutter, rigid).
hasRole(gutter, toolRole).
affordsTask(gutter, maintenanceTask).

% --- hair ---
obj(hair).
hasPhysicalQuality(hair, lightweight).
hasPhysicalQuality(hair, soft_Deformable).
hasRole(hair, toolRole).
affordsTask(hair, hygieneTask).

% --- hair accessory ---
obj(hair_accessory).
hasPhysicalQuality(hair_accessory, lightweight).
hasPhysicalQuality(hair_accessory, soft_Deformable).
hasRole(hair_accessory, toolRole).
affordsTask(hair_accessory, dressingTask).

% --- hair care article ---
obj(hair_care_article).
hasPhysicalQuality(hair_care_article, lightweight).
hasRole(hair_care_article, cleaningToolRole).
affordsTask(hair_care_article, hygieneTask).

% --- hair clip ---
obj(hair_clip).
hasPhysicalQuality(hair_clip, lightweight).
hasPhysicalQuality(hair_clip, rigid).
hasRole(hair_clip, utensilRole).
affordsTask(hair_clip, dressingTask).

% --- hair conditioner ---
obj(hair_conditioner).
hasPhysicalQuality(hair_conditioner, liquid).
hasPhysicalQuality(hair_conditioner, washable).
hasRole(hair_conditioner, cleaningToolRole).
affordsTask(hair_conditioner, hygieneTask).

% --- hair dryer ---
obj(hair_dryer).
hasPhysicalQuality(hair_dryer, electronic).
hasPhysicalQuality(hair_dryer, heavy).
hasRole(hair_dryer, applianceRole).
affordsTask(hair_dryer, hygieneTask).
affordsTask(hair_dryer, leisureTask).

% --- hair gel ---
obj(hair_gel).
hasPhysicalQuality(hair_gel, fragile).
hasPhysicalQuality(hair_gel, liquid).
hasRole(hair_gel, toolRole).
affordsTask(hair_gel, leisureTask).

% --- hair shaping gel ---
obj(hair_shaping_gel).
hasPhysicalQuality(hair_shaping_gel, liquid).
hasPhysicalQuality(hair_shaping_gel, washable).
hasRole(hair_shaping_gel, cleaningToolRole).
affordsTask(hair_shaping_gel, hygieneTask).

% --- hairbrush ---
obj(hairbrush).
hasPhysicalQuality(hairbrush, lightweight).
hasPhysicalQuality(hairbrush, rigid).
hasRole(hairbrush, toolRole).
affordsTask(hairbrush, hygieneTask).

% --- haircloth ---
obj(haircloth).
hasPhysicalQuality(haircloth, soft_Deformable).
hasPhysicalQuality(haircloth, washable).
hasRole(haircloth, clothingRole).
affordsTask(haircloth, dressingTask).

% --- hairdresser chair ---
obj(hairdresser_chair).
hasPhysicalQuality(hairdresser_chair, heavy).
hasPhysicalQuality(hairdresser_chair, rigid).
hasRole(hairdresser_chair, furnitureRole).
affordsTask(hairdresser_chair, leisureTask).

% --- hairpin ---
obj(hairpin).
hasPhysicalQuality(hairpin, lightweight).
hasPhysicalQuality(hairpin, rigid).
hasRole(hairpin, utensilRole).
affordsTask(hairpin, dressingTask).

% --- hall ---
obj(hall).
hasRole(hall, furnitureRole).
affordsTask(hall, leisureTask).
affordsTask(hall, workStudyTask).

% --- hallway ---
obj(hallway).
hasPhysicalQuality(hallway, rigid).
hasRole(hallway, furnitureRole).
affordsTask(hallway, leisureTask).

% --- ham ---
obj(ham).
hasPhysicalQuality(ham, perishable).
hasRole(ham, consumableRole).
affordsTask(ham, eatingDrinkingTask).

% --- hammer ---
obj(hammer).
hasPhysicalQuality(hammer, heavy).
hasPhysicalQuality(hammer, rigid).
hasRole(hammer, toolRole).
affordsTask(hammer, maintenanceTask).

% --- hammers ---
obj(hammers).
hasPhysicalQuality(hammers, heavy).
hasPhysicalQuality(hammers, rigid).
hasRole(hammers, toolRole).
affordsTask(hammers, maintenanceTask).

% --- handbag ---
obj(handbag).
hasPhysicalQuality(handbag, lightweight).
hasPhysicalQuality(handbag, soft_Deformable).
hasRole(handbag, storageContainerRole).
affordsTask(handbag, storageTask).

% --- handle ---
obj(handle).
hasPhysicalQuality(handle, fragile).
hasPhysicalQuality(handle, rigid).
hasRole(handle, toolRole).
affordsTask(handle, maintenanceTask).

% --- hanger ---
obj(hanger).
hasPhysicalQuality(hanger, lightweight).
hasPhysicalQuality(hanger, rigid).
hasRole(hanger, storageContainerRole).
affordsTask(hanger, dressingTask).

% --- hanging rail ---
obj(hanging_rail).
hasPhysicalQuality(hanging_rail, heavy).
hasPhysicalQuality(hanging_rail, rigid).
hasRole(hanging_rail, furnitureRole).
affordsTask(hanging_rail, storageTask).

% --- hard drive ---
obj(hard_drive).
hasPhysicalQuality(hard_drive, electronic).
hasPhysicalQuality(hard_drive, heavy).
hasRole(hard_drive, applianceRole).
affordsTask(hard_drive, workStudyTask).

% --- hat ---
obj(hat).
hasPhysicalQuality(hat, lightweight).
hasPhysicalQuality(hat, soft_Deformable).
hasRole(hat, clothingRole).
affordsTask(hat, dressingTask).

% --- hats ---
obj(hats).
hasPhysicalQuality(hats, soft_Deformable).
hasPhysicalQuality(hats, washable).
hasRole(hats, clothingRole).
affordsTask(hats, leisureTask).

% --- hearing aid ---
obj(hearing_aid).
hasPhysicalQuality(hearing_aid, electronic).
hasPhysicalQuality(hearing_aid, lightweight).
hasRole(hearing_aid, toolRole).
affordsTask(hearing_aid, workStudyTask).

% --- heat source ---
obj(heat_source).
hasPhysicalQuality(heat_source, heated).
hasRole(heat_source, cookwareRole).
affordsTask(heat_source, foodPreparationTask).

% --- heated towel rack ---
obj(heated_towel_rack).
hasPhysicalQuality(heated_towel_rack, heated).
hasRole(heated_towel_rack, storageContainerRole).
affordsTask(heated_towel_rack, eatingDrinkingTask).

% --- heater ---
obj(heater).
hasPhysicalQuality(heater, heated).
hasRole(heater, applianceRole).
affordsTask(heater, maintenanceTask).

% --- heating room ---
obj(heating_room).
hasPhysicalQuality(heating_room, heated).
hasRole(heating_room, applianceRole).
affordsTask(heating_room, leisureTask).

% --- hide bed ---
obj(hide_bed).
hasPhysicalQuality(hide_bed, heavy).
hasPhysicalQuality(hide_bed, soft_Deformable).
hasRole(hide_bed, furnitureRole).
affordsTask(hide_bed, sleepingTask).

% --- hide bed sofa ---
obj(hide_bed_sofa).
hasPhysicalQuality(hide_bed_sofa, fragile).
hasPhysicalQuality(hide_bed_sofa, soft_Deformable).
hasRole(hide_bed_sofa, furnitureRole).
affordsTask(hide_bed_sofa, leisureTask).
affordsTask(hide_bed_sofa, sleepingTask).

% --- highlighter ---
obj(highlighter).
hasPhysicalQuality(highlighter, lightweight).
hasPhysicalQuality(highlighter, sharp).
hasRole(highlighter, toolRole).
affordsTask(highlighter, leisureTask).
affordsTask(highlighter, workStudyTask).

% --- highlighter pen ---
obj(highlighter_pen).
hasPhysicalQuality(highlighter_pen, lightweight).
hasPhysicalQuality(highlighter_pen, sharp).
hasRole(highlighter_pen, utensilRole).
affordsTask(highlighter_pen, foodPreparationTask).

% --- hinged door ---
obj(hinged_door).
hasPhysicalQuality(hinged_door, heavy).
hasPhysicalQuality(hinged_door, rigid).
hasRole(hinged_door, furnitureRole).
affordsTask(hinged_door, maintenanceTask).
affordsTask(hinged_door, storageTask).

% --- hoist ---
obj(hoist).
hasPhysicalQuality(hoist, heavy).
hasPhysicalQuality(hoist, rigid).
hasRole(hoist, toolRole).
affordsTask(hoist, maintenanceTask).

% --- holdall ---
obj(holdall).
hasPhysicalQuality(holdall, lightweight).
hasPhysicalQuality(holdall, soft_Deformable).
hasRole(holdall, storageContainerRole).
affordsTask(holdall, storageTask).

% --- hole punch ---
obj(hole_punch).
hasPhysicalQuality(hole_punch, heavy).
hasPhysicalQuality(hole_punch, rigid).
hasRole(hole_punch, toolRole).
affordsTask(hole_punch, maintenanceTask).

% --- home office ---
obj(home_office).
hasRole(home_office, furnitureRole).
affordsTask(home_office, workStudyTask).

% --- honey ---
obj(honey).
hasPhysicalQuality(honey, liquid).
hasPhysicalQuality(honey, perishable).
hasRole(honey, consumableRole).
affordsTask(honey, eatingDrinkingTask).

% --- hook ---
obj(hook).
hasPhysicalQuality(hook, lightweight).
hasPhysicalQuality(hook, rigid).
hasRole(hook, toolRole).

% --- horn ---
obj(horn).
hasPhysicalQuality(horn, lightweight).
hasRole(horn, musicalInstrumentRole).
affordsTask(horn, leisureTask).

% --- hose ---
obj(hose).
hasPhysicalQuality(hose, lightweight).
hasRole(hose, toolRole).
affordsTask(hose, cleaningTask).
affordsTask(hose, gardeningTask).

% --- hot faucet ---
obj(hot_faucet).
hasPhysicalQuality(hot_faucet, heated).
hasRole(hot_faucet, toolRole).
affordsTask(hot_faucet, hygieneTask).

% --- hot sauce ---
obj(hot_sauce).
hasPhysicalQuality(hot_sauce, liquid).
hasPhysicalQuality(hot_sauce, perishable).
hasPhysicalQuality(hot_sauce, toxic_Hazardous).
hasRole(hot_sauce, consumableRole).
affordsTask(hot_sauce, eatingDrinkingTask).

% --- hot table ---
obj(hot_table).
hasPhysicalQuality(hot_table, heated).
hasRole(hot_table, cookwareRole).
affordsTask(hot_table, foodPreparationTask).

% --- hot tap ---
obj(hot_tap).
hasPhysicalQuality(hot_tap, electronic).
hasPhysicalQuality(hot_tap, heavy).
hasRole(hot_tap, applianceRole).
affordsTask(hot_tap, eatingDrinkingTask).
affordsTask(hot_tap, hygieneTask).

% --- house ---
obj(house).
hasPhysicalQuality(house, heavy).
hasRole(house, furnitureRole).
affordsTask(house, leisureTask).
affordsTask(house, storageTask).

% --- ice ---
obj(ice).
hasPhysicalQuality(ice, requiresFreezing).
hasRole(ice, consumableRole).
affordsTask(ice, eatingDrinkingTask).

% --- ice cream ---
obj(ice_cream).
hasPhysicalQuality(ice_cream, liquid).
hasPhysicalQuality(ice_cream, perishable).
hasPhysicalQuality(ice_cream, requiresFreezing).
hasRole(ice_cream, consumableRole).
affordsTask(ice_cream, eatingDrinkingTask).

% --- ice cubes ---
obj(ice_cubes).
hasPhysicalQuality(ice_cubes, fragile).
hasPhysicalQuality(ice_cubes, lightweight).
hasPhysicalQuality(ice_cubes, requiresFreezing).
hasRole(ice_cubes, consumableRole).
affordsTask(ice_cubes, eatingDrinkingTask).

% --- icebox ---
obj(icebox).
hasPhysicalQuality(icebox, requiresFreezing).
hasRole(icebox, applianceRole).
affordsTask(icebox, storageTask).

% --- icecream ---
obj(icecream).
hasPhysicalQuality(icecream, liquid).
hasPhysicalQuality(icecream, perishable).
hasPhysicalQuality(icecream, requiresFreezing).
hasRole(icecream, consumableRole).
affordsTask(icecream, eatingDrinkingTask).

% --- index card ---
obj(index_card).
hasPhysicalQuality(index_card, lightweight).
hasPhysicalQuality(index_card, rigid).
hasRole(index_card, documentRole).
affordsTask(index_card, workStudyTask).

% --- index card cabinet ---
obj(index_card_cabinet).
hasPhysicalQuality(index_card_cabinet, heavy).
hasPhysicalQuality(index_card_cabinet, rigid).
hasRole(index_card_cabinet, storageContainerRole).
affordsTask(index_card_cabinet, storageTask).

% --- ingredients ---
obj(ingredients).
hasPhysicalQuality(ingredients, granular).
hasRole(ingredients, consumableRole).
affordsTask(ingredients, foodPreparationTask).

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
affordsTask(instrument_triangle, workStudyTask).

% --- interior area ---
obj(interior_area).
hasPhysicalQuality(interior_area, rigid).
hasRole(interior_area, furnitureRole).
affordsTask(interior_area, leisureTask).
affordsTask(interior_area, workStudyTask).

% --- iron ---
obj(iron).
hasPhysicalQuality(iron, heated).
hasPhysicalQuality(iron, heavy).
hasPhysicalQuality(iron, rigid).
hasRole(iron, toolRole).
affordsTask(iron, foodPreparationTask).

% --- jack ---
obj(jack).
hasPhysicalQuality(jack, heavy).
hasPhysicalQuality(jack, rigid).
hasRole(jack, toolRole).
affordsTask(jack, maintenanceTask).

% --- jacket ---
obj(jacket).
hasPhysicalQuality(jacket, soft_Deformable).
hasPhysicalQuality(jacket, washable).
hasRole(jacket, clothingRole).
affordsTask(jacket, dressingTask).

% --- jar ---
obj(jar).
hasRole(jar, storageContainerRole).
affordsTask(jar, storageTask).

% --- jars ---
obj(jars).
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

% --- jewelry ---
obj(jewelry).
hasPhysicalQuality(jewelry, fragile).
hasRole(jewelry, decorationRole).
affordsTask(jewelry, leisureTask).

% --- juice ---
obj(juice).
hasPhysicalQuality(juice, liquid).
hasPhysicalQuality(juice, perishable).
hasRole(juice, consumableRole).
affordsTask(juice, eatingDrinkingTask).

% --- ketchup ---
obj(ketchup).
hasPhysicalQuality(ketchup, liquid).
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
affordsTask(kitchen_table, leisureTask).
affordsTask(kitchen_table, storageTask).

% --- kitchen utensil ---
obj(kitchen_utensil).
hasPhysicalQuality(kitchen_utensil, rigid).
hasPhysicalQuality(kitchen_utensil, sharp).
hasRole(kitchen_utensil, utensilRole).
affordsTask(kitchen_utensil, foodPreparationTask).

% --- kitchenette ---
obj(kitchenette).
hasPhysicalQuality(kitchenette, heavy).
hasRole(kitchenette, cookwareRole).
hasRole(kitchenette, storageContainerRole).
affordsTask(kitchenette, eatingDrinkingTask).
affordsTask(kitchenette, foodPreparationTask).
affordsTask(kitchenette, storageTask).

% --- kitten ---
obj(kitten).
hasPhysicalQuality(kitten, fragile).
hasPhysicalQuality(kitten, lightweight).
hasPhysicalQuality(kitten, soft_Deformable).
hasRole(kitten, entertainmentRole).
affordsTask(kitten, leisureTask).

% --- kitty ---
obj(kitty).
hasPhysicalQuality(kitty, fragile).
hasPhysicalQuality(kitty, lightweight).
affordsTask(kitty, leisureTask).

% --- kleenex ---
obj(kleenex).
hasPhysicalQuality(kleenex, lightweight).
hasPhysicalQuality(kleenex, soft_Deformable).
hasPhysicalQuality(kleenex, washable).
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

% --- labeler ---
obj(labeler).
hasPhysicalQuality(labeler, lightweight).
hasRole(labeler, toolRole).
affordsTask(labeler, storageTask).

% --- ladder ---
obj(ladder).
hasPhysicalQuality(ladder, heavy).
hasPhysicalQuality(ladder, rigid).
hasRole(ladder, toolRole).
affordsTask(ladder, maintenanceTask).

% --- lamp ---
obj(lamp).
hasRole(lamp, lightingRole).
affordsTask(lamp, leisureTask).

% --- lantern ---
obj(lantern).
hasRole(lantern, decorationRole).
affordsTask(lantern, leisureTask).

% --- large container ---
obj(large_container).
hasPhysicalQuality(large_container, heavy).
hasRole(large_container, storageContainerRole).
affordsTask(large_container, storageTask).

% --- laundry room ---
obj(laundry_room).
hasPhysicalQuality(laundry_room, heavy).
hasRole(laundry_room, storageContainerRole).
affordsTask(laundry_room, cleaningTask).

% --- lawn mower ---
obj(lawn_mower).
hasPhysicalQuality(lawn_mower, heavy).
hasPhysicalQuality(lawn_mower, rigid).
hasRole(lawn_mower, toolRole).
affordsTask(lawn_mower, maintenanceTask).

% --- lawnmower ---
obj(lawnmower).
hasPhysicalQuality(lawnmower, electronic).
hasPhysicalQuality(lawnmower, heavy).
hasPhysicalQuality(lawnmower, rigid).
hasRole(lawnmower, toolRole).
affordsTask(lawnmower, maintenanceTask).

% --- lawnmowers ---
obj(lawnmowers).
hasPhysicalQuality(lawnmowers, heavy).
hasRole(lawnmowers, toolRole).
affordsTask(lawnmowers, maintenanceTask).

% --- lead pencil ---
obj(lead_pencil).
hasPhysicalQuality(lead_pencil, lightweight).
hasPhysicalQuality(lead_pencil, rigid).
hasRole(lead_pencil, toolRole).

% --- leaves ---
obj(leaves).
hasPhysicalQuality(leaves, perishable).
hasRole(leaves, wasteRole).
affordsTask(leaves, wasteDisposalTask).

% --- led ---
obj(led).
hasPhysicalQuality(led, electronic).
hasPhysicalQuality(led, lightweight).
hasRole(led, lightingRole).
affordsTask(led, leisureTask).
affordsTask(led, workStudyTask).

% --- ledger ---
obj(ledger).
hasPhysicalQuality(ledger, lightweight).
hasRole(ledger, documentRole).
affordsTask(ledger, workStudyTask).

% --- leg ---
obj(leg).
hasPhysicalQuality(leg, rigid).
hasRole(leg, furnitureRole).
affordsTask(leg, leisureTask).

% --- legs ---
obj(legs).
hasPhysicalQuality(legs, lightweight).
hasPhysicalQuality(legs, rigid).
hasRole(legs, furnitureRole).
affordsTask(legs, leisureTask).

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
affordsTask(letter_slot, storageTask).

% --- letters ---
obj(letters).
hasPhysicalQuality(letters, lightweight).
hasRole(letters, documentRole).
affordsTask(letters, workStudyTask).

% --- lettuce ---
obj(lettuce).
hasPhysicalQuality(lettuce, perishable).
hasRole(lettuce, consumableRole).
affordsTask(lettuce, eatingDrinkingTask).

% --- level ---
obj(level).
hasPhysicalQuality(level, rigid).
hasRole(level, toolRole).
affordsTask(level, maintenanceTask).

% --- library ---
obj(library).
hasPhysicalQuality(library, heavy).
hasRole(library, storageContainerRole).
affordsTask(library, leisureTask).
affordsTask(library, workStudyTask).

% --- light ---
obj(light).
hasRole(light, consumableRole).
affordsTask(light, leisureTask).

% --- light bulb ---
obj(light_bulb).
hasPhysicalQuality(light_bulb, lightweight).
hasPhysicalQuality(light_bulb, rigid).
hasRole(light_bulb, lightingRole).
affordsTask(light_bulb, leisureTask).

% --- light source ---
obj(light_source).
hasPhysicalQuality(light_source, heated).
hasRole(light_source, lightingRole).
affordsTask(light_source, leisureTask).
affordsTask(light_source, workStudyTask).

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

% --- linen ---
obj(linen).
hasPhysicalQuality(linen, soft_Deformable).
hasPhysicalQuality(linen, washable).
hasRole(linen, beddingRole).
hasRole(linen, clothingRole).
affordsTask(linen, dressingTask).
affordsTask(linen, sleepingTask).

% --- linen chest ---
obj(linen_chest).
hasPhysicalQuality(linen_chest, heavy).
hasPhysicalQuality(linen_chest, rigid).
hasRole(linen_chest, storageContainerRole).
affordsTask(linen_chest, storageTask).

% --- linen closet ---
obj(linen_closet).
hasPhysicalQuality(linen_closet, heavy).
hasPhysicalQuality(linen_closet, rigid).
hasRole(linen_closet, storageContainerRole).
affordsTask(linen_closet, storageTask).

% --- linoleum ---
obj(linoleum).
hasPhysicalQuality(linoleum, fragile).
hasRole(linoleum, furnitureRole).
affordsTask(linoleum, cleaningTask).

% --- lip ---
obj(lip).
hasPhysicalQuality(lip, fragile).
hasPhysicalQuality(lip, lightweight).
hasRole(lip, utensilRole).
affordsTask(lip, eatingDrinkingTask).

% --- liquid ---
obj(liquid).
hasPhysicalQuality(liquid, liquid).
hasRole(liquid, consumableRole).
affordsTask(liquid, eatingDrinkingTask).

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
hasPhysicalQuality(lock, rigid).
hasRole(lock, toolRole).
affordsTask(lock, maintenanceTask).

% --- love seat ---
obj(love_seat).
hasPhysicalQuality(love_seat, fragile).
hasPhysicalQuality(love_seat, heavy).
hasRole(love_seat, furnitureRole).
affordsTask(love_seat, leisureTask).
affordsTask(love_seat, storageTask).

% --- luggage ---
obj(luggage).
hasPhysicalQuality(luggage, lightweight).
hasRole(luggage, storageContainerRole).
affordsTask(luggage, storageTask).

% --- lunch ---
obj(lunch).
hasPhysicalQuality(lunch, perishable).
hasRole(lunch, consumableRole).
affordsTask(lunch, eatingDrinkingTask).

% --- magazine ---
obj(magazine).
hasPhysicalQuality(magazine, lightweight).
hasRole(magazine, documentRole).
affordsTask(magazine, leisureTask).

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

% --- magnets ---
obj(magnets).
hasRole(magnets, toolRole).
affordsTask(magnets, storageTask).

% --- mail ---
obj(mail).
hasPhysicalQuality(mail, fragile).
hasPhysicalQuality(mail, lightweight).
hasRole(mail, documentRole).
affordsTask(mail, workStudyTask).

% --- mailbox ---
obj(mailbox).
hasPhysicalQuality(mailbox, heavy).
hasRole(mailbox, storageContainerRole).
affordsTask(mailbox, storageTask).

% --- main entrance ---
obj(main_entrance).
hasRole(main_entrance, furnitureRole).
affordsTask(main_entrance, leisureTask).

% --- map ---
obj(map).
hasRole(map, storageContainerRole).

% --- maps ---
obj(maps).
hasPhysicalQuality(maps, lightweight).
hasRole(maps, toolRole).
affordsTask(maps, leisureTask).

% --- marble ---
obj(marble).
hasPhysicalQuality(marble, lightweight).
hasPhysicalQuality(marble, rigid).
hasRole(marble, decorationRole).
affordsTask(marble, leisureTask).

% --- marker ---
obj(marker).
hasPhysicalQuality(marker, lightweight).
hasRole(marker, toolRole).

% --- mat ---
obj(mat).
hasPhysicalQuality(mat, soft_Deformable).
hasRole(mat, storageContainerRole).
affordsTask(mat, storageTask).

% --- matches ---
obj(matches).
hasRole(matches, toolRole).
affordsTask(matches, leisureTask).

% --- material ---
obj(material).
hasPhysicalQuality(material, granular).
affordsTask(material, maintenanceTask).

% --- mayonnaise ---
obj(mayonnaise).
hasPhysicalQuality(mayonnaise, liquid).
hasPhysicalQuality(mayonnaise, perishable).
hasRole(mayonnaise, consumableRole).
affordsTask(mayonnaise, eatingDrinkingTask).

% --- meal ---
obj(meal).
hasPhysicalQuality(meal, perishable).
hasRole(meal, consumableRole).
affordsTask(meal, eatingDrinkingTask).

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

% --- medicine ---
obj(medicine).
hasPhysicalQuality(medicine, perishable).
hasRole(medicine, consumableRole).
affordsTask(medicine, eatingDrinkingTask).

% --- metronome ---
obj(metronome).
hasPhysicalQuality(metronome, electronic).
hasPhysicalQuality(metronome, lightweight).
hasRole(metronome, musicalInstrumentRole).
affordsTask(metronome, leisureTask).

% --- microwave ---
obj(microwave).
hasPhysicalQuality(microwave, electronic).
hasPhysicalQuality(microwave, heated).
hasPhysicalQuality(microwave, heavy).
hasRole(microwave, applianceRole).
affordsTask(microwave, foodPreparationTask).

% --- microwave oven ---
obj(microwave_oven).
hasPhysicalQuality(microwave_oven, electronic).
hasPhysicalQuality(microwave_oven, heavy).
hasRole(microwave_oven, applianceRole).
affordsTask(microwave_oven, foodPreparationTask).

% --- milk ---
obj(milk).
hasPhysicalQuality(milk, perishable).
hasRole(milk, consumableRole).
affordsTask(milk, eatingDrinkingTask).

% --- mini bar ---
obj(mini_bar).
hasPhysicalQuality(mini_bar, electronic).
hasPhysicalQuality(mini_bar, fragile).
hasPhysicalQuality(mini_bar, heavy).
hasRole(mini_bar, applianceRole).
hasRole(mini_bar, storageContainerRole).
affordsTask(mini_bar, eatingDrinkingTask).
affordsTask(mini_bar, foodPreparationTask).
affordsTask(mini_bar, storageTask).

% --- minibar ---
obj(minibar).
hasPhysicalQuality(minibar, electronic).
hasPhysicalQuality(minibar, heated).
hasPhysicalQuality(minibar, heavy).
hasRole(minibar, storageContainerRole).
affordsTask(minibar, eatingDrinkingTask).
affordsTask(minibar, storageTask).

% --- mint ---
obj(mint).
hasPhysicalQuality(mint, granular).
hasPhysicalQuality(mint, perishable).
hasRole(mint, consumableRole).
affordsTask(mint, eatingDrinkingTask).

% --- mirror ---
obj(mirror).
hasPhysicalQuality(mirror, rigid).
hasRole(mirror, decorationRole).
affordsTask(mirror, leisureTask).

% --- moistener ---
obj(moistener).
hasPhysicalQuality(moistener, liquid).
hasRole(moistener, cleaningToolRole).
affordsTask(moistener, hygieneTask).

% --- mold ---
obj(mold).
hasPhysicalQuality(mold, fragile).
hasRole(mold, toolRole).
affordsTask(mold, maintenanceTask).

% --- money ---
obj(money).
hasPhysicalQuality(money, lightweight).
hasRole(money, consumableRole).
affordsTask(money, eatingDrinkingTask).

% --- monitor ---
obj(monitor).
hasPhysicalQuality(monitor, electronic).
hasPhysicalQuality(monitor, rigid).
hasRole(monitor, applianceRole).
affordsTask(monitor, leisureTask).

% --- monkey ---
obj(monkey).
hasPhysicalQuality(monkey, fragile).
hasPhysicalQuality(monkey, lightweight).
hasRole(monkey, entertainmentRole).
affordsTask(monkey, leisureTask).

% --- mouse ---
obj(mouse).
hasPhysicalQuality(mouse, lightweight).
hasRole(mouse, toolRole).
affordsTask(mouse, workStudyTask).

% --- mouthwash ---
obj(mouthwash).
hasPhysicalQuality(mouthwash, liquid).
hasRole(mouthwash, cleaningToolRole).
affordsTask(mouthwash, hygieneTask).

% --- mug ---
obj(mug).
hasPhysicalQuality(mug, lightweight).
hasPhysicalQuality(mug, liquid).
hasRole(mug, utensilRole).
affordsTask(mug, eatingDrinkingTask).

% --- mushrooms ---
obj(mushrooms).
hasPhysicalQuality(mushrooms, perishable).
hasRole(mushrooms, consumableRole).
affordsTask(mushrooms, eatingDrinkingTask).

% --- music stand ---
obj(music_stand).
hasPhysicalQuality(music_stand, lightweight).
hasPhysicalQuality(music_stand, rigid).
hasRole(music_stand, furnitureRole).
affordsTask(music_stand, leisureTask).

% --- musical instrument ---
obj(musical_instrument).
hasPhysicalQuality(musical_instrument, rigid).
hasRole(musical_instrument, musicalInstrumentRole).
affordsTask(musical_instrument, leisureTask).

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
affordsTask(nail_clippers, maintenanceTask).

% --- nails ---
obj(nails).
hasPhysicalQuality(nails, rigid).
hasPhysicalQuality(nails, sharp).
hasRole(nails, toolRole).
affordsTask(nails, maintenanceTask).

% --- neckwear ---
obj(neckwear).
hasPhysicalQuality(neckwear, lightweight).
hasPhysicalQuality(neckwear, soft_Deformable).
hasRole(neckwear, clothingRole).
affordsTask(neckwear, dressingTask).

% --- needle ---
obj(needle).
hasPhysicalQuality(needle, fragile).
hasPhysicalQuality(needle, sharp).
hasRole(needle, utensilRole).
affordsTask(needle, foodPreparationTask).

% --- nest of tables ---
obj(nest_of_tables).
hasPhysicalQuality(nest_of_tables, heavy).
hasPhysicalQuality(nest_of_tables, rigid).
hasRole(nest_of_tables, furnitureRole).
affordsTask(nest_of_tables, storageTask).

% --- net ---
obj(net).
hasPhysicalQuality(net, lightweight).
hasRole(net, toolRole).
affordsTask(net, maintenanceTask).

% --- newspaper ---
obj(newspaper).
hasPhysicalQuality(newspaper, lightweight).
hasRole(newspaper, documentRole).

% --- newspapers ---
obj(newspapers).
hasPhysicalQuality(newspapers, fragile).
hasPhysicalQuality(newspapers, lightweight).
hasRole(newspapers, documentRole).

% --- night table ---
obj(night_table).
hasRole(night_table, storageContainerRole).
affordsTask(night_table, storageTask).

% --- note ---
obj(note).
hasPhysicalQuality(note, lightweight).
hasRole(note, documentRole).
affordsTask(note, workStudyTask).

% --- notebook ---
obj(notebook).
hasPhysicalQuality(notebook, lightweight).
hasPhysicalQuality(notebook, washable).
hasRole(notebook, documentRole).
affordsTask(notebook, workStudyTask).

% --- notepad ---
obj(notepad).
hasPhysicalQuality(notepad, lightweight).
hasRole(notepad, documentRole).
affordsTask(notepad, workStudyTask).

% --- nuts ---
obj(nuts).
hasPhysicalQuality(nuts, granular).
hasRole(nuts, consumableRole).
affordsTask(nuts, eatingDrinkingTask).

% --- nylon ---
obj(nylon).
hasPhysicalQuality(nylon, lightweight).
hasPhysicalQuality(nylon, soft_Deformable).
hasRole(nylon, clothingRole).
affordsTask(nylon, dressingTask).

% --- oil ---
obj(oil).
hasPhysicalQuality(oil, liquid).
hasRole(oil, consumableRole).
affordsTask(oil, foodPreparationTask).

% --- oilcloth ---
obj(oilcloth).
hasPhysicalQuality(oilcloth, soft_Deformable).
hasPhysicalQuality(oilcloth, washable).
hasRole(oilcloth, cleaningToolRole).
affordsTask(oilcloth, cleaningTask).

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

% --- old newspapers ---
obj(old_newspapers).
hasPhysicalQuality(old_newspapers, perishable).
hasRole(old_newspapers, wasteRole).
affordsTask(old_newspapers, wasteDisposalTask).

% --- old things ---
obj(old_things).
hasPhysicalQuality(old_things, fragile).
hasRole(old_things, furnitureRole).
affordsTask(old_things, storageTask).

% --- olives ---
obj(olives).
hasPhysicalQuality(olives, perishable).
hasRole(olives, consumableRole).
affordsTask(olives, eatingDrinkingTask).

% --- on off switch ---
obj(on_off_switch).
hasPhysicalQuality(on_off_switch, electronic).
hasPhysicalQuality(on_off_switch, lightweight).
hasRole(on_off_switch, toolRole).
affordsTask(on_off_switch, maintenanceTask).

% --- one person chair ---
obj(one_person_chair).
hasPhysicalQuality(one_person_chair, heavy).
hasPhysicalQuality(one_person_chair, rigid).
hasRole(one_person_chair, furnitureRole).
affordsTask(one_person_chair, leisureTask).
affordsTask(one_person_chair, workStudyTask).

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

% --- outfit ---
obj(outfit).
hasRole(outfit, clothingRole).
affordsTask(outfit, dressingTask).

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

% --- pad ---
obj(pad).
hasPhysicalQuality(pad, lightweight).
hasPhysicalQuality(pad, soft_Deformable).
hasRole(pad, beddingRole).
affordsTask(pad, sleepingTask).

% --- page ---
obj(page).
hasRole(page, documentRole).

% --- pail ---
obj(pail).
hasPhysicalQuality(pail, heavy).
hasRole(pail, storageContainerRole).
affordsTask(pail, storageTask).

% --- paint ---
obj(paint).
hasPhysicalQuality(paint, liquid).
hasPhysicalQuality(paint, toxic_Hazardous).
hasRole(paint, toolRole).
affordsTask(paint, maintenanceTask).

% --- painting ---
obj(painting).
hasPhysicalQuality(painting, lightweight).
hasRole(painting, decorationRole).
affordsTask(painting, leisureTask).

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

% --- pair of shoes ---
obj(pair_of_shoes).
hasPhysicalQuality(pair_of_shoes, fragile).
hasPhysicalQuality(pair_of_shoes, lightweight).
hasPhysicalQuality(pair_of_shoes, soft_Deformable).
hasRole(pair_of_shoes, clothingRole).
affordsTask(pair_of_shoes, dressingTask).

% --- pan ---
obj(pan).
hasPhysicalQuality(pan, heated).
hasPhysicalQuality(pan, rigid).
hasRole(pan, cookwareRole).
affordsTask(pan, foodPreparationTask).

% --- pans ---
obj(pans).
hasPhysicalQuality(pans, heated).
hasPhysicalQuality(pans, rigid).
hasRole(pans, cookwareRole).
affordsTask(pans, foodPreparationTask).

% --- pantry ---
obj(pantry).
hasRole(pantry, storageContainerRole).
affordsTask(pantry, storageTask).

% --- pants ---
obj(pants).
hasPhysicalQuality(pants, lightweight).
hasPhysicalQuality(pants, soft_Deformable).
hasRole(pants, clothingRole).
affordsTask(pants, dressingTask).

% --- paper ---
obj(paper).
hasPhysicalQuality(paper, flammable).
hasPhysicalQuality(paper, fragile).
hasPhysicalQuality(paper, granular).
hasRole(paper, consumableRole).
affordsTask(paper, eatingDrinkingTask).
affordsTask(paper, foodPreparationTask).
affordsTask(paper, leisureTask).
affordsTask(paper, workStudyTask).

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
affordsTask(paper_clips, workStudyTask).

% --- paper fastener ---
obj(paper_fastener).
hasPhysicalQuality(paper_fastener, lightweight).
hasPhysicalQuality(paper_fastener, rigid).
hasRole(paper_fastener, toolRole).
affordsTask(paper_fastener, maintenanceTask).

% --- paper page ---
obj(paper_page).
hasPhysicalQuality(paper_page, flammable).
hasPhysicalQuality(paper_page, fragile).
hasPhysicalQuality(paper_page, lightweight).
hasRole(paper_page, documentRole).
affordsTask(paper_page, leisureTask).
affordsTask(paper_page, workStudyTask).

% --- paper punch ---
obj(paper_punch).
hasPhysicalQuality(paper_punch, sharp).
hasRole(paper_punch, toolRole).
affordsTask(paper_punch, maintenanceTask).

% --- paper sign ---
obj(paper_sign).
hasPhysicalQuality(paper_sign, fragile).
hasPhysicalQuality(paper_sign, lightweight).
hasRole(paper_sign, decorationRole).
affordsTask(paper_sign, leisureTask).
affordsTask(paper_sign, workStudyTask).

% --- paper towels ---
obj(paper_towels).
hasPhysicalQuality(paper_towels, lightweight).
hasPhysicalQuality(paper_towels, soft_Deformable).
hasPhysicalQuality(paper_towels, washable).
hasRole(paper_towels, cleaningToolRole).
affordsTask(paper_towels, cleaningTask).

% --- paperclip ---
obj(paperclip).
hasPhysicalQuality(paperclip, lightweight).
hasPhysicalQuality(paperclip, rigid).
hasRole(paperclip, toolRole).
affordsTask(paperclip, workStudyTask).

% --- papers ---
obj(papers).
hasPhysicalQuality(papers, lightweight).
hasPhysicalQuality(papers, washable).
hasRole(papers, documentRole).
affordsTask(papers, cleaningTask).

% --- paperweight ---
obj(paperweight).
hasPhysicalQuality(paperweight, heavy).
hasRole(paperweight, toolRole).

% --- parlor ---
obj(parlor).
hasRole(parlor, furnitureRole).
affordsTask(parlor, leisureTask).

% --- pasta ---
obj(pasta).
hasPhysicalQuality(pasta, perishable).
hasRole(pasta, consumableRole).
affordsTask(pasta, eatingDrinkingTask).
affordsTask(pasta, foodPreparationTask).

% --- patio ---
obj(patio).
hasRole(patio, furnitureRole).
affordsTask(patio, leisureTask).

% --- patio door ---
obj(patio_door).
hasPhysicalQuality(patio_door, heavy).
hasRole(patio_door, furnitureRole).
affordsTask(patio_door, leisureTask).

% --- peanut butter ---
obj(peanut_butter).
hasPhysicalQuality(peanut_butter, liquid).
hasRole(peanut_butter, consumableRole).
affordsTask(peanut_butter, eatingDrinkingTask).

% --- peanuts ---
obj(peanuts).
hasPhysicalQuality(peanuts, granular).
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

% --- pebble ---
obj(pebble).
hasPhysicalQuality(pebble, fragile).
hasPhysicalQuality(pebble, granular).
hasPhysicalQuality(pebble, lightweight).
hasRole(pebble, toolRole).
affordsTask(pebble, maintenanceTask).

% --- pedestal ---
obj(pedestal).
hasPhysicalQuality(pedestal, heavy).
hasRole(pedestal, furnitureRole).
affordsTask(pedestal, storageTask).

% --- pen ---
obj(pen).
hasPhysicalQuality(pen, lightweight).
hasPhysicalQuality(pen, rigid).
hasRole(pen, toolRole).

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
affordsTask(pencil_sharpener, foodPreparationTask).

% --- pennies ---
obj(pennies).
hasPhysicalQuality(pennies, fragile).
hasPhysicalQuality(pennies, lightweight).
hasRole(pennies, consumableRole).
affordsTask(pennies, eatingDrinkingTask).

% --- penny ---
obj(penny).
hasPhysicalQuality(penny, lightweight).
hasRole(penny, consumableRole).
affordsTask(penny, eatingDrinkingTask).

% --- pens and pencils ---
obj(pens_and_pencils).
hasPhysicalQuality(pens_and_pencils, lightweight).
hasRole(pens_and_pencils, toolRole).
affordsTask(pens_and_pencils, workStudyTask).

% --- pepper ---
obj(pepper).
hasPhysicalQuality(pepper, granular).
hasRole(pepper, consumableRole).
affordsTask(pepper, foodPreparationTask).

% --- pepper and salt ---
obj(pepper_and_salt).
hasPhysicalQuality(pepper_and_salt, granular).
hasRole(pepper_and_salt, consumableRole).
affordsTask(pepper_and_salt, foodPreparationTask).

% --- pepsi ---
obj(pepsi).
hasPhysicalQuality(pepsi, liquid).
hasRole(pepsi, consumableRole).
affordsTask(pepsi, eatingDrinkingTask).

% --- pet ---
obj(pet).
hasPhysicalQuality(pet, lightweight).
hasPhysicalQuality(pet, soft_Deformable).
hasRole(pet, entertainmentRole).
affordsTask(pet, leisureTask).

% --- pets ---
obj(pets).
hasPhysicalQuality(pets, lightweight).
hasPhysicalQuality(pets, soft_Deformable).
hasRole(pets, entertainmentRole).
affordsTask(pets, leisureTask).

% --- phillips head screwdriver ---
obj(phillips_head_screwdriver).
hasPhysicalQuality(phillips_head_screwdriver, heavy).
hasPhysicalQuality(phillips_head_screwdriver, rigid).
hasRole(phillips_head_screwdriver, toolRole).
affordsTask(phillips_head_screwdriver, maintenanceTask).

% --- phillips screwdriver ---
obj(phillips_screwdriver).
hasPhysicalQuality(phillips_screwdriver, heavy).
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
affordsTask(phone_book, workStudyTask).

% --- photograph ---
obj(photograph).
hasRole(photograph, documentRole).
affordsTask(photograph, leisureTask).

% --- piano ---
obj(piano).
hasPhysicalQuality(piano, heavy).
hasPhysicalQuality(piano, rigid).
hasRole(piano, musicalInstrumentRole).
affordsTask(piano, leisureTask).
affordsTask(piano, workStudyTask).

% --- pickle ---
obj(pickle).
hasPhysicalQuality(pickle, fragile).
hasPhysicalQuality(pickle, perishable).
hasRole(pickle, consumableRole).
affordsTask(pickle, eatingDrinkingTask).

% --- picnic basket ---
obj(picnic_basket).
hasPhysicalQuality(picnic_basket, lightweight).
hasRole(picnic_basket, storageContainerRole).
affordsTask(picnic_basket, eatingDrinkingTask).
affordsTask(picnic_basket, storageTask).

% --- picture ---
obj(picture).
hasRole(picture, decorationRole).

% --- picture frame ---
obj(picture_frame).
hasPhysicalQuality(picture_frame, lightweight).
hasPhysicalQuality(picture_frame, rigid).
hasRole(picture_frame, decorationRole).

% --- pictures ---
obj(pictures).
hasPhysicalQuality(pictures, lightweight).
hasRole(pictures, decorationRole).
affordsTask(pictures, leisureTask).

% --- piece ---
obj(piece).
hasPhysicalQuality(piece, lightweight).
hasRole(piece, toolRole).
affordsTask(piece, maintenanceTask).

% --- pig ---
obj(pig).
hasPhysicalQuality(pig, fragile).
hasRole(pig, consumableRole).
affordsTask(pig, foodPreparationTask).

% --- pigeons ---
obj(pigeons).
hasRole(pigeons, consumableRole).
affordsTask(pigeons, eatingDrinkingTask).

% --- pill ---
obj(pill).
hasPhysicalQuality(pill, perishable).
hasPhysicalQuality(pill, toxic_Hazardous).
hasRole(pill, consumableRole).
affordsTask(pill, eatingDrinkingTask).

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

% --- pillowcase ---
obj(pillowcase).
hasPhysicalQuality(pillowcase, soft_Deformable).
hasPhysicalQuality(pillowcase, washable).
hasRole(pillowcase, beddingRole).
affordsTask(pillowcase, sleepingTask).

% --- pineapple ---
obj(pineapple).
hasPhysicalQuality(pineapple, fragile).
hasRole(pineapple, consumableRole).
affordsTask(pineapple, eatingDrinkingTask).

% --- pipe ---
obj(pipe).
hasPhysicalQuality(pipe, rigid).
hasRole(pipe, toolRole).
affordsTask(pipe, maintenanceTask).

% --- pizza ---
obj(pizza).
hasPhysicalQuality(pizza, heated).
hasPhysicalQuality(pizza, perishable).
hasRole(pizza, consumableRole).
affordsTask(pizza, eatingDrinkingTask).

% --- place setting ---
obj(place_setting).
hasRole(place_setting, utensilRole).
affordsTask(place_setting, eatingDrinkingTask).

% --- placemat ---
obj(placemat).
hasPhysicalQuality(placemat, lightweight).
hasPhysicalQuality(placemat, soft_Deformable).
hasRole(placemat, utensilRole).
affordsTask(placemat, eatingDrinkingTask).

% --- plant ---
obj(plant).
hasPhysicalQuality(plant, lightweight).
hasPhysicalQuality(plant, perishable).
hasPhysicalQuality(plant, soft_Deformable).
hasRole(plant, consumableRole).
affordsTask(plant, maintenanceTask).

% --- plants ---
obj(plants).
hasPhysicalQuality(plants, lightweight).
hasPhysicalQuality(plants, perishable).
hasPhysicalQuality(plants, soft_Deformable).
hasRole(plants, consumableRole).
affordsTask(plants, eatingDrinkingTask).

% --- plastic ---
obj(plastic).
hasPhysicalQuality(plastic, granular).
hasPhysicalQuality(plastic, rigid).
hasRole(plastic, toolRole).

% --- plate ---
obj(plate).
hasPhysicalQuality(plate, lightweight).
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
hasRole(plumbing, toolRole).
affordsTask(plumbing, maintenanceTask).

% --- pocket ---
obj(pocket).
hasPhysicalQuality(pocket, lightweight).
hasPhysicalQuality(pocket, soft_Deformable).
hasPhysicalQuality(pocket, washable).
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
hasPhysicalQuality(popcorn, granular).
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
hasPhysicalQuality(post_note, lightweight).
hasPhysicalQuality(post_note, washable).
hasRole(post_note, documentRole).
affordsTask(post_note, workStudyTask).

% --- post notes ---
obj(post_notes).
hasPhysicalQuality(post_notes, fragile).
hasPhysicalQuality(post_notes, lightweight).
hasRole(post_notes, consumableRole).
affordsTask(post_notes, leisureTask).

% --- poster ---
obj(poster).
hasPhysicalQuality(poster, lightweight).
hasPhysicalQuality(poster, rigid).
hasRole(poster, decorationRole).
affordsTask(poster, leisureTask).

% --- pot ---
obj(pot).
hasPhysicalQuality(pot, heated).
hasPhysicalQuality(pot, heavy).
hasPhysicalQuality(pot, rigid).
hasRole(pot, cookwareRole).
affordsTask(pot, foodPreparationTask).

% --- potato ---
obj(potato).
hasPhysicalQuality(potato, perishable).
hasRole(potato, consumableRole).
affordsTask(potato, eatingDrinkingTask).

% --- potatoes ---
obj(potatoes).
hasPhysicalQuality(potatoes, perishable).
hasRole(potatoes, consumableRole).
affordsTask(potatoes, foodPreparationTask).

% --- pots ---
obj(pots).
hasPhysicalQuality(pots, rigid).
hasRole(pots, cookwareRole).
affordsTask(pots, foodPreparationTask).

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

% --- present ---
obj(present).
hasPhysicalQuality(present, lightweight).
hasRole(present, consumableRole).
affordsTask(present, eatingDrinkingTask).

% --- printer ---
obj(printer).
hasPhysicalQuality(printer, electronic).
hasPhysicalQuality(printer, heavy).
hasRole(printer, applianceRole).
affordsTask(printer, workStudyTask).

% --- pump ---
obj(pump).
hasPhysicalQuality(pump, heavy).
hasRole(pump, toolRole).
affordsTask(pump, maintenanceTask).

% --- puppy ---
obj(puppy).
hasPhysicalQuality(puppy, lightweight).
hasPhysicalQuality(puppy, soft_Deformable).
affordsTask(puppy, leisureTask).

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
affordsTask(rafter, maintenanceTask).

% --- railing ---
obj(railing).
hasPhysicalQuality(railing, rigid).
hasRole(railing, furnitureRole).

% --- ratchet screwdriver ---
obj(ratchet_screwdriver).
hasPhysicalQuality(ratchet_screwdriver, lightweight).
hasPhysicalQuality(ratchet_screwdriver, rigid).
hasRole(ratchet_screwdriver, toolRole).
affordsTask(ratchet_screwdriver, maintenanceTask).

% --- reading glasses ---
obj(reading_glasses).
hasPhysicalQuality(reading_glasses, lightweight).
hasPhysicalQuality(reading_glasses, rigid).
hasRole(reading_glasses, toolRole).
affordsTask(reading_glasses, workStudyTask).

% --- recipes ---
obj(recipes).
hasPhysicalQuality(recipes, perishable).
hasRole(recipes, consumableRole).
affordsTask(recipes, foodPreparationTask).

% --- recycling bin ---
obj(recycling_bin).
hasPhysicalQuality(recycling_bin, heavy).
hasPhysicalQuality(recycling_bin, rigid).
hasRole(recycling_bin, storageContainerRole).
affordsTask(recycling_bin, wasteDisposalTask).

% --- refill ---
obj(refill).
hasRole(refill, consumableRole).
affordsTask(refill, eatingDrinkingTask).

% --- refrigerator ---
obj(refrigerator).
hasPhysicalQuality(refrigerator, requiresCooling).
hasRole(refrigerator, applianceRole).
affordsTask(refrigerator, storageTask).

% --- refrigerator freezer ---
obj(refrigerator_freezer).
hasPhysicalQuality(refrigerator_freezer, electronic).
hasPhysicalQuality(refrigerator_freezer, heavy).
hasPhysicalQuality(refrigerator_freezer, requiresCooling).
hasRole(refrigerator_freezer, applianceRole).
affordsTask(refrigerator_freezer, foodPreparationTask).
affordsTask(refrigerator_freezer, storageTask).

% --- refuse ---
obj(refuse).
hasRole(refuse, wasteRole).
affordsTask(refuse, wasteDisposalTask).

% --- remote control ---
obj(remote_control).
hasPhysicalQuality(remote_control, electronic).
hasPhysicalQuality(remote_control, lightweight).
hasRole(remote_control, toolRole).
affordsTask(remote_control, leisureTask).

% --- revolving door ---
obj(revolving_door).
hasPhysicalQuality(revolving_door, heavy).
hasRole(revolving_door, furnitureRole).
affordsTask(revolving_door, leisureTask).

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
affordsTask(rice, eatingDrinkingTask).
affordsTask(rice, foodPreparationTask).

% --- ring ---
obj(ring).
hasPhysicalQuality(ring, lightweight).
hasPhysicalQuality(ring, rigid).
hasRole(ring, utensilRole).
affordsTask(ring, eatingDrinkingTask).

% --- roadway ---
obj(roadway).
hasPhysicalQuality(roadway, rigid).

% --- robot ---
obj(robot).
hasPhysicalQuality(robot, electronic).
hasPhysicalQuality(robot, heavy).
hasRole(robot, applianceRole).
affordsTask(robot, maintenanceTask).
affordsTask(robot, workStudyTask).

% --- rock ---
obj(rock).
hasPhysicalQuality(rock, heavy).
hasRole(rock, toolRole).
affordsTask(rock, maintenanceTask).

% --- rocks ---
obj(rocks).
hasPhysicalQuality(rocks, heavy).
hasPhysicalQuality(rocks, rigid).
hasRole(rocks, toolRole).
affordsTask(rocks, maintenanceTask).

% --- rolodex ---
obj(rolodex).
hasPhysicalQuality(rolodex, lightweight).
hasPhysicalQuality(rolodex, rigid).
hasRole(rolodex, storageContainerRole).
affordsTask(rolodex, workStudyTask).

% --- roof ---
obj(roof).
hasPhysicalQuality(roof, rigid).
hasRole(roof, furnitureRole).
affordsTask(roof, leisureTask).

% --- rook ---
obj(rook).
hasPhysicalQuality(rook, rigid).
hasRole(rook, toolRole).
affordsTask(rook, leisureTask).

% --- room study ---
obj(room_study).
hasRole(room_study, furnitureRole).
affordsTask(room_study, workStudyTask).

% --- roots ---
obj(roots).
hasPhysicalQuality(roots, perishable).
hasRole(roots, consumableRole).
affordsTask(roots, eatingDrinkingTask).

% --- rope ---
obj(rope).
hasPhysicalQuality(rope, lightweight).
hasPhysicalQuality(rope, soft_Deformable).
hasRole(rope, toolRole).
affordsTask(rope, leisureTask).
affordsTask(rope, maintenanceTask).

% --- rose ---
obj(rose).
hasPhysicalQuality(rose, perishable).
hasRole(rose, consumableRole).
affordsTask(rose, eatingDrinkingTask).

% --- rotten food ---
obj(rotten_food).
hasPhysicalQuality(rotten_food, perishable).
hasPhysicalQuality(rotten_food, toxic_Hazardous).
hasRole(rotten_food, consumableRole).
affordsTask(rotten_food, eatingDrinkingTask).

% --- round brush ---
obj(round_brush).
hasPhysicalQuality(round_brush, lightweight).
hasPhysicalQuality(round_brush, soft_Deformable).
hasRole(round_brush, cleaningToolRole).
affordsTask(round_brush, cleaningTask).

% --- route ---
obj(route).
hasRole(route, toolRole).
affordsTask(route, leisureTask).

% --- row ---
obj(row).
hasPhysicalQuality(row, lightweight).
hasRole(row, storageContainerRole).
affordsTask(row, storageTask).

% --- rubber ---
obj(rubber).
hasPhysicalQuality(rubber, soft_Deformable).
hasRole(rubber, toolRole).
affordsTask(rubber, maintenanceTask).

% --- rubber stamp ---
obj(rubber_stamp).
hasPhysicalQuality(rubber_stamp, rigid).
hasRole(rubber_stamp, toolRole).

% --- rug ---
obj(rug).
hasPhysicalQuality(rug, fragile).
hasPhysicalQuality(rug, soft_Deformable).
hasRole(rug, furnitureRole).
affordsTask(rug, leisureTask).

% --- ruler ---
obj(ruler).
hasPhysicalQuality(ruler, rigid).
hasRole(ruler, toolRole).
affordsTask(ruler, maintenanceTask).

% --- safe ---
obj(safe).
hasPhysicalQuality(safe, heavy).
hasPhysicalQuality(safe, rigid).
hasRole(safe, safetyEquipmentRole).
affordsTask(safe, maintenanceTask).

% --- safety pins ---
obj(safety_pins).
hasPhysicalQuality(safety_pins, lightweight).
hasPhysicalQuality(safety_pins, sharp).
hasRole(safety_pins, toolRole).
affordsTask(safety_pins, maintenanceTask).

% --- salad ---
obj(salad).
hasPhysicalQuality(salad, perishable).
hasRole(salad, consumableRole).
affordsTask(salad, eatingDrinkingTask).

% --- salad bowl ---
obj(salad_bowl).
hasPhysicalQuality(salad_bowl, lightweight).
hasPhysicalQuality(salad_bowl, rigid).
hasRole(salad_bowl, utensilRole).
affordsTask(salad_bowl, eatingDrinkingTask).
affordsTask(salad_bowl, foodPreparationTask).

% --- salad spinner ---
obj(salad_spinner).
hasPhysicalQuality(salad_spinner, lightweight).
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
hasRole(salt_and_pepper, utensilRole).
affordsTask(salt_and_pepper, foodPreparationTask).

% --- saltshaker ---
obj(saltshaker).
hasPhysicalQuality(saltshaker, granular).
hasRole(saltshaker, utensilRole).
affordsTask(saltshaker, foodPreparationTask).

% --- sauce ---
obj(sauce).
hasPhysicalQuality(sauce, liquid).
hasRole(sauce, consumableRole).
affordsTask(sauce, foodPreparationTask).

% --- saucepan ---
obj(saucepan).
hasPhysicalQuality(saucepan, heated).
hasPhysicalQuality(saucepan, heavy).
hasPhysicalQuality(saucepan, rigid).
hasRole(saucepan, cookwareRole).
affordsTask(saucepan, foodPreparationTask).

% --- saucer ---
obj(saucer).
hasPhysicalQuality(saucer, lightweight).
hasPhysicalQuality(saucer, rigid).
hasRole(saucer, utensilRole).
affordsTask(saucer, eatingDrinkingTask).

% --- saw ---
obj(saw).
hasPhysicalQuality(saw, heavy).
hasPhysicalQuality(saw, rigid).
hasRole(saw, toolRole).
affordsTask(saw, maintenanceTask).

% --- scale ---
obj(scale).
hasPhysicalQuality(scale, rigid).
hasRole(scale, toolRole).

% --- school book ---
obj(school_book).
hasPhysicalQuality(school_book, lightweight).
hasPhysicalQuality(school_book, rigid).
hasPhysicalQuality(school_book, washable).
hasRole(school_book, documentRole).
affordsTask(school_book, workStudyTask).

% --- science fiction books ---
obj(science_fiction_books).
hasRole(science_fiction_books, documentRole).
affordsTask(science_fiction_books, leisureTask).

% --- scissors ---
obj(scissors).
hasPhysicalQuality(scissors, rigid).
hasPhysicalQuality(scissors, sharp).
hasRole(scissors, toolRole).
affordsTask(scissors, foodPreparationTask).

% --- scotch tape ---
obj(scotch_tape).
hasPhysicalQuality(scotch_tape, fragile).
hasPhysicalQuality(scotch_tape, lightweight).
hasRole(scotch_tape, toolRole).
affordsTask(scotch_tape, maintenanceTask).

% --- screw ---
obj(screw).
hasPhysicalQuality(screw, heavy).
hasPhysicalQuality(screw, rigid).
hasRole(screw, toolRole).
affordsTask(screw, maintenanceTask).

% --- screwdriver ---
obj(screwdriver).
hasPhysicalQuality(screwdriver, heavy).
hasPhysicalQuality(screwdriver, rigid).
hasRole(screwdriver, toolRole).
affordsTask(screwdriver, maintenanceTask).

% --- screws ---
obj(screws).
hasPhysicalQuality(screws, rigid).
hasPhysicalQuality(screws, sharp).
hasRole(screws, toolRole).
affordsTask(screws, maintenanceTask).

% --- sculpting gel ---
obj(sculpting_gel).
hasPhysicalQuality(sculpting_gel, liquid).
hasPhysicalQuality(sculpting_gel, toxic_Hazardous).
hasRole(sculpting_gel, cleaningToolRole).
affordsTask(sculpting_gel, hygieneTask).

% --- seat ---
obj(seat).
hasPhysicalQuality(seat, heavy).
hasPhysicalQuality(seat, rigid).
hasRole(seat, furnitureRole).
affordsTask(seat, leisureTask).
affordsTask(seat, sleepingTask).

% --- second floor ---
obj(second_floor).
hasRole(second_floor, furnitureRole).

% --- seeds ---
obj(seeds).
hasPhysicalQuality(seeds, granular).
hasRole(seeds, consumableRole).
affordsTask(seeds, gardeningTask).

% --- self adhesive label ---
obj(self_adhesive_label).
hasPhysicalQuality(self_adhesive_label, lightweight).
hasPhysicalQuality(self_adhesive_label, soft_Deformable).
hasRole(self_adhesive_label, utensilRole).
affordsTask(self_adhesive_label, maintenanceTask).

% --- separate shower ---
obj(separate_shower).
hasPhysicalQuality(separate_shower, lightweight).
hasPhysicalQuality(separate_shower, rigid).
hasRole(separate_shower, furnitureRole).
affordsTask(separate_shower, hygieneTask).

% --- serving trolley ---
obj(serving_trolley).
hasPhysicalQuality(serving_trolley, heavy).
hasPhysicalQuality(serving_trolley, rigid).
hasRole(serving_trolley, furnitureRole).
hasRole(serving_trolley, storageContainerRole).
affordsTask(serving_trolley, eatingDrinkingTask).
affordsTask(serving_trolley, foodPreparationTask).
affordsTask(serving_trolley, storageTask).

% --- shades ---
obj(shades).
hasPhysicalQuality(shades, lightweight).
hasRole(shades, furnitureRole).
affordsTask(shades, leisureTask).

% --- shampoo ---
obj(shampoo).
hasPhysicalQuality(shampoo, liquid).
hasRole(shampoo, cleaningToolRole).
affordsTask(shampoo, hygieneTask).

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

% --- sheet of paper ---
obj(sheet_of_paper).
hasPhysicalQuality(sheet_of_paper, lightweight).
hasPhysicalQuality(sheet_of_paper, rigid).
hasRole(sheet_of_paper, documentRole).

% --- sheets ---
obj(sheets).
hasPhysicalQuality(sheets, lightweight).
hasPhysicalQuality(sheets, soft_Deformable).
hasPhysicalQuality(sheets, washable).
hasRole(sheets, beddingRole).
affordsTask(sheets, sleepingTask).

% --- shelf ---
obj(shelf).
hasPhysicalQuality(shelf, heavy).
hasPhysicalQuality(shelf, rigid).
hasRole(shelf, storageContainerRole).
affordsTask(shelf, storageTask).

% --- shellac ---
obj(shellac).
hasPhysicalQuality(shellac, liquid).
hasRole(shellac, toolRole).
affordsTask(shellac, maintenanceTask).

% --- shelter ---
obj(shelter).
hasRole(shelter, furnitureRole).
affordsTask(shelter, storageTask).

% --- shirt ---
obj(shirt).
hasPhysicalQuality(shirt, lightweight).
hasPhysicalQuality(shirt, soft_Deformable).
hasRole(shirt, clothingRole).
affordsTask(shirt, dressingTask).

% --- shirts ---
obj(shirts).
hasPhysicalQuality(shirts, lightweight).
hasPhysicalQuality(shirts, soft_Deformable).
hasRole(shirts, clothingRole).
affordsTask(shirts, dressingTask).

% --- shoe ---
obj(shoe).
hasPhysicalQuality(shoe, fragile).
hasPhysicalQuality(shoe, lightweight).
hasRole(shoe, clothingRole).
affordsTask(shoe, dressingTask).

% --- shoes ---
obj(shoes).
hasPhysicalQuality(shoes, lightweight).
hasPhysicalQuality(shoes, soft_Deformable).
hasPhysicalQuality(shoes, washable).
hasRole(shoes, clothingRole).
affordsTask(shoes, dressingTask).

% --- shopping bag ---
obj(shopping_bag).
hasPhysicalQuality(shopping_bag, lightweight).
hasPhysicalQuality(shopping_bag, soft_Deformable).
hasRole(shopping_bag, storageContainerRole).
affordsTask(shopping_bag, storageTask).

% --- shopping basket ---
obj(shopping_basket).
hasPhysicalQuality(shopping_basket, lightweight).
hasRole(shopping_basket, storageContainerRole).

% --- shopping list ---
obj(shopping_list).
hasRole(shopping_list, storageContainerRole).

% --- shower ---
obj(shower).
hasPhysicalQuality(shower, heavy).
hasRole(shower, applianceRole).
affordsTask(shower, cleaningTask).
affordsTask(shower, hygieneTask).

% --- shower door ---
obj(shower_door).
hasPhysicalQuality(shower_door, fragile).
hasPhysicalQuality(shower_door, rigid).
hasRole(shower_door, furnitureRole).
affordsTask(shower_door, leisureTask).

% --- shower switch ---
obj(shower_switch).
hasPhysicalQuality(shower_switch, electronic).
hasPhysicalQuality(shower_switch, lightweight).
hasRole(shower_switch, toolRole).
affordsTask(shower_switch, maintenanceTask).

% --- shrimp ---
obj(shrimp).
hasPhysicalQuality(shrimp, perishable).
hasRole(shrimp, consumableRole).
affordsTask(shrimp, eatingDrinkingTask).

% --- side chair ---
obj(side_chair).
hasPhysicalQuality(side_chair, heavy).
hasPhysicalQuality(side_chair, rigid).
hasRole(side_chair, furnitureRole).
affordsTask(side_chair, leisureTask).

% --- sideboard ---
obj(sideboard).
hasPhysicalQuality(sideboard, heavy).
hasPhysicalQuality(sideboard, rigid).
hasRole(sideboard, furnitureRole).
affordsTask(sideboard, storageTask).

% --- silk ---
obj(silk).
hasPhysicalQuality(silk, soft_Deformable).
hasPhysicalQuality(silk, washable).
hasRole(silk, clothingRole).
affordsTask(silk, dressingTask).

% --- silver ---
obj(silver).
hasPhysicalQuality(silver, rigid).
hasRole(silver, toolRole).

% --- silverware ---
obj(silverware).
hasPhysicalQuality(silverware, rigid).
hasRole(silverware, utensilRole).
affordsTask(silverware, eatingDrinkingTask).

% --- sink ---
obj(sink).
hasPhysicalQuality(sink, heavy).
hasRole(sink, utensilRole).
affordsTask(sink, cleaningTask).
affordsTask(sink, eatingDrinkingTask).
affordsTask(sink, hygieneTask).

% --- skin care article ---
obj(skin_care_article).
hasRole(skin_care_article, documentRole).
affordsTask(skin_care_article, leisureTask).

% --- skirt ---
obj(skirt).
hasPhysicalQuality(skirt, lightweight).
hasPhysicalQuality(skirt, soft_Deformable).
hasRole(skirt, clothingRole).
affordsTask(skirt, dressingTask).

% --- skirts ---
obj(skirts).
hasPhysicalQuality(skirts, lightweight).
hasPhysicalQuality(skirts, soft_Deformable).
hasPhysicalQuality(skirts, washable).
hasRole(skirts, clothingRole).
affordsTask(skirts, dressingTask).

% --- skylight ---
obj(skylight).
hasPhysicalQuality(skylight, lightweight).
hasRole(skylight, furnitureRole).
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
hasPhysicalQuality(soap, liquid).
hasPhysicalQuality(soap, washable).
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

% --- socks ---
obj(socks).
hasPhysicalQuality(socks, lightweight).
hasPhysicalQuality(socks, soft_Deformable).
hasRole(socks, clothingRole).
affordsTask(socks, dressingTask).

% --- soda ---
obj(soda).
hasPhysicalQuality(soda, liquid).
hasPhysicalQuality(soda, perishable).
hasRole(soda, consumableRole).
affordsTask(soda, eatingDrinkingTask).

% --- soda pop ---
obj(soda_pop).
hasPhysicalQuality(soda_pop, liquid).
hasRole(soda_pop, consumableRole).
affordsTask(soda_pop, eatingDrinkingTask).

% --- sofa ---
obj(sofa).
hasPhysicalQuality(sofa, heavy).
hasPhysicalQuality(sofa, soft_Deformable).
hasRole(sofa, furnitureRole).
affordsTask(sofa, leisureTask).
affordsTask(sofa, sleepingTask).

% --- sofa bed ---
obj(sofa_bed).
hasPhysicalQuality(sofa_bed, heavy).
hasPhysicalQuality(sofa_bed, soft_Deformable).
hasRole(sofa_bed, furnitureRole).
affordsTask(sofa_bed, sleepingTask).

% --- sofa hide bed ---
obj(sofa_hide_bed).
hasPhysicalQuality(sofa_hide_bed, heavy).
hasPhysicalQuality(sofa_hide_bed, soft_Deformable).
hasRole(sofa_hide_bed, furnitureRole).
affordsTask(sofa_hide_bed, sleepingTask).

% --- sofabed ---
obj(sofabed).
hasPhysicalQuality(sofabed, fragile).
hasPhysicalQuality(sofabed, heavy).
hasPhysicalQuality(sofabed, soft_Deformable).
hasRole(sofabed, furnitureRole).
affordsTask(sofabed, sleepingTask).

% --- spaghetti sauce ---
obj(spaghetti_sauce).
hasPhysicalQuality(spaghetti_sauce, liquid).
hasPhysicalQuality(spaghetti_sauce, perishable).
hasRole(spaghetti_sauce, consumableRole).
affordsTask(spaghetti_sauce, foodPreparationTask).

% --- spare tire ---
obj(spare_tire).
hasPhysicalQuality(spare_tire, heavy).
hasPhysicalQuality(spare_tire, rigid).
hasRole(spare_tire, toolRole).
affordsTask(spare_tire, maintenanceTask).

% --- spatula ---
obj(spatula).
hasPhysicalQuality(spatula, lightweight).
hasPhysicalQuality(spatula, rigid).
hasPhysicalQuality(spatula, sharp).
hasRole(spatula, utensilRole).
affordsTask(spatula, foodPreparationTask).

% --- speaker ---
obj(speaker).
hasPhysicalQuality(speaker, electronic).
hasPhysicalQuality(speaker, heavy).
hasRole(speaker, applianceRole).
affordsTask(speaker, leisureTask).

% --- spices ---
obj(spices).
hasPhysicalQuality(spices, granular).
hasRole(spices, consumableRole).
affordsTask(spices, foodPreparationTask).

% --- spiral binding ---
obj(spiral_binding).
hasPhysicalQuality(spiral_binding, lightweight).
hasRole(spiral_binding, toolRole).
affordsTask(spiral_binding, maintenanceTask).

% --- spoon ---
obj(spoon).
hasPhysicalQuality(spoon, lightweight).
hasPhysicalQuality(spoon, rigid).
hasPhysicalQuality(spoon, sharp).
hasRole(spoon, utensilRole).
affordsTask(spoon, eatingDrinkingTask).
affordsTask(spoon, foodPreparationTask).

% --- spray hose ---
obj(spray_hose).
hasPhysicalQuality(spray_hose, gas_Aerosol).
hasPhysicalQuality(spray_hose, heavy).
hasPhysicalQuality(spray_hose, liquid).
hasRole(spray_hose, toolRole).
affordsTask(spray_hose, cleaningTask).
affordsTask(spray_hose, gardeningTask).

% --- stacking chairs ---
obj(stacking_chairs).
hasPhysicalQuality(stacking_chairs, lightweight).
hasRole(stacking_chairs, furnitureRole).
affordsTask(stacking_chairs, storageTask).

% --- staircase ---
obj(staircase).
hasPhysicalQuality(staircase, heavy).
hasPhysicalQuality(staircase, rigid).
hasRole(staircase, furnitureRole).
affordsTask(staircase, leisureTask).
affordsTask(staircase, maintenanceTask).

% --- stairs ---
obj(stairs).
hasPhysicalQuality(stairs, rigid).
hasRole(stairs, furnitureRole).

% --- stairs down ---
obj(stairs_down).
hasPhysicalQuality(stairs_down, rigid).
hasRole(stairs_down, furnitureRole).

% --- stairs railing ---
obj(stairs_railing).
hasPhysicalQuality(stairs_railing, heavy).
hasPhysicalQuality(stairs_railing, rigid).
hasRole(stairs_railing, furnitureRole).
affordsTask(stairs_railing, maintenanceTask).

% --- stairway ---
obj(stairway).
hasPhysicalQuality(stairway, rigid).
hasRole(stairway, furnitureRole).

% --- stairwell ---
obj(stairwell).
hasRole(stairwell, furnitureRole).
affordsTask(stairwell, leisureTask).
affordsTask(stairwell, maintenanceTask).

% --- stamp pad ---
obj(stamp_pad).
hasPhysicalQuality(stamp_pad, lightweight).
hasRole(stamp_pad, toolRole).
affordsTask(stamp_pad, foodPreparationTask).

% --- stamps ---
obj(stamps).
hasPhysicalQuality(stamps, lightweight).
hasRole(stamps, consumableRole).
affordsTask(stamps, eatingDrinkingTask).

% --- staple remover ---
obj(staple_remover).
hasPhysicalQuality(staple_remover, lightweight).
hasPhysicalQuality(staple_remover, rigid).
hasRole(staple_remover, toolRole).
affordsTask(staple_remover, maintenanceTask).

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
affordsTask(staples, foodPreparationTask).

% --- statue ---
obj(statue).
hasPhysicalQuality(statue, rigid).
hasRole(statue, decorationRole).

% --- steak ---
obj(steak).
hasPhysicalQuality(steak, fragile).
hasPhysicalQuality(steak, heavy).
hasPhysicalQuality(steak, perishable).
hasPhysicalQuality(steak, rigid).
hasRole(steak, consumableRole).
hasRole(steak, utensilRole).
affordsTask(steak, eatingDrinkingTask).
affordsTask(steak, foodPreparationTask).

% --- steaks ---
obj(steaks).
hasPhysicalQuality(steaks, perishable).
hasRole(steaks, consumableRole).
affordsTask(steaks, eatingDrinkingTask).
affordsTask(steaks, foodPreparationTask).

% --- steel ---
obj(steel).
hasPhysicalQuality(steel, heavy).
hasPhysicalQuality(steel, rigid).
hasRole(steel, toolRole).
affordsTask(steel, maintenanceTask).

% --- steel pen ---
obj(steel_pen).
hasPhysicalQuality(steel_pen, fragile).
hasPhysicalQuality(steel_pen, rigid).
hasRole(steel_pen, toolRole).

% --- step chair ---
obj(step_chair).
hasPhysicalQuality(step_chair, heavy).
hasPhysicalQuality(step_chair, rigid).
hasRole(step_chair, furnitureRole).
affordsTask(step_chair, eatingDrinkingTask).
affordsTask(step_chair, storageTask).

% --- stick of butter ---
obj(stick_of_butter).
hasPhysicalQuality(stick_of_butter, perishable).
hasPhysicalQuality(stick_of_butter, rigid).
hasRole(stick_of_butter, consumableRole).
affordsTask(stick_of_butter, foodPreparationTask).

% --- sticking plaster ---
obj(sticking_plaster).
hasPhysicalQuality(sticking_plaster, fragile).
hasPhysicalQuality(sticking_plaster, lightweight).
hasRole(sticking_plaster, safetyEquipmentRole).
affordsTask(sticking_plaster, hygieneTask).

% --- storage ---
obj(storage).
hasPhysicalQuality(storage, heavy).
hasRole(storage, storageContainerRole).
affordsTask(storage, storageTask).

% --- storage furniture ---
obj(storage_furniture).
hasPhysicalQuality(storage_furniture, heavy).
hasPhysicalQuality(storage_furniture, rigid).
hasRole(storage_furniture, furnitureRole).
affordsTask(storage_furniture, storageTask).

% --- storage pan ---
obj(storage_pan).
hasPhysicalQuality(storage_pan, heavy).
hasPhysicalQuality(storage_pan, rigid).
hasRole(storage_pan, cookwareRole).
affordsTask(storage_pan, foodPreparationTask).

% --- store shelf ---
obj(store_shelf).
hasPhysicalQuality(store_shelf, heavy).
hasPhysicalQuality(store_shelf, rigid).
hasRole(store_shelf, storageContainerRole).
affordsTask(store_shelf, storageTask).

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

% --- string ---
obj(string).
hasPhysicalQuality(string, lightweight).
hasRole(string, toolRole).
affordsTask(string, foodPreparationTask).
affordsTask(string, leisureTask).

% --- strings ---
obj(strings).
hasPhysicalQuality(strings, fragile).
hasPhysicalQuality(strings, lightweight).
hasRole(strings, toolRole).
affordsTask(strings, leisureTask).

% --- studio pedestal ---
obj(studio_pedestal).
hasPhysicalQuality(studio_pedestal, heavy).
hasPhysicalQuality(studio_pedestal, rigid).
hasRole(studio_pedestal, furnitureRole).
affordsTask(studio_pedestal, storageTask).

% --- study ---
obj(study).
hasRole(study, furnitureRole).
affordsTask(study, workStudyTask).

% --- stuffed animal ---
obj(stuffed_animal).
hasPhysicalQuality(stuffed_animal, lightweight).
hasPhysicalQuality(stuffed_animal, soft_Deformable).
hasRole(stuffed_animal, entertainmentRole).
affordsTask(stuffed_animal, leisureTask).

% --- stylus ---
obj(stylus).
hasPhysicalQuality(stylus, lightweight).
hasPhysicalQuality(stylus, rigid).
hasRole(stylus, toolRole).

% --- sugar ---
obj(sugar).
hasPhysicalQuality(sugar, granular).
hasRole(sugar, consumableRole).
affordsTask(sugar, foodPreparationTask).

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
hasRole(suntan_lotion, cleaningToolRole).
affordsTask(suntan_lotion, hygieneTask).

% --- sushi ---
obj(sushi).
hasPhysicalQuality(sushi, perishable).
hasRole(sushi, consumableRole).
affordsTask(sushi, eatingDrinkingTask).

% --- sweat ---
obj(sweat).
hasPhysicalQuality(sweat, liquid).
affordsTask(sweat, hygieneTask).

% --- sweater ---
obj(sweater).
hasPhysicalQuality(sweater, soft_Deformable).
hasPhysicalQuality(sweater, washable).
hasRole(sweater, clothingRole).
affordsTask(sweater, dressingTask).

% --- swiss cheese ---
obj(swiss_cheese).
hasPhysicalQuality(swiss_cheese, perishable).
hasRole(swiss_cheese, consumableRole).
affordsTask(swiss_cheese, eatingDrinkingTask).

% --- switches ---
obj(switches).
hasPhysicalQuality(switches, electronic).
hasPhysicalQuality(switches, lightweight).
hasRole(switches, toolRole).
affordsTask(switches, workStudyTask).

% --- t shirt ---
obj(t_shirt).
hasPhysicalQuality(t_shirt, lightweight).
hasPhysicalQuality(t_shirt, soft_Deformable).
hasPhysicalQuality(t_shirt, washable).
hasRole(t_shirt, clothingRole).
affordsTask(t_shirt, dressingTask).

% --- tabby cat ---
obj(tabby_cat).
hasPhysicalQuality(tabby_cat, fragile).
hasPhysicalQuality(tabby_cat, soft_Deformable).
affordsTask(tabby_cat, leisureTask).

% --- table ---
obj(table).
hasPhysicalQuality(table, rigid).
hasRole(table, furnitureRole).
affordsTask(table, eatingDrinkingTask).
affordsTask(table, foodPreparationTask).
affordsTask(table, leisureTask).
affordsTask(table, workStudyTask).

% --- table cloth ---
obj(table_cloth).
hasPhysicalQuality(table_cloth, lightweight).
hasPhysicalQuality(table_cloth, soft_Deformable).
hasRole(table_cloth, beddingRole).
affordsTask(table_cloth, leisureTask).

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
hasPhysicalQuality(tablespoon, lightweight).
hasPhysicalQuality(tablespoon, rigid).
hasRole(tablespoon, utensilRole).
affordsTask(tablespoon, eatingDrinkingTask).
affordsTask(tablespoon, foodPreparationTask).

% --- tack ---
obj(tack).
hasPhysicalQuality(tack, rigid).
hasPhysicalQuality(tack, sharp).
hasRole(tack, utensilRole).
affordsTask(tack, foodPreparationTask).

% --- tanning lotion ---
obj(tanning_lotion).
hasPhysicalQuality(tanning_lotion, liquid).
hasRole(tanning_lotion, consumableRole).
affordsTask(tanning_lotion, hygieneTask).

% --- tap ---
obj(tap).
hasPhysicalQuality(tap, lightweight).
hasPhysicalQuality(tap, soft_Deformable).
hasRole(tap, toolRole).
affordsTask(tap, hygieneTask).
affordsTask(tap, leisureTask).

% --- tape ---
obj(tape).
hasRole(tape, toolRole).
affordsTask(tape, maintenanceTask).

% --- tape dispenser ---
obj(tape_dispenser).
hasPhysicalQuality(tape_dispenser, lightweight).
hasRole(tape_dispenser, toolRole).
affordsTask(tape_dispenser, maintenanceTask).

% --- tape measure ---
obj(tape_measure).
hasPhysicalQuality(tape_measure, lightweight).
hasPhysicalQuality(tape_measure, rigid).
hasRole(tape_measure, toolRole).
affordsTask(tape_measure, maintenanceTask).

% --- tapestry ---
obj(tapestry).
hasPhysicalQuality(tapestry, lightweight).
hasPhysicalQuality(tapestry, soft_Deformable).
hasRole(tapestry, decorationRole).
affordsTask(tapestry, leisureTask).

% --- tar ---
obj(tar).
hasPhysicalQuality(tar, granular).
hasPhysicalQuality(tar, heavy).
hasRole(tar, consumableRole).
affordsTask(tar, wasteDisposalTask).

% --- tea ---
obj(tea).
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
hasPhysicalQuality(teddy_bear, lightweight).
hasPhysicalQuality(teddy_bear, soft_Deformable).
hasRole(teddy_bear, entertainmentRole).
affordsTask(teddy_bear, leisureTask).

% --- telephone ---
obj(telephone).
hasPhysicalQuality(telephone, electronic).
hasPhysicalQuality(telephone, lightweight).
hasRole(telephone, toolRole).

% --- telephone book ---
obj(telephone_book).
hasPhysicalQuality(telephone_book, heavy).
hasPhysicalQuality(telephone_book, rigid).
hasRole(telephone_book, documentRole).
affordsTask(telephone_book, workStudyTask).

% --- telephone directory ---
obj(telephone_directory).
hasRole(telephone_directory, documentRole).
affordsTask(telephone_directory, workStudyTask).

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

% --- terrace ---
obj(terrace).
hasPhysicalQuality(terrace, heavy).
hasPhysicalQuality(terrace, rigid).
hasRole(terrace, furnitureRole).
affordsTask(terrace, leisureTask).
affordsTask(terrace, storageTask).

% --- terrace railing ---
obj(terrace_railing).
hasPhysicalQuality(terrace_railing, heavy).
hasPhysicalQuality(terrace_railing, rigid).
hasRole(terrace_railing, furnitureRole).
affordsTask(terrace_railing, leisureTask).

% --- textile ---
obj(textile).
hasPhysicalQuality(textile, lightweight).
hasPhysicalQuality(textile, soft_Deformable).
hasRole(textile, clothingRole).
affordsTask(textile, dressingTask).

% --- thermostat ---
obj(thermostat).
hasPhysicalQuality(thermostat, electronic).
hasPhysicalQuality(thermostat, heavy).
hasRole(thermostat, applianceRole).
affordsTask(thermostat, maintenanceTask).

% --- thumb tack ---
obj(thumb_tack).
hasPhysicalQuality(thumb_tack, sharp).
hasRole(thumb_tack, toolRole).
affordsTask(thumb_tack, maintenanceTask).

% --- thumbtacks ---
obj(thumbtacks).
hasPhysicalQuality(thumbtacks, fragile).
hasPhysicalQuality(thumbtacks, sharp).
hasRole(thumbtacks, toolRole).
affordsTask(thumbtacks, maintenanceTask).

% --- ties ---
obj(ties).
hasPhysicalQuality(ties, lightweight).
hasPhysicalQuality(ties, soft_Deformable).
hasPhysicalQuality(ties, washable).
hasRole(ties, clothingRole).
affordsTask(ties, dressingTask).

% --- tile ---
obj(tile).
hasPhysicalQuality(tile, rigid).
hasRole(tile, furnitureRole).
affordsTask(tile, maintenanceTask).

% --- tiles ---
obj(tiles).
hasPhysicalQuality(tiles, granular).
hasPhysicalQuality(tiles, rigid).
hasRole(tiles, furnitureRole).
affordsTask(tiles, maintenanceTask).

% --- tin ---
obj(tin).
hasPhysicalQuality(tin, heavy).
hasPhysicalQuality(tin, rigid).
hasRole(tin, storageContainerRole).
affordsTask(tin, storageTask).

% --- tin cans ---
obj(tin_cans).
hasPhysicalQuality(tin_cans, lightweight).
hasPhysicalQuality(tin_cans, rigid).
hasRole(tin_cans, storageContainerRole).
affordsTask(tin_cans, storageTask).

% --- tire iron ---
obj(tire_iron).
hasPhysicalQuality(tire_iron, heavy).
hasPhysicalQuality(tire_iron, rigid).
hasRole(tire_iron, toolRole).
affordsTask(tire_iron, maintenanceTask).

% --- tissue holder ---
obj(tissue_holder).
hasPhysicalQuality(tissue_holder, lightweight).
hasPhysicalQuality(tissue_holder, rigid).
hasRole(tissue_holder, storageContainerRole).
affordsTask(tissue_holder, storageTask).

% --- tofu ---
obj(tofu).
hasPhysicalQuality(tofu, perishable).
hasRole(tofu, consumableRole).
affordsTask(tofu, eatingDrinkingTask).

% --- toilet ---
obj(toilet).
hasPhysicalQuality(toilet, heavy).
hasRole(toilet, furnitureRole).
affordsTask(toilet, wasteDisposalTask).

% --- toilet brush ---
obj(toilet_brush).
hasPhysicalQuality(toilet_brush, fragile).
hasPhysicalQuality(toilet_brush, lightweight).
hasPhysicalQuality(toilet_brush, rigid).
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
hasRole(toilet_seat, furnitureRole).
affordsTask(toilet_seat, wasteDisposalTask).

% --- toilet tank ---
obj(toilet_tank).
hasPhysicalQuality(toilet_tank, heavy).
hasRole(toilet_tank, storageContainerRole).
affordsTask(toilet_tank, wasteDisposalTask).

% --- toilets ---
obj(toilets).
hasPhysicalQuality(toilets, heavy).
hasRole(toilets, furnitureRole).
affordsTask(toilets, wasteDisposalTask).

% --- tomato ---
obj(tomato).
hasPhysicalQuality(tomato, perishable).
hasRole(tomato, consumableRole).
affordsTask(tomato, eatingDrinkingTask).

% --- tomato plants ---
obj(tomato_plants).
hasPhysicalQuality(tomato_plants, granular).
hasPhysicalQuality(tomato_plants, perishable).
hasRole(tomato_plants, consumableRole).
affordsTask(tomato_plants, foodPreparationTask).
affordsTask(tomato_plants, gardeningTask).

% --- tomatoes ---
obj(tomatoes).
hasPhysicalQuality(tomatoes, perishable).
hasRole(tomatoes, consumableRole).
affordsTask(tomatoes, eatingDrinkingTask).

% --- tool ---
obj(tool).
hasPhysicalQuality(tool, heavy).
hasPhysicalQuality(tool, rigid).
hasRole(tool, toolRole).
affordsTask(tool, maintenanceTask).

% --- toolbox ---
obj(toolbox).
hasPhysicalQuality(toolbox, heavy).
hasPhysicalQuality(toolbox, rigid).
hasRole(toolbox, toolRole).
affordsTask(toolbox, maintenanceTask).

% --- tools ---
obj(tools).
hasPhysicalQuality(tools, heavy).
hasPhysicalQuality(tools, rigid).
hasRole(tools, toolRole).
affordsTask(tools, maintenanceTask).

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
affordsTask(toothbrush_head, hygieneTask).

% --- toothpaste ---
obj(toothpaste).
hasPhysicalQuality(toothpaste, liquid).
hasPhysicalQuality(toothpaste, toxic_Hazardous).
hasRole(toothpaste, cleaningToolRole).
affordsTask(toothpaste, hygieneTask).

% --- toothpick ---
obj(toothpick).
hasPhysicalQuality(toothpick, rigid).
hasPhysicalQuality(toothpick, sharp).
hasRole(toothpick, utensilRole).
affordsTask(toothpick, eatingDrinkingTask).
affordsTask(toothpick, foodPreparationTask).

% --- torch ---
obj(torch).
hasPhysicalQuality(torch, electronic).
hasPhysicalQuality(torch, lightweight).
hasRole(torch, lightingRole).
affordsTask(torch, leisureTask).

% --- tote bag ---
obj(tote_bag).
hasPhysicalQuality(tote_bag, lightweight).
hasPhysicalQuality(tote_bag, soft_Deformable).
hasRole(tote_bag, storageContainerRole).
affordsTask(tote_bag, storageTask).

% --- towel ---
obj(towel).
hasPhysicalQuality(towel, soft_Deformable).
hasPhysicalQuality(towel, washable).
hasRole(towel, cleaningToolRole).
affordsTask(towel, cleaningTask).

% --- towel bar ---
obj(towel_bar).
hasPhysicalQuality(towel_bar, heavy).
hasPhysicalQuality(towel_bar, rigid).
hasRole(towel_bar, storageContainerRole).
affordsTask(towel_bar, storageTask).

% --- towel rack ---
obj(towel_rack).
hasPhysicalQuality(towel_rack, heavy).
hasPhysicalQuality(towel_rack, rigid).
hasRole(towel_rack, storageContainerRole).
affordsTask(towel_rack, storageTask).

% --- toy ---
obj(toy).
hasPhysicalQuality(toy, lightweight).
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
hasPhysicalQuality(trash_container, heavy).
hasRole(trash_container, storageContainerRole).
affordsTask(trash_container, wasteDisposalTask).

% --- trunk ---
obj(trunk).
hasPhysicalQuality(trunk, heavy).
hasRole(trunk, storageContainerRole).
affordsTask(trunk, storageTask).

% --- tub ---
obj(tub).
hasPhysicalQuality(tub, heavy).
hasRole(tub, storageContainerRole).
affordsTask(tub, eatingDrinkingTask).
affordsTask(tub, hygieneTask).
affordsTask(tub, leisureTask).

% --- tuna ---
obj(tuna).
hasPhysicalQuality(tuna, perishable).
hasRole(tuna, consumableRole).
affordsTask(tuna, eatingDrinkingTask).

% --- tuning fork ---
obj(tuning_fork).
hasPhysicalQuality(tuning_fork, rigid).
hasPhysicalQuality(tuning_fork, sharp).
hasRole(tuning_fork, toolRole).
affordsTask(tuning_fork, foodPreparationTask).

% --- turkey ---
obj(turkey).
hasPhysicalQuality(turkey, perishable).
hasRole(turkey, consumableRole).
affordsTask(turkey, eatingDrinkingTask).

% --- turtle ---
obj(turtle).
hasPhysicalQuality(turtle, fragile).
hasPhysicalQuality(turtle, rigid).
affordsTask(turtle, leisureTask).

% --- tv ---
obj(tv).
hasPhysicalQuality(tv, electronic).
hasPhysicalQuality(tv, heavy).
hasRole(tv, applianceRole).
affordsTask(tv, leisureTask).

% --- tweed ---
obj(tweed).
hasPhysicalQuality(tweed, soft_Deformable).
hasPhysicalQuality(tweed, washable).
hasRole(tweed, clothingRole).
affordsTask(tweed, dressingTask).

% --- typewriter ---
obj(typewriter).
hasPhysicalQuality(typewriter, heavy).
hasRole(typewriter, toolRole).

% --- umbrella ---
obj(umbrella).
hasPhysicalQuality(umbrella, lightweight).
hasRole(umbrella, toolRole).
affordsTask(umbrella, leisureTask).

% --- underwear ---
obj(underwear).
hasPhysicalQuality(underwear, lightweight).
hasPhysicalQuality(underwear, soft_Deformable).
hasRole(underwear, clothingRole).
affordsTask(underwear, dressingTask).

% --- upright piano ---
obj(upright_piano).
hasPhysicalQuality(upright_piano, heavy).
hasRole(upright_piano, entertainmentRole).
affordsTask(upright_piano, leisureTask).

% --- utensils ---
obj(utensils).
hasRole(utensils, utensilRole).

% --- utility case ---
obj(utility_case).
hasPhysicalQuality(utility_case, lightweight).
hasPhysicalQuality(utility_case, rigid).
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
hasPhysicalQuality(vanity_case, lightweight).
hasPhysicalQuality(vanity_case, rigid).
hasRole(vanity_case, storageContainerRole).
affordsTask(vanity_case, storageTask).

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
affordsTask(vase, storageTask).

% --- vcr ---
obj(vcr).
hasPhysicalQuality(vcr, electronic).
hasPhysicalQuality(vcr, heavy).
hasRole(vcr, applianceRole).
affordsTask(vcr, leisureTask).

% --- vegemite ---
obj(vegemite).
hasPhysicalQuality(vegemite, perishable).
hasRole(vegemite, consumableRole).
affordsTask(vegemite, eatingDrinkingTask).

% --- vegetable garden ---
obj(vegetable_garden).
hasRole(vegetable_garden, furnitureRole).
affordsTask(vegetable_garden, gardeningTask).

% --- vegetables ---
obj(vegetables).
hasPhysicalQuality(vegetables, perishable).
hasRole(vegetables, consumableRole).
affordsTask(vegetables, eatingDrinkingTask).

% --- velvet ---
obj(velvet).
hasPhysicalQuality(velvet, soft_Deformable).
hasPhysicalQuality(velvet, washable).
hasRole(velvet, clothingRole).
affordsTask(velvet, dressingTask).

% --- vent brush ---
obj(vent_brush).
hasPhysicalQuality(vent_brush, fragile).
hasPhysicalQuality(vent_brush, lightweight).
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
hasPhysicalQuality(vinyl, fragile).
hasRole(vinyl, consumableRole).
affordsTask(vinyl, leisureTask).

% --- violin ---
obj(violin).
hasPhysicalQuality(violin, electronic).
hasPhysicalQuality(violin, rigid).
hasRole(violin, musicalInstrumentRole).
affordsTask(violin, leisureTask).

% --- virus ---
obj(virus).
hasPhysicalQuality(virus, toxic_Hazardous).
affordsTask(virus, maintenanceTask).

% --- waffles ---
obj(waffles).
hasPhysicalQuality(waffles, perishable).
hasRole(waffles, consumableRole).
affordsTask(waffles, eatingDrinkingTask).

% --- wall ---
obj(wall).
hasPhysicalQuality(wall, rigid).
hasRole(wall, furnitureRole).

% --- wallet ---
obj(wallet).
hasPhysicalQuality(wallet, fragile).
hasPhysicalQuality(wallet, lightweight).
hasRole(wallet, storageContainerRole).
affordsTask(wallet, storageTask).

% --- walls ---
obj(walls).
hasPhysicalQuality(walls, rigid).
hasRole(walls, furnitureRole).
affordsTask(walls, storageTask).

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
affordsTask(wash_cloth, cleaningTask).

% --- washcloth ---
obj(washcloth).
hasPhysicalQuality(washcloth, soft_Deformable).
hasPhysicalQuality(washcloth, washable).
hasRole(washcloth, cleaningToolRole).
affordsTask(washcloth, cleaningTask).
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
hasRole(water, consumableRole).
affordsTask(water, cleaningTask).
affordsTask(water, eatingDrinkingTask).
affordsTask(water, hygieneTask).

% --- water fountain ---
obj(water_fountain).
hasPhysicalQuality(water_fountain, heavy).
hasPhysicalQuality(water_fountain, liquid).
hasRole(water_fountain, utensilRole).
affordsTask(water_fountain, eatingDrinkingTask).

% --- water spout ---
obj(water_spout).
hasPhysicalQuality(water_spout, liquid).
hasRole(water_spout, toolRole).
affordsTask(water_spout, eatingDrinkingTask).
affordsTask(water_spout, hygieneTask).
affordsTask(water_spout, maintenanceTask).

% --- wave clip ---
obj(wave_clip).
hasPhysicalQuality(wave_clip, lightweight).
hasRole(wave_clip, toolRole).
affordsTask(wave_clip, leisureTask).

% --- wax ---
obj(wax).
hasPhysicalQuality(wax, fragile).
hasPhysicalQuality(wax, liquid).
hasRole(wax, consumableRole).
affordsTask(wax, maintenanceTask).

% --- waxed dental floss ---
obj(waxed_dental_floss).
hasPhysicalQuality(waxed_dental_floss, fragile).
hasPhysicalQuality(waxed_dental_floss, lightweight).
hasRole(waxed_dental_floss, cleaningToolRole).
affordsTask(waxed_dental_floss, hygieneTask).

% --- weather vane ---
obj(weather_vane).
hasPhysicalQuality(weather_vane, lightweight).
hasPhysicalQuality(weather_vane, rigid).
hasRole(weather_vane, decorationRole).

% --- wedding ring ---
obj(wedding_ring).
hasPhysicalQuality(wedding_ring, fragile).
affordsTask(wedding_ring, leisureTask).

% --- weights ---
obj(weights).
hasPhysicalQuality(weights, heavy).
hasRole(weights, toolRole).
affordsTask(weights, workStudyTask).

% --- wheat ---
obj(wheat).
hasPhysicalQuality(wheat, granular).
hasRole(wheat, consumableRole).
affordsTask(wheat, foodPreparationTask).

% --- wheel ---
obj(wheel).
hasPhysicalQuality(wheel, rigid).
hasRole(wheel, toolRole).
affordsTask(wheel, maintenanceTask).

% --- whisk ---
obj(whisk).
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

% --- wind instrument ---
obj(wind_instrument).
hasPhysicalQuality(wind_instrument, lightweight).
hasPhysicalQuality(wind_instrument, rigid).
hasRole(wind_instrument, musicalInstrumentRole).
affordsTask(wind_instrument, leisureTask).

% --- window ---
obj(window).
hasPhysicalQuality(window, rigid).
hasRole(window, furnitureRole).
affordsTask(window, leisureTask).

% --- window curtain ---
obj(window_curtain).
hasPhysicalQuality(window_curtain, lightweight).
hasPhysicalQuality(window_curtain, soft_Deformable).
hasRole(window_curtain, decorationRole).
affordsTask(window_curtain, leisureTask).

% --- window tab ---
obj(window_tab).
hasPhysicalQuality(window_tab, lightweight).
hasRole(window_tab, toolRole).
affordsTask(window_tab, maintenanceTask).

% --- windows ---
obj(windows).
hasPhysicalQuality(windows, rigid).
hasRole(windows, furnitureRole).

% --- wine ---
obj(wine).
hasPhysicalQuality(wine, liquid).
hasPhysicalQuality(wine, perishable).
hasRole(wine, consumableRole).
affordsTask(wine, eatingDrinkingTask).

% --- wine cellar ---
obj(wine_cellar).
hasPhysicalQuality(wine_cellar, requiresCooling).
hasRole(wine_cellar, storageContainerRole).
affordsTask(wine_cellar, storageTask).

% --- wine glass ---
obj(wine_glass).
hasPhysicalQuality(wine_glass, fragile).
hasPhysicalQuality(wine_glass, lightweight).
hasRole(wine_glass, utensilRole).
affordsTask(wine_glass, eatingDrinkingTask).

% --- wood ---
obj(wood).
hasPhysicalQuality(wood, granular).
hasPhysicalQuality(wood, rigid).
hasRole(wood, toolRole).
affordsTask(wood, maintenanceTask).

% --- wooden floor ---
obj(wooden_floor).
hasPhysicalQuality(wooden_floor, rigid).
hasRole(wooden_floor, furnitureRole).
affordsTask(wooden_floor, leisureTask).

% --- wooden rod ---
obj(wooden_rod).
hasPhysicalQuality(wooden_rod, heavy).
hasPhysicalQuality(wooden_rod, rigid).
hasRole(wooden_rod, toolRole).
affordsTask(wooden_rod, maintenanceTask).

% --- wool ---
obj(wool).
hasPhysicalQuality(wool, soft_Deformable).
hasPhysicalQuality(wool, washable).
hasRole(wool, consumableRole).
affordsTask(wool, dressingTask).

% --- woolen fabric ---
obj(woolen_fabric).
hasPhysicalQuality(woolen_fabric, soft_Deformable).
hasPhysicalQuality(woolen_fabric, washable).
hasRole(woolen_fabric, clothingRole).
affordsTask(woolen_fabric, dressingTask).

% --- wrench ---
obj(wrench).
hasPhysicalQuality(wrench, heavy).
hasPhysicalQuality(wrench, rigid).
hasRole(wrench, toolRole).
affordsTask(wrench, maintenanceTask).

% --- writing brush ---
obj(writing_brush).
hasPhysicalQuality(writing_brush, lightweight).
hasPhysicalQuality(writing_brush, rigid).
hasRole(writing_brush, toolRole).
affordsTask(writing_brush, leisureTask).
affordsTask(writing_brush, workStudyTask).

% --- yard ---
obj(yard).
hasPhysicalQuality(yard, fragile).
hasPhysicalQuality(yard, rigid).
hasRole(yard, furnitureRole).
affordsTask(yard, leisureTask).
affordsTask(yard, maintenanceTask).

% --- yogurt ---
obj(yogurt).
hasPhysicalQuality(yogurt, perishable).
hasRole(yogurt, consumableRole).
affordsTask(yogurt, eatingDrinkingTask).

