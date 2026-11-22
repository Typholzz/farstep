execute positioned ~ ~ ~-1 if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air unless block ~ ~-1 ~ #farstep:unsafe_support run return run function farstep:travel/arrival
execute positioned ~1 ~ ~ if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air unless block ~ ~-1 ~ #farstep:unsafe_support run return run function farstep:travel/arrival
execute positioned ~ ~ ~1 if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air unless block ~ ~-1 ~ #farstep:unsafe_support run return run function farstep:travel/arrival
execute positioned ~-1 ~ ~ if loaded ~ ~ ~ if block ~ ~ ~ #farstep:air if block ~ ~1 ~ #farstep:air unless block ~ ~-1 ~ #farstep:unsafe_support run return run function farstep:travel/arrival
title @s actionbar {"translate":"farstep.blocked","fallback":"There is no safe landing spot beside this waystone.","color":"yellow"}
