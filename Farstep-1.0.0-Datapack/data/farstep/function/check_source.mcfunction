execute if block ~ ~ ~ minecraft:barrier if entity @e[type=minecraft:marker,tag=farstep.core,distance=..0.1] run return run scoreboard players set #near farstep_tmp 1
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{farstep:1b} run scoreboard players set #near farstep_tmp 1
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{yg_waystone:1b} run scoreboard players set #near farstep_tmp 1
