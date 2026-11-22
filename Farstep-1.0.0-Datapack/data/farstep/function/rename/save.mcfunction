$execute if data storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id),text:""}] run return run function farstep:rename/show with storage farstep:network origin
$data modify storage farstep:network rename.input set value {text:"$(text)"}
$data remove storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}]
function farstep:menu/save_name with storage farstep:network origin
