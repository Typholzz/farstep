# A chunk forced by another pack or an operator must stay forced after the trip.
$execute store success score #already_forced farstep_tmp run forceload query $(x) $(z)
execute if score #already_forced farstep_tmp matches 1 run return 0
$execute store success storage farstep:network trip.owned byte 1 run forceload add $(x) $(z)
