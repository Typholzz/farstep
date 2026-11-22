execute at @s run function farstep:travel/origin
execute unless score #near farstep_tmp matches 1 run title @s actionbar {"translate":"farstep.origin","fallback":"Move back to your departure stone.","color":"yellow"}
execute unless score #near farstep_tmp matches 1 run return run function farstep:travel/cleanup with storage farstep:network trip
$execute in minecraft:overworld positioned $(x).0 $(y).0 $(z).0 run function farstep:travel/landing with storage farstep:network trip
function farstep:travel/cleanup with storage farstep:network trip
