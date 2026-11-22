function farstep:pricing/read
execute store result storage farstep:network menu.amount int 1 run scoreboard players get #amount farstep_cfg
execute store result storage farstep:network menu.span int 1 run scoreboard players get #span farstep_cfg
function farstep:menu/fare with storage farstep:network menu
data modify storage farstep:network menu.queue set from storage farstep:network ids
$data remove storage farstep:network menu.queue[{id:$(id)}]
execute if data storage farstep:network menu.queue[0] run function farstep:menu/next
execute unless data storage farstep:network menu.actions[0] run data modify storage farstep:network menu.body append value {"type":"minecraft:plain_message","width":286,"contents":{"translate":"farstep.empty","fallback":"No other accessible destination. Place another waystone to start travelling.","color":"gray"}}
data modify storage farstep:network menu.actions append value {"label":{"text":"","extra":[{"text":"","font":"farstep:menu_icons","color":"white"},{"text":" "},{"translate":"farstep.manage","fallback":"Manage stone","color":"gold"}]},"width":140,"action":{"type":"minecraft:run_command","command":"/trigger farstep set -2"}}
function farstep:menu/enable
