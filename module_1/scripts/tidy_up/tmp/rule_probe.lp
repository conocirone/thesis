obj(column).
hasPhysicalQuality(column, rigid).
hasPhysicalQuality(column, heavy).
hasRole(column, furnitureRole).
affordsTask(column, storageTask).

goesIn(X, music_room) :- obj(X), hasPhysicalQuality(X, electronic), hasPhysicalQuality(X, lightweight), hasRole(X, toolRole), affordsTask(X, workStudyTask).

covered :- goesIn(column, music_room).
#show covered/0.
