$execute unless data storage farstep:network stones.s$(id) run return 0
$execute if score #protect farstep_cfg matches 1 if data storage farstep:network stones.s$(id){private:1b} unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return run title @s actionbar {"translate":"farstep.protected","fallback":"Only the owner can pick up this private waystone.","color":"yellow"}
function farstep:core/dismantle
