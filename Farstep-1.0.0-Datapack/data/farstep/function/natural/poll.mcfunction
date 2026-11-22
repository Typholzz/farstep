schedule function farstep:natural/poll 8s replace
execute unless score #natural farstep_cfg matches 1 run return 0
execute as @a[gamemode=!spectator] at @s if dimension minecraft:overworld if score #natural_count farstep_tmp matches ..47 if score #count farstep_tmp matches ..63 run function farstep:natural/pick
