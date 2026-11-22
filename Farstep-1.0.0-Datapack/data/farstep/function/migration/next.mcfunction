data modify storage farstep:network migration.id set string storage farstep:network migration.list[0].action.command 25
function farstep:migration/id with storage farstep:network migration
data remove storage farstep:network migration.list[0]
execute if data storage farstep:network migration.list[0] run function farstep:migration/next
