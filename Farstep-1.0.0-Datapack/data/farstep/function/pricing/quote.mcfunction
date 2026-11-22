function farstep:pricing/read
scoreboard players set #price farstep_tmp 0
scoreboard players set #level_fare farstep_tmp 0
execute if score #mode farstep_cfg matches 2 run scoreboard players set #level_fare farstep_tmp 1
execute if score #mode farstep_cfg matches 4 run scoreboard players set #level_fare farstep_tmp 1
execute if score #mode farstep_cfg matches 1..2 run scoreboard players operation #price farstep_tmp = #amount farstep_cfg
execute if score #mode farstep_cfg matches 3..4 run function farstep:pricing/distance with storage farstep:network origin
