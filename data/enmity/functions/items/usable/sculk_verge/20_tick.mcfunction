execute if score @s enmity.age matches 0 run function enmity:items/usable/sculk_verge/die
execute if score @s enmity.age matches 55..60 run data modify entity @s CustomName set value '{"text":"||||||||||","color":"green"}'
execute if score @s enmity.age matches 49..54 run data modify entity @s CustomName set value '[{"text":"|||||||||","color":"green"},{"text":"|","color":"gray"}]'
execute if score @s enmity.age matches 43..48 run data modify entity @s CustomName set value '[{"text":"||||||||","color":"green"},{"text":"||","color":"gray"}]'
execute if score @s enmity.age matches 37..42 run data modify entity @s CustomName set value '[{"text":"|||||||","color":"yellow"},{"text":"|||","color":"gray"}]'
execute if score @s enmity.age matches 31..36 run data modify entity @s CustomName set value '[{"text":"||||||","color":"yellow"},{"text":"||||","color":"gray"}]'
execute if score @s enmity.age matches 25..30 run data modify entity @s CustomName set value '[{"text":"|||||","color":"yellow"},{"text":"|||||","color":"gray"}]'
execute if score @s enmity.age matches 19..24 run data modify entity @s CustomName set value '[{"text":"||||","color":"yellow"},{"text":"||||||","color":"gray"}]'
execute if score @s enmity.age matches 13..18 run data modify entity @s CustomName set value '[{"text":"|||","color":"red"},{"text":"|||||||","color":"gray"}]'
execute if score @s enmity.age matches 7..12 run data modify entity @s CustomName set value '[{"text":"||","color":"red"},{"text":"||||||||","color":"gray"}]'
execute if score @s enmity.age matches 0..6 run data modify entity @s CustomName set value '[{"text":"|","color":"red"},{"text":"|||||||||","color":"gray"}]'
execute unless score @s enmity.cooldown matches 5.. run scoreboard players add @s enmity.cooldown 1

execute if score @s enmity.cooldown matches 5 run tag @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..6] add enmity.target
execute if score @s enmity.cooldown matches 5 run tag @s add enmity.this
execute if score @s enmity.cooldown matches 5 run execute if score @s enmity.player_targeting matches 1 as @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..6] unless score @s enmity.player_id = @e[type=armor_stand,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.target
execute if score @s enmity.cooldown matches 5 run tag @s remove enmity.this
execute if score @s enmity.cooldown matches 5 run execute if entity @e[tag=enmity.target] run function enmity:items/usable/sculk_verge/attack

execute if score @s[tag=!enmity.ready] enmity.cooldown matches 5 run particle soul_fire_flame ~ ~0.8 ~ 0.2 0.2 0.2 0.02 25 force
execute if score @s[tag=!enmity.ready] enmity.cooldown matches 5 run playsound block.sculk_catalyst.break neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
execute if score @s[tag=!enmity.ready] enmity.cooldown matches 5 run tag @s add enmity.ready
