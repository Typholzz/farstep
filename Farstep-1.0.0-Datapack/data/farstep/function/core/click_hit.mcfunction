data remove entity @e[type=minecraft:interaction,tag=farstep.touch,distance=..0.1,limit=1] attack
execute positioned ~ ~0.5 ~ if block ~ ~ ~ minecraft:barrier if entity @e[type=minecraft:marker,tag=farstep.core,distance=..0.1] run function farstep:core/at_hit
