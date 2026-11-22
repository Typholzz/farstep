execute unless loaded ~ ~ ~ run return 0
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{farstep:1b} align xyz positioned ~0.5 ~0.5 ~0.5 run return run function farstep:found
execute if block ~ ~ ~ #farstep:carriers if data block ~ ~ ~ components."minecraft:custom_data"{yg_waystone:1b} align xyz positioned ~0.5 ~0.5 ~0.5 run return run function farstep:found
execute unless block ~ ~ ~ #farstep:air run return 0
scoreboard players remove #ray farstep_tmp 1
execute if score #ray farstep_tmp matches 1.. positioned ^ ^ ^0.2 run function farstep:ray
