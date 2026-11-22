scoreboard players operation @s farstep_origin = @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] farstep_id
execute if predicate farstep:sneaking at @s run return run function farstep:rename/open
function farstep:menu/open
