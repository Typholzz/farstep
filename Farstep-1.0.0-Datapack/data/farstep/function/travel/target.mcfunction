$execute if score @s farstep_origin matches $(id) run return run title @s actionbar {"translate":"farstep.already","fallback":"You are already at this waystone.","color":"yellow"}
$execute unless data storage farstep:network stones.s$(id) run return run title @s actionbar {"translate":"farstep.removed","fallback":"The destination waystone has been removed.","color":"yellow"}
$execute if data storage farstep:network stones.s$(id){private:1b} unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return run title @s actionbar {"translate":"farstep.access","fallback":"This waystone is private.","color":"yellow"}
$data modify storage farstep:network trip set from storage farstep:network stones.s$(id)
data modify storage farstep:network trip.player set from entity @s UUID
data modify storage farstep:network trip.owned set value 0b
scoreboard players set #timeout farstep_tmp 60
function farstep:travel/load_chunk with storage farstep:network trip
