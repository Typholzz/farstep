scoreboard objectives add farstep trigger
scoreboard objectives add farstep_id dummy
scoreboard objectives add farstep_origin dummy
scoreboard objectives add farstep_tmp dummy
scoreboard objectives add farstep_cfg dummy
scoreboard objectives add farstep_wild_x dummy
scoreboard objectives add farstep_wild_z dummy
execute unless data storage farstep:network stones if data storage trailstones:network stones run function farstep:migration/from_trailstones
scoreboard players set #-1 farstep_tmp -1
scoreboard players set #2 farstep_tmp 2
function farstep:pricing/read
execute unless score #protect farstep_cfg matches 0..1 run scoreboard players set #protect farstep_cfg 1
execute unless score #natural farstep_cfg matches 0..1 run scoreboard players set #natural farstep_cfg 1
scoreboard players add #natural_count farstep_tmp 0
scoreboard players set #region_width farstep_tmp 512
scoreboard players set #chunk_width farstep_tmp 16
scoreboard players add #next farstep_id 0
scoreboard players add #count farstep_tmp 0
execute unless data storage farstep:network stones if data storage yg_waystone:network stones run function farstep:migration/copy
execute unless data storage farstep:network stones run data modify storage farstep:network stones set value {}
execute unless data storage farstep:network ids run data modify storage farstep:network ids set value []
execute unless data storage farstep:network regions run data modify storage farstep:network regions set value {}
function farstep:network/recount
execute if data storage farstep:network trip run function farstep:travel/cleanup with storage farstep:network trip
function farstep:rename/load
schedule function farstep:poll 1s replace
schedule function farstep:maintenance 2s replace
schedule function farstep:natural/poll 8s replace
