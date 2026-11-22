$execute store result score #draft_length farstep_tmp run data get storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].text
execute if score #draft_length farstep_tmp matches 32.. run return 0
scoreboard players set #key_index farstep_tmp -100
scoreboard players operation #key_index farstep_tmp -= #pressed farstep_tmp
execute store result storage farstep:network rename.write.index int 1 run scoreboard players get #key_index farstep_tmp
$data modify storage farstep:network rename.write.player set from storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}]
function farstep:rename/get_key with storage farstep:network rename.write
