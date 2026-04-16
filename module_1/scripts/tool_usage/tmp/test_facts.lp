% Test object: sponge (should absorb)
obj(sponge).
hasPhysicalQuality(sponge, soft_Deformable).
hasPhysicalQuality(sponge, washable).
hasRole(sponge, cleaningToolRole).
affordsTask(sponge, cleaningTask).

% Test object: drill (should pierce, drill, etc)
obj(drill).
hasPhysicalQuality(drill, heavy).
hasPhysicalQuality(drill, rigid).
hasPhysicalQuality(drill, isRotary).
hasPhysicalQuality(drill, hasPointedTip).
hasPhysicalQuality(drill, electronic).
hasRole(drill, toolRole).
affordsTask(drill, maintenanceTask).

% Test object: saw_tool (should saw)
obj(saw_tool).
hasPhysicalQuality(saw_tool, heavy).
hasPhysicalQuality(saw_tool, rigid).
hasPhysicalQuality(saw_tool, hasBlade).
hasPhysicalQuality(saw_tool, hasTeeth).
hasRole(saw_tool, toolRole).
affordsTask(saw_tool, maintenanceTask).
