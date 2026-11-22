function farstep:menu/source
execute unless score #near farstep_tmp matches 1 run return run title @s actionbar {"translate":"farstep.origin","fallback":"Move back to your departure stone.","color":"yellow"}
function farstep:rename/begin with storage farstep:network origin
