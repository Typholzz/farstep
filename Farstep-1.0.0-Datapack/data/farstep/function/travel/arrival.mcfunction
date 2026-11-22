execute unless block ~ ~ ~ #farstep:air run return run title @s actionbar {"translate":"farstep.blocked","fallback":"There is no safe landing spot beside this waystone.","color":"yellow"}
execute unless block ~ ~1 ~ #farstep:air run return run title @s actionbar {"translate":"farstep.blocked","fallback":"There is no safe landing spot beside this waystone.","color":"yellow"}
function farstep:pricing/quote
execute store result storage farstep:network charge.price int 1 run scoreboard players get #price farstep_tmp
execute if score #price farstep_tmp matches 1.. run return run function farstep:travel/charge with storage farstep:network charge
function farstep:travel/teleport
