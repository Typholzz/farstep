execute as @a[scores={farstep=1..}] at @s run function farstep:travel/request
execute as @a[scores={farstep=-10..-1}] at @s run function farstep:menu/action
schedule function farstep:poll 5t replace
