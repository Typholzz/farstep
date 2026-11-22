$execute in minecraft:overworld if loaded $(x) $(y) $(z) run return run function farstep:travel/commit with storage farstep:network trip
execute in minecraft:overworld run function farstep:travel/hold_chunk with storage farstep:network trip
schedule function farstep:travel/wake 2t replace
