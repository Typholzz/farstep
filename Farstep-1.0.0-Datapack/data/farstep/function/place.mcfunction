advancement revoke @s only farstep:place
execute unless dimension minecraft:overworld run return run title @s actionbar {"translate":"farstep.overworld","fallback":"Waystones work in the Overworld.","color":"yellow"}
scoreboard players set #show farstep_tmp 0
scoreboard players set #ray farstep_tmp 29
execute anchored eyes positioned ^ ^ ^ anchored feet run function farstep:ray
