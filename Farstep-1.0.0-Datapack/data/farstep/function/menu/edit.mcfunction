execute if score #pressed farstep_tmp matches -2 run return run function farstep:menu/context
$execute unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return run title @s actionbar {"translate":"farstep.owner","fallback":"Only the owner can change access.","color":"yellow"}
execute if score #pressed farstep_tmp matches -10 run return run function farstep:rename/begin with storage farstep:network origin
$execute if score #pressed farstep_tmp matches -4 run data remove storage farstep:network stones.s$(id).label
execute if score #pressed farstep_tmp matches -1 run function farstep:privacy/toggle with storage farstep:network origin
function farstep:menu/context
