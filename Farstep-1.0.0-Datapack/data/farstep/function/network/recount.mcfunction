scoreboard players set #count farstep_tmp 0
scoreboard players set #natural_count farstep_tmp 0
data modify storage farstep:network recount set from storage farstep:network ids
execute if data storage farstep:network recount[0] run function farstep:network/recount_next
data remove storage farstep:network recount
