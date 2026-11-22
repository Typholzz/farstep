function farstep:network/recount_stone with storage farstep:network recount[0]
data remove storage farstep:network recount[0]
execute if data storage farstep:network recount[0] run function farstep:network/recount_next
