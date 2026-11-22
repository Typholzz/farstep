data modify storage farstep:network candidate set from storage farstep:network menu.queue[0]
data modify storage farstep:network candidate.viewer set from storage farstep:network menu.viewer
function farstep:menu/filter with storage farstep:network candidate
data remove storage farstep:network menu.queue[0]
execute if data storage farstep:network menu.queue[0] run function farstep:menu/next
