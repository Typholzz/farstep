scoreboard players set #dropped farstep_tmp 0
function farstep:core/drop with entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data
execute if score #dropped farstep_tmp matches 1 run function farstep:core/remove_cap
execute if score #dropped farstep_tmp matches 1 run setblock ~ ~ ~ air
execute if score #dropped farstep_tmp matches 1 as @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] run function farstep:remove
