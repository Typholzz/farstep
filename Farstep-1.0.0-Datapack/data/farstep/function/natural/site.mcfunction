execute unless score #natural farstep_cfg matches 1 run return 0
execute if score #natural_count farstep_tmp matches 48.. run return 0
execute if score #count farstep_tmp matches 64.. run return 0
execute unless block ~ ~-1 ~ #farstep:natural_ground run return 0
execute unless block ~ ~ ~ #farstep:air run return 0
execute unless block ~ ~1 ~ #farstep:air run return 0
execute unless block ~ ~2 ~ #farstep:air run return 0
execute if entity @e[type=minecraft:marker,tag=farstep.stone,distance=..48] run return 0
execute positioned ~1 ~ ~ if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air if block ~ ~-1 ~ #farstep:natural_ground positioned ~-1 ~ ~ run return run function farstep:natural/place
execute positioned ~-1 ~ ~ if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air if block ~ ~-1 ~ #farstep:natural_ground positioned ~1 ~ ~ run return run function farstep:natural/place
execute positioned ~ ~ ~1 if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air if block ~ ~-1 ~ #farstep:natural_ground positioned ~ ~ ~-1 run return run function farstep:natural/place
execute positioned ~ ~ ~-1 if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air if block ~ ~-1 ~ #farstep:natural_ground positioned ~ ~ ~1 run return run function farstep:natural/place
