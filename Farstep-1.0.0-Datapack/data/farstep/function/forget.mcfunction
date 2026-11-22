$execute if data storage farstep:network stones.s$(id){natural:1b} run scoreboard players remove #natural_count farstep_tmp 1
$execute if data storage farstep:network stones.s$(id) run scoreboard players remove #count farstep_tmp 1
$data remove storage farstep:network stones.s$(id)
$data remove storage farstep:network ids[{id:$(id)}]
