$execute unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return run title @s actionbar {"translate":"farstep.owner","fallback":"Only the owner can change access.","color":"yellow"}
$data modify storage farstep:network stones.s$(id).label set from storage farstep:network rename.input
scoreboard players set #page farstep_tmp 1
function farstep:menu/context
