tag @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..24] add enmity.target
tag @s add enmity.this
execute if score @s enmity.player_targeting matches 1 unless entity @e[type=#enmity:enemies,tag=enmity.target] as @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..24] unless score @s enmity.player_id = @e[type=area_effect_cloud,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.target
tag @s remove enmity.this
execute if entity @e[tag=enmity.target] run function enmity:items/usable/sacred_storm/attack
tag @e remove enmity.target