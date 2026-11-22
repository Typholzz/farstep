execute as @e[type=minecraft:marker,tag=yg_waystone.stone,distance=..0.1,limit=1] run function farstep:core/migrate_marker
execute unless entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] if score #count farstep_tmp matches 64.. run return run title @s actionbar {"translate":"farstep.full","fallback":"The network is full (64 waystones).","color":"yellow"}
execute unless entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] run function farstep:register
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{farstep:1b} run function farstep:core/convert
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{yg_waystone:1b} run function farstep:core/convert
execute unless score #show farstep_tmp matches 1 run return 0
scoreboard players operation @s farstep_origin = @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] farstep_id
function farstep:menu/open
