$data modify storage farstep:network rename.screen set from storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}]
function farstep:rename/layout with storage farstep:network rename.screen
scoreboard players set @s farstep_keys 0
scoreboard players enable @s farstep_keys
function farstep:rename/render with storage farstep:network rename.screen
