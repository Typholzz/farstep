execute store result storage farstep:network menu.id int 1 run scoreboard players get @s farstep_origin
data modify storage farstep:network menu.viewer set from entity @s UUID
function farstep:menu/prepare with storage farstep:network menu
