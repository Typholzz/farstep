function farstep:network/read_origin
execute if score #origin farstep_id matches 1.. run function farstep:travel/origin_check with storage farstep:network origin
