$scoreboard players set #registered_id farstep_tmp $(id)
scoreboard players operation #next farstep_id > #registered_id farstep_tmp
$execute if data storage farstep:network stones.s$(id) run scoreboard players add #count farstep_tmp 1
$execute if data storage farstep:network stones.s$(id){natural:1b} run scoreboard players add #natural_count farstep_tmp 1
