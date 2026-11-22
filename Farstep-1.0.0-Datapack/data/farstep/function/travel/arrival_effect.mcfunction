particle minecraft:reverse_portal ~ ~0.8 ~ 0.42 0.58 0.42 0.08 30 normal @a[distance=..28]
particle minecraft:end_rod ~ ~1.0 ~ 0.34 0.5 0.34 0.035 14 normal @a[distance=..28]
function farstep:travel/arrival_color with storage farstep:network trip
playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 0.65 1.18
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.65 1.38
