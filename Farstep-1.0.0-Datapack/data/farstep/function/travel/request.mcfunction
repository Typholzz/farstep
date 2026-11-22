execute store result storage farstep:network request.id int 1 run scoreboard players get @s farstep
scoreboard players reset @s farstep
execute if data storage farstep:network trip run return run title @s actionbar {"translate":"farstep.busy","fallback":"Another waystone is preparing a trip.","color":"yellow"}
function farstep:travel/origin
execute unless score #near farstep_tmp matches 1 run return run title @s actionbar {"translate":"farstep.origin","fallback":"Move back to your departure stone.","color":"yellow"}
data modify storage farstep:network request.viewer set from entity @s UUID
function farstep:travel/target with storage farstep:network request
