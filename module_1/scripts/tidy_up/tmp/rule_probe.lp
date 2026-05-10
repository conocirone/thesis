obj(binoculars).
hasPhysicalQuality(binoculars, rigid).
hasPhysicalQuality(binoculars, lightweight).
hasPhysicalQuality(binoculars, electronic).
hasRole(binoculars, toolRole).
affordsTask(binoculars, leisureTask).

goesIn(X, music_room) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, lightweight), hasRole(X, toolRole), affordsTask(X, workStudyTask).

covered :- goesIn(binoculars, music_room).
#show covered/0.
