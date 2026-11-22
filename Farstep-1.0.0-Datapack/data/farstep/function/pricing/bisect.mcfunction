scoreboard players operation #mid farstep_tmp = #lo farstep_tmp
scoreboard players operation #mid farstep_tmp += #hi farstep_tmp
scoreboard players operation #mid farstep_tmp /= #2 farstep_tmp
scoreboard players operation #radius farstep_tmp = #mid farstep_tmp
scoreboard players operation #radius farstep_tmp *= #span farstep_cfg
execute store result storage farstep:network distance.radius int 1 run scoreboard players get #radius farstep_tmp
execute store result score #within farstep_tmp run function farstep:pricing/within with storage farstep:network distance
execute if score #within farstep_tmp matches 1 run scoreboard players operation #hi farstep_tmp = #mid farstep_tmp
execute if score #within farstep_tmp matches 0 run scoreboard players operation #lo farstep_tmp = #mid farstep_tmp
execute if score #within farstep_tmp matches 0 run scoreboard players add #lo farstep_tmp 1
execute if score #lo farstep_tmp < #hi farstep_tmp run function farstep:pricing/bisect
