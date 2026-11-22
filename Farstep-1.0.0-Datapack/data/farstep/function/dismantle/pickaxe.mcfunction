execute store result storage farstep:network picked.id int 1 run scoreboard players get @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] farstep_id
data modify storage farstep:network picked.viewer set from entity @s UUID
function farstep:dismantle/pickaxe_validate with storage farstep:network picked
