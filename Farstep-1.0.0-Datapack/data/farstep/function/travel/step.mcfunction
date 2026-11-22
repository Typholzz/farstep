$execute unless entity @a[nbt={UUID:$(player)}] run return run function farstep:travel/cleanup with storage farstep:network trip
$execute in minecraft:overworld if loaded $(x) $(y) $(z) as @a[nbt={UUID:$(player)},limit=1] run return run function farstep:travel/commit with storage farstep:network trip
scoreboard players remove #timeout farstep_tmp 2
$execute if score #timeout farstep_tmp matches ..0 as @a[nbt={UUID:$(player)},limit=1] run title @s actionbar {"translate":"farstep.unloaded","fallback":"Could not load this destination.","color":"yellow"}
execute if score #timeout farstep_tmp matches ..0 run return run function farstep:travel/cleanup with storage farstep:network trip
schedule function farstep:travel/wake 2t replace
