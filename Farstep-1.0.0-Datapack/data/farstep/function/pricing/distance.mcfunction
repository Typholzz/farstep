$execute store result score #start farstep_tmp run data get storage farstep:network stones.s$(id).x
execute store result score #dx farstep_tmp run data get storage farstep:network trip.x
scoreboard players operation #dx farstep_tmp -= #start farstep_tmp
execute store result storage farstep:network distance.dx int 1 run scoreboard players get #dx farstep_tmp
execute if score #dx farstep_tmp matches ..-1 run scoreboard players operation #dx farstep_tmp *= #-1 farstep_tmp
$execute store result score #start farstep_tmp run data get storage farstep:network stones.s$(id).z
execute store result score #dz farstep_tmp run data get storage farstep:network trip.z
scoreboard players operation #dz farstep_tmp -= #start farstep_tmp
execute store result storage farstep:network distance.dz int 1 run scoreboard players get #dz farstep_tmp
execute if score #dz farstep_tmp matches ..-1 run scoreboard players operation #dz farstep_tmp *= #-1 farstep_tmp
# Use the Manhattan distance as an upper bound, in fare intervals.
scoreboard players set #lo farstep_tmp 0
scoreboard players operation #hi farstep_tmp = #dx farstep_tmp
scoreboard players operation #hi farstep_tmp += #dz farstep_tmp
scoreboard players operation #hi farstep_tmp += #span farstep_cfg
scoreboard players remove #hi farstep_tmp 1
scoreboard players operation #hi farstep_tmp /= #span farstep_cfg
execute if score #lo farstep_tmp < #hi farstep_tmp run function farstep:pricing/bisect
scoreboard players operation #price farstep_tmp = #lo farstep_tmp
