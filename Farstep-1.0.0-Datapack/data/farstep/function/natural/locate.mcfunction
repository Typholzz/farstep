$execute if data storage farstep:network regions.r$(rx)_$(rz) run return 0
$execute if loaded $(x) 0 $(z) positioned $(x).0 ~ $(z).0 positioned over motion_blocking_no_leaves positioned ~0.5 ~ ~0.5 if entity @s[distance=24..48] run function farstep:natural/site
