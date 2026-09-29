execute if entity @s[tag=enmity.red] run tag @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.projectile,distance=..20,limit=1] add enmity.target
execute if entity @s[tag=!enmity.red] run tag @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..20] add enmity.target
execute if entity @s[tag=!enmity.red] run tag @s add enmity.this
execute if entity @s[tag=!enmity.red] run execute if score @s enmity.player_targeting matches 1 unless entity @e[type=#enmity:enemies,tag=enmity.target] as @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..20] unless score @s enmity.player_id = @e[type=area_effect_cloud,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.target
execute if entity @s[tag=!enmity.red] run tag @s remove enmity.this
execute if entity @s[tag=!enmity.red] run execute if entity @e[tag=enmity.target] run function enmity:items/usable/cloud_staff/attack