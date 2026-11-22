# A distance selector measures the horizontal offset without squaring scoreboard integers.
$execute at @s positioned ~$(dx) ~ ~$(dz) if entity @s[distance=..$(radius)] run return 1
return 0
