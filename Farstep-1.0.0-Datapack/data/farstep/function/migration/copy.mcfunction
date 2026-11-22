data modify storage farstep:network stones set from storage yg_waystone:network stones
data modify storage farstep:network ids set value []
data modify storage farstep:network migration.list set from storage yg_waystone:network buttons
execute if data storage farstep:network migration.list[0] run function farstep:migration/next
execute if data storage yg_waystone:network trip run data modify storage farstep:network trip set from storage yg_waystone:network trip
data remove storage farstep:network migration
