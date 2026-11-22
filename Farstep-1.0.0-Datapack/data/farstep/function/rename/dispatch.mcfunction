scoreboard players operation #pressed farstep_tmp = @s farstep_keys
scoreboard players reset @s farstep_keys
function farstep:menu/source
execute unless score #near farstep_tmp matches 1 run return run function farstep:rename/unavailable
function farstep:rename/action with storage farstep:network origin
