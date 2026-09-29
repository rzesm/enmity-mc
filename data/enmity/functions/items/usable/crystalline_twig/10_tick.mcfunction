particle dust_color_transition 0.5 0 1 1 1 0 0.5 ~ ~0.5 ~ 0.25 0.25 0.25 0.5 8
execute if score @s enmity.cooldown matches 4 run tag @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..30] add enmity.target
execute if score @s enmity.cooldown matches 4 run tag @s add enmity.this
execute if score @s enmity.cooldown matches 4 if score @s enmity.player_targeting matches 1 unless entity @e[type=#enmity:enemies,tag=enmity.target] as @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..30] unless score @s enmity.player_id = @e[type=armor_stand,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.target
execute if score @s enmity.cooldown matches 4 run tag @s remove enmity.this
execute if score @s enmity.cooldown matches 4 if entity @e[tag=enmity.target] run function enmity:items/usable/crystalline_twig/attack
tag @e remove enmity.target