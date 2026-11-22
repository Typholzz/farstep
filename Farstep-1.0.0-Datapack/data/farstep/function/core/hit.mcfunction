advancement revoke @s only farstep:core/hit
data modify storage farstep:network event.player set from entity @s UUID
function farstep:core/target_hit with storage farstep:network event
