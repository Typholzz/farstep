scoreboard players operation #pressed farstep_tmp = @s farstep
scoreboard players reset @s farstep
function farstep:menu/source
execute unless score #near farstep_tmp matches 1 run return run title @s actionbar {"translate":"farstep.origin","fallback":"Move back to your departure stone.","color":"yellow"}
scoreboard players set #page farstep_tmp 1
execute if score #pressed farstep_tmp matches -7 run return run function farstep:menu/open
execute if score #pressed farstep_tmp matches -10..-1 run function farstep:menu/edit with storage farstep:network origin
