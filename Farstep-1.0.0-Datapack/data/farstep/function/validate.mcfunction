execute if block ~ ~ ~ minecraft:barrier if entity @e[type=minecraft:marker,tag=farstep.core,distance=..0.1] run return run function farstep:core/geometry
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{farstep:1b} run return run function farstep:core/convert
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{yg_waystone:1b} run return run function farstep:core/convert
function farstep:core/remove_cap
function farstep:remove
