execute if score @s yg_ws_id matches 1.. run scoreboard players operation @s farstep_id = @s yg_ws_id
execute unless score @s farstep_id matches 1.. run return 0
tag @s add farstep.stone
execute if entity @s[tag=trailstones.core] run tag @s add farstep.core
kill @e[type=minecraft:item_display,tag=yg_waystone.skin,distance=..0.1]
execute positioned ~ ~-0.5 ~ run kill @e[type=minecraft:interaction,tag=trailstones.touch,distance=..0.1]
tag @s remove trailstones.core
tag @s remove yg_waystone.stone
