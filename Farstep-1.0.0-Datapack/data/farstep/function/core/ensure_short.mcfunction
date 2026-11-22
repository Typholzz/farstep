execute if entity @e[type=minecraft:interaction,tag=farstep.touch,distance=..0.55,tag=farstep.compact,limit=1] if entity @e[type=minecraft:item_display,tag=farstep.skin,distance=..0.1,tag=farstep.v3] run return 0
function farstep:core/clear_entities
summon minecraft:interaction ~ ~-0.5 ~ {width:1.04f,height:1.015f,response:1b,Tags:["farstep.touch","farstep.compact"]}
function farstep:core/display_short with entity @e[type=minecraft:marker,tag=farstep.stone,distance=..0.1,limit=1] data
