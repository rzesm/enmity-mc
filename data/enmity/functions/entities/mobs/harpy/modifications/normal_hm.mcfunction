attribute @s generic.armor base set 6
attribute @s generic.attack_damage modifier add 0-0-0-0-0 "" 13 add
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 2.75 multiply_base
attribute @s generic.knockback_resistance base set 0.75
scoreboard players set @s enmity.dmg_rdc 1

data modify entity @s Health set value 1024
scoreboard players set @s enmity.cooldown 0
execute store result score @s enmity.dmg_buffer_2 run data get entity @s Health
tag @s add enmity.modified