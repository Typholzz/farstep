summon minecraft:marker ~ ~ ~ {Tags:["farstep.stone"]}
scoreboard players add #next farstep_id 1
scoreboard players add #count farstep_tmp 1
scoreboard players operation @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] farstep_id = #next farstep_id
execute store result storage farstep:network new.id int 1 run scoreboard players get #next farstep_id
execute store result storage farstep:network new.x int 1 run data get entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] Pos[0]
execute store result storage farstep:network new.y int 1 run data get entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] Pos[1]
execute store result storage farstep:network new.z int 1 run data get entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] Pos[2]
data modify storage farstep:network new.owner set from entity @s UUID
function farstep:save with storage farstep:network new
