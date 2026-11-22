$execute unless data storage farstep:network stones.s$(id) run return run title @s actionbar {"translate":"farstep.removed","fallback":"The destination waystone has been removed.","color":"yellow"}
$execute if data storage farstep:network stones.s$(id){private:1b} unless data storage farstep:network stones.s$(id){owner:$(player)} run return run title @s actionbar {"translate":"farstep.access","fallback":"This waystone is private.","color":"yellow"}
execute positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=yg_waystone.stone,distance=..0.1,limit=1] run function farstep:core/migrate_marker
data modify storage farstep:network trip.theme set value "slate"
execute positioned ~0.5 ~0.5 ~0.5 if data entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data.variant run data modify storage farstep:network trip.theme set from entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data.variant
execute positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:barrier if entity @e[type=minecraft:marker,tag=farstep.core,distance=..0.1] positioned ~ ~-0.5 ~ run return run function farstep:travel/at_foot
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{farstep:1b} positioned ~0.5 ~ ~0.5 run return run function farstep:travel/at_foot
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{yg_waystone:1b} positioned ~0.5 ~ ~0.5 run return run function farstep:travel/at_foot
title @s actionbar {"translate":"farstep.removed","fallback":"The destination waystone has been removed.","color":"yellow"}
