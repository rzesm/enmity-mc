tag @s add enmity.this

execute positioned ~ ~-1 ~ as @e[type=#enmity:enemies,tag=!enmity.projectile,tag=!enmity.sentry,tag=!enmity.tamed,distance=..24] run tag @s add enmity.homing_target_potential
execute if score @s enmity.player_targeting matches 1 unless entity @e[type=#enmity:enemies,tag=enmity.homing_target_potential] positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,tag=!enmity.sentry,tag=!enmity.tamed,distance=..24] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target_potential
tag @e[type=!#enmity:not_living,tag=enmity.homing_target_potential,limit=1,sort=nearest] add enmity.homing_target
tag @e[type=!#enmity:not_living,tag=enmity.homing_target_potential] remove enmity.homing_target_potential

execute facing entity @e[tag=enmity.homing_target,limit=1] eyes run tp @s ^ ^ ^0.35
function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/infernal_helix_staff/die_projectile
tag @e[tag=enmity.homing_target] remove enmity.homing_target
playsound block.fire.extinguish neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
particle flame ~ ~ ~ 0 0 0 0 1 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.17 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/infernal_helix_staff/damage_projectile
execute if score @s enmity.age matches 120.. run function enmity:items/usable/infernal_helix_staff/die_projectile
execute if block ~ ~ ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die_projectile
tag @s remove enmity.this