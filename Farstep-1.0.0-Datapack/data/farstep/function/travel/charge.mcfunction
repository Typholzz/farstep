function farstep:pricing/balance
$execute if score #available farstep_tmp < #price farstep_tmp if score #level_fare farstep_tmp matches 1 run return run title @s actionbar {"translate":"farstep.need_levels","fallback":"This trip costs %s XP level(s).","color":"yellow","with":[{"text":"$(price)"}]}
$execute if score #available farstep_tmp < #price farstep_tmp run return run title @s actionbar {"translate":"farstep.need_points","fallback":"This trip costs %s XP points.","color":"yellow","with":[{"text":"$(price)"}]}
function farstep:travel/teleport
execute unless score #moved farstep_tmp matches 1 run return 0
$execute if score #level_fare farstep_tmp matches 1 run return run experience add @s -$(price) levels
$experience add @s -$(price) points
