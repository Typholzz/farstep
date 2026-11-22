execute as @e[type=minecraft:marker,tag=farstep.stone,distance=..5.5] at @s if score @s farstep_id = #origin farstep_id run function farstep:check_source
