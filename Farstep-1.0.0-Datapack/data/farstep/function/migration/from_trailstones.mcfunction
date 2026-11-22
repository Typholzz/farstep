execute if data storage trailstones:network stones run data modify storage farstep:network stones set from storage trailstones:network stones
execute if data storage trailstones:network ids run data modify storage farstep:network ids set from storage trailstones:network ids
execute if data storage trailstones:network regions run data modify storage farstep:network regions set from storage trailstones:network regions
execute if data storage trailstones:network trip run data modify storage farstep:network trip set from storage trailstones:network trip
execute if score #mode trailstones_cfg matches -2147483648..2147483647 run scoreboard players operation #mode farstep_cfg = #mode trailstones_cfg
execute if score #amount trailstones_cfg matches -2147483648..2147483647 run scoreboard players operation #amount farstep_cfg = #amount trailstones_cfg
execute if score #span trailstones_cfg matches -2147483648..2147483647 run scoreboard players operation #span farstep_cfg = #span trailstones_cfg
execute if score #protect trailstones_cfg matches -2147483648..2147483647 run scoreboard players operation #protect farstep_cfg = #protect trailstones_cfg
execute if score #natural trailstones_cfg matches -2147483648..2147483647 run scoreboard players operation #natural farstep_cfg = #natural trailstones_cfg
execute if score #next yg_ws_id matches 1.. run scoreboard players operation #next farstep_id = #next yg_ws_id
