$execute unless data storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}] run return run function farstep:rename/unavailable
$execute unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return run function farstep:rename/unavailable
$execute if score #pressed farstep_tmp matches -11 run data remove storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}]
execute if score #pressed farstep_tmp matches -11 run return run function farstep:menu/open
$execute if score #pressed farstep_tmp matches -12 run return run function farstep:rename/save with storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}]
$execute if score #pressed farstep_tmp matches -13 unless data storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id),text:""}] run data modify storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].text set string storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].text 0 -1
$execute if score #pressed farstep_tmp matches -14 run data modify storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].layout set value "lower"
$execute if score #pressed farstep_tmp matches -15 run data modify storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].layout set value "upper"
$execute if score #pressed farstep_tmp matches -16 run data modify storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].layout set value "accents"
$execute if score #pressed farstep_tmp matches -17 run data modify storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].layout set value "symbols"
$execute if score #pressed farstep_tmp matches -211..-100 run function farstep:rename/select with storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}]
function farstep:rename/show with storage farstep:network origin
