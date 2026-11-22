execute unless entity @s[type=minecraft:player] run return 0
function farstep:pricing/read
execute store result storage farstep:network config.amount int 1 run scoreboard players get #amount farstep_cfg
execute store result storage farstep:network config.span int 1 run scoreboard players get #span farstep_cfg
execute store success storage farstep:network config.mode0 byte 1 if score #mode farstep_cfg matches 0
execute store success storage farstep:network config.mode1 byte 1 if score #mode farstep_cfg matches 1
execute store success storage farstep:network config.mode2 byte 1 if score #mode farstep_cfg matches 2
execute store success storage farstep:network config.mode3 byte 1 if score #mode farstep_cfg matches 3
execute store success storage farstep:network config.mode4 byte 1 if score #mode farstep_cfg matches 4
execute store result storage farstep:network config.protect byte 1 run scoreboard players get #protect farstep_cfg
execute store result storage farstep:network config.natural byte 1 run scoreboard players get #natural farstep_cfg
data modify storage farstep:network config.save set value {"label":{"translate":"farstep.save","fallback":"Save settings","color":"green"},"action":{"type":"minecraft:dynamic/run_command","template":"/function farstep:config/apply {mode:$(mode),amount:$(amount),span:$(span),protect:$(protect),natural:$(natural)}"}}
function farstep:config/show with storage farstep:network config
