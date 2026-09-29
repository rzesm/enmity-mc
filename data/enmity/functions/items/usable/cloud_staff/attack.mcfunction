tag @e[tag=enmity.target,limit=1,sort=nearest] add enmity.this
tag @e remove enmity.target
execute store result score @s enmity.math_a run data get entity @e[type=!#enmity:not_living,tag=enmity.this,limit=1] Pos[0] 100
execute store result score @s enmity.math_c run data get entity @e[type=!#enmity:not_living,tag=enmity.this,limit=1] Pos[2] 100
execute store result score @s enmity.math_d run data get entity @e[type=!#enmity:not_living,tag=enmity.this,limit=1] Motion[0] 1000
execute store result score @s enmity.math_f run data get entity @e[type=!#enmity:not_living,tag=enmity.this,limit=1] Motion[2] 1000
scoreboard players operation @s enmity.math_e += %const_80 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=..4] run scoreboard players operation @s enmity.math_d *= %const_1 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=4.0000000000001..7] run scoreboard players operation @s enmity.math_d *= %const_2 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=7.0000000000001..12] run scoreboard players operation @s enmity.math_d *= %const_3 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=12.0000000000001..15] run scoreboard players operation @s enmity.math_d *= %const_4 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=15.0000000000001..] run scoreboard players operation @s enmity.math_d *= %const_5 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=..4] run scoreboard players operation @s enmity.math_f *= %const_1 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=4.0000000000001..7] run scoreboard players operation @s enmity.math_f *= %const_2 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=7.0000000000001..12] run scoreboard players operation @s enmity.math_f *= %const_3 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=12.0000000000001..15] run scoreboard players operation @s enmity.math_f *= %const_4 enmity.value
execute if entity @e[type=!#enmity:not_living,tag=enmity.this,distance=15.0000000000001..] run scoreboard players operation @s enmity.math_f *= %const_5 enmity.value
scoreboard players operation @s enmity.math_a += @s enmity.math_d
scoreboard players operation @s enmity.math_c += @s enmity.math_f
execute as @e[type=!#enmity:not_living,tag=enmity.this] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~-0.5 ~ {Tags:["enmity.direction_anchor"]}
execute store result entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0] double 0.01 run scoreboard players get @s enmity.math_a
execute store result entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2] double 0.01 run scoreboard players get @s enmity.math_c
tag @e[type=!#enmity:not_living,tag=enmity.this] remove enmity.this
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1] feet
kill @e[type=marker,tag=enmity.direction_anchor]
playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.cloud_bolt","enmity.projectile"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.cloud_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.cloud_bolt,tag=enmity.new] enmity.dmg 6
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
execute as @e[type=marker,tag=enmity.new] run function enmity:misc/projectiles/random_spread/5dg
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if entity @s[tag=enmity.red] run tag @e[type=marker,tag=enmity.cloud_bolt,tag=enmity.new] add enmity.red
tag @e[type=marker,tag=enmity.cloud_bolt,tag=enmity.new] remove enmity.new