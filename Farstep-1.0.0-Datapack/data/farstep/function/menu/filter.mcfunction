$execute unless data storage farstep:network stones.s$(id) run return 0
$execute if data storage farstep:network stones.s$(id){private:1b} unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return 0
$data modify storage farstep:network candidate.point set from storage farstep:network stones.s$(id)
$execute unless data storage farstep:network candidate.point.label run data modify storage farstep:network candidate.point.label set value {"translate":"farstep.point","fallback":"Waystone %s","with":[{"text":"$(id)"}]}
function farstep:menu/button with storage farstep:network candidate.point
