advancement revoke @s only farstep:core/use
data modify storage farstep:network event.player set from entity @s UUID
function farstep:core/target_use with storage farstep:network event
