particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound block.bone_block.break neutral @a[distance=0..] ~ ~ ~ 2 0 0

tag @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..24] add enmity.target
tag @s add enmity.this
execute if score @s enmity.player_targeting matches 1 unless entity @e[type=#enmity:enemies,tag=enmity.target] as @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..24] unless score @s enmity.player_id = @e[type=bat,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.target
tag @s remove enmity.this
execute at @s facing entity @e[type=!#enmity:not_living,tag=enmity.target,limit=1] eyes run function enmity:items/usable/sacred_storm/shoot_beam
tag @e[type=!#enmity:not_living] remove enmity.target

tp @s ~ -1000 ~
kill @s