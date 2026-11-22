execute unless entity @s[type=minecraft:player] run return 0
$scoreboard players set #new_mode farstep_tmp $(mode)
$scoreboard players set #new_amount farstep_tmp $(amount)
$scoreboard players set #new_span farstep_tmp $(span)
$scoreboard players set #new_protect farstep_tmp $(protect)
$scoreboard players set #new_natural farstep_tmp $(natural)
execute unless score #new_mode farstep_tmp matches 0..4 run return 0
execute unless score #new_amount farstep_tmp matches 1..1000 run return 0
execute unless score #new_span farstep_tmp matches 1..10000 run return 0
execute unless score #new_protect farstep_tmp matches 0..1 run return 0
execute unless score #new_natural farstep_tmp matches 0..1 run return 0
scoreboard players operation #mode farstep_cfg = #new_mode farstep_tmp
scoreboard players operation #amount farstep_cfg = #new_amount farstep_tmp
scoreboard players operation #span farstep_cfg = #new_span farstep_tmp
scoreboard players operation #protect farstep_cfg = #new_protect farstep_tmp
scoreboard players operation #natural farstep_cfg = #new_natural farstep_tmp
title @s actionbar {"translate":"farstep.config_saved","fallback":"Settings saved.","color":"yellow"}
