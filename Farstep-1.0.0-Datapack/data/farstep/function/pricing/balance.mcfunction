execute store result score #xp_level farstep_tmp run experience query @s levels
scoreboard players operation #available farstep_tmp = #xp_level farstep_tmp
execute if score #level_fare farstep_tmp matches 1 run return 0
# Above level 6000, accumulated XP already exceeds the maximum possible fare.
execute if score #xp_level farstep_tmp matches 6001.. run return run scoreboard players set #available farstep_tmp 2147483647
scoreboard players operation #available farstep_tmp *= #xp_level farstep_tmp
execute if score #xp_level farstep_tmp matches ..16 run function farstep:pricing/xp_early
execute if score #xp_level farstep_tmp matches 17..31 run function farstep:pricing/xp_middle
execute if score #xp_level farstep_tmp matches 32.. run function farstep:pricing/xp_high
execute store result score #xp_progress farstep_tmp run experience query @s points
scoreboard players operation #available farstep_tmp += #xp_progress farstep_tmp
