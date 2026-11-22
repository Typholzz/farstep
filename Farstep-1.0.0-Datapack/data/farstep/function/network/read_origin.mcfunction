# Start from an invalid ID. A player who has never opened a stone has no origin score.
scoreboard players set #origin farstep_id 0
scoreboard players set #near farstep_tmp 0
execute unless dimension minecraft:overworld run return 0
execute unless score @s farstep_origin matches 1.. run return 0
scoreboard players operation #origin farstep_id = @s farstep_origin
execute store result storage farstep:network origin.id int 1 run scoreboard players get #origin farstep_id
data modify storage farstep:network origin.viewer set from entity @s UUID
