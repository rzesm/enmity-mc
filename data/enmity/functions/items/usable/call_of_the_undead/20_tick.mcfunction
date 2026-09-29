execute if score @s enmity.age matches 0 run function enmity:items/usable/call_of_the_undead/die
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
scoreboard players add @s enmity.cooldown 1

execute if score @s enmity.cooldown matches 3.. run tag @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..12] add enmity.target
execute if score @s enmity.cooldown matches 3.. run tag @s add enmity.this
execute if score @s enmity.cooldown matches 3.. if score @s enmity.player_targeting matches 1 unless entity @e[type=#enmity:enemies,tag=enmity.target] as @e[type=!#enmity:not_living,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..12] unless score @s enmity.player_id = @e[type=zombie,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.target
execute if score @s enmity.cooldown matches 3.. run tag @s remove enmity.this
execute if score @s enmity.cooldown matches 3.. if entity @e[tag=enmity.target] run function enmity:items/usable/call_of_the_undead/summon_projectile

execute store result score @s enmity.math_b run data get entity @s DrownedConversionTime
execute if score @s enmity.math_b matches 0.. run data modify entity @s DrownedConversionTime set value 999