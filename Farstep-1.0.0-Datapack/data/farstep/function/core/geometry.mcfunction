execute if data entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data.cap unless block ~ ~1 ~ minecraft:barrier run data remove entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data.cap
execute unless data entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data.cap if block ~ ~1 ~ #farstep:air run function farstep:core/add_cap
execute if data entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data.cap run return run function farstep:core/ensure_tall
function farstep:core/ensure_short
