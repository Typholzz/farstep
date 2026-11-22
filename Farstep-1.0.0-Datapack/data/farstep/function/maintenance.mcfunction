execute in minecraft:overworld as @e[type=minecraft:marker,tag=yg_waystone.stone] at @s run function farstep:core/migrate_marker
execute in minecraft:overworld as @e[type=minecraft:marker,tag=farstep.stone] at @s run function farstep:validate
schedule function farstep:maintenance 2s replace
