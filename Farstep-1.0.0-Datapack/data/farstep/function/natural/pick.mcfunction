execute store result score #wild_x farstep_tmp run data get entity @s Pos[0]
execute store result score #wild_z farstep_tmp run data get entity @s Pos[2]
scoreboard players operation #chunk_x farstep_tmp = #wild_x farstep_tmp
scoreboard players operation #chunk_x farstep_tmp /= #chunk_width farstep_tmp
scoreboard players operation #chunk_z farstep_tmp = #wild_z farstep_tmp
scoreboard players operation #chunk_z farstep_tmp /= #chunk_width farstep_tmp
execute unless score @s farstep_wild_x matches -2147483648..2147483647 run return run function farstep:natural/track_chunk
execute if score @s farstep_wild_x = #chunk_x farstep_tmp if score @s farstep_wild_z = #chunk_z farstep_tmp run return 0
function farstep:natural/track_chunk
execute store result score #wild_dir farstep_tmp run random value 0..3
execute if score #wild_dir farstep_tmp matches 0 run scoreboard players add #wild_x farstep_tmp 36
execute if score #wild_dir farstep_tmp matches 1 run scoreboard players remove #wild_x farstep_tmp 36
execute if score #wild_dir farstep_tmp matches 2 run scoreboard players add #wild_z farstep_tmp 36
execute if score #wild_dir farstep_tmp matches 3 run scoreboard players remove #wild_z farstep_tmp 36
scoreboard players operation #region_x farstep_tmp = #wild_x farstep_tmp
scoreboard players operation #region_x farstep_tmp /= #region_width farstep_tmp
execute store result storage farstep:network natural.x int 1 run scoreboard players get #wild_x farstep_tmp
execute store result storage farstep:network natural.rx int 1 run scoreboard players get #region_x farstep_tmp
scoreboard players operation #region_z farstep_tmp = #wild_z farstep_tmp
scoreboard players operation #region_z farstep_tmp /= #region_width farstep_tmp
execute store result storage farstep:network natural.z int 1 run scoreboard players get #wild_z farstep_tmp
execute store result storage farstep:network natural.rz int 1 run scoreboard players get #region_z farstep_tmp
function farstep:natural/locate with storage farstep:network natural
