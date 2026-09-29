playsound block.fire.extinguish neutral @a[distance=0..] ~ ~ ~ 0.2 2 0.0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2.0 1.5 0.0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2.0 1.7 0.0
playsound block.glass.break neutral @a[distance=0..] ~ ~ ~ 2.0 1.3 0.0
summon marker ~ ~0.4 ~ {Tags:["enmity.projectile","enmity.crystalline_bolt","enmity.new"]}
summon marker ~ ~0.4 ~ {Tags:["enmity.projectile","enmity.crystalline_bolt","enmity.new"]}
summon marker ~ ~0.4 ~ {Tags:["enmity.projectile","enmity.crystalline_bolt","enmity.new"]}
execute as @e[type=marker,tag=enmity.new] at @s run tp @s ~ ~ ~ facing ~ ~1 ~
execute as @e[type=marker,tag=enmity.new] store result entity @s Rotation[0] float 1 run loot spawn ~ -1000 ~ loot enmity:random_360
execute as @e[type=marker,tag=enmity.new] store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_91
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.math_a -= %const_91 enmity.value
execute as @e[type=marker,tag=enmity.new] store result entity @s Rotation[1] float 1 run scoreboard players get @s enmity.math_a
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 5
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=marker,tag=enmity.new] remove enmity.new
scoreboard players set @s enmity.cooldown 0
data modify entity @s ArmorItems[3].tag.CustomModelData set value 1016