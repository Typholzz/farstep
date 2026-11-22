$execute unless data storage farstep:network stones.s$(id) run return 0
$execute unless data storage farstep:network stones.s$(id).owner run data modify storage farstep:network stones.s$(id).owner set value $(viewer)
scoreboard players set #is_owner farstep_tmp 0
$execute if data storage farstep:network stones.s$(id){owner:$(viewer)} run scoreboard players set #is_owner farstep_tmp 1
$execute if data storage farstep:network stones.s$(id){private:1b} unless score #is_owner farstep_tmp matches 1 run return run title @s actionbar {"translate":"farstep.access","fallback":"This waystone is private.","color":"yellow"}
$data modify storage farstep:network menu.label set value {"translate":"farstep.point","fallback":"Waystone %s","color":"gold","with":[{"text":"$(id)"}]}
$execute if data storage farstep:network stones.s$(id).label run data modify storage farstep:network menu.label set from storage farstep:network stones.s$(id).label
data modify storage farstep:network menu.actions set value []
data modify storage farstep:network menu.body set value []
$function farstep:menu/banner_at with storage farstep:network stones.s$(id)
data modify storage farstep:network menu.status set value {"text":"","extra":[{"text":"","font":"farstep:menu_icons","color":"white"},{"text":" "},{"translate":"farstep.global","fallback":"Global","color":"gray"}]}
$execute if data storage farstep:network stones.s$(id){private:1b} run data modify storage farstep:network menu.status set value {"text":"","extra":[{"text":"","font":"farstep:menu_icons","color":"white"},{"text":" "},{"translate":"farstep.private","fallback":"Private","color":"gray"}]}
function farstep:menu/heading with storage farstep:network menu
execute if score #page farstep_tmp matches 1 run return run function farstep:menu/manage with storage farstep:network menu
function farstep:menu/travel with storage farstep:network menu
