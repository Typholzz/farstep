data modify storage farstep:network departure.x set from entity @s Pos[0]
data modify storage farstep:network departure.y set from entity @s Pos[1]
data modify storage farstep:network departure.z set from entity @s Pos[2]
execute store success score #moved farstep_tmp run tp @s ~ ~ ~
execute unless score #moved farstep_tmp matches 1 run return 0
function farstep:travel/departure_at with storage farstep:network departure
execute at @s run function farstep:travel/arrival_effect
