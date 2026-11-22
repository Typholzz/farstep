$execute unless data storage farstep:network stones.s$(id).owner run data modify storage farstep:network stones.s$(id).owner set value $(viewer)
$execute unless data storage farstep:network stones.s$(id){owner:$(viewer)} run return run title @s actionbar {"translate":"farstep.owner","fallback":"Only the owner can change access.","color":"yellow"}
$data remove storage farstep:network rename.drafts[{viewer:$(viewer)}]
$data modify storage farstep:network rename.drafts append value {viewer:$(viewer),id:$(id),text:"",layout:"upper"}
function farstep:rename/show with storage farstep:network origin
