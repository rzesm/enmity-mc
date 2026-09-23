particle crimson_spore ~ ~0.5 ~ 0 0 0 0 20 force
execute if score @s enmity.age matches 50 run summon minecraft:marker ~ ~6 ~ {Tags:["enmity.new","enmity.meguwand_ring","enmity.first","enmity.projectile"]}
execute if score @s enmity.age matches 50.. run particle crimson_spore ~ ~0.5 ~ 0.5 0.5 0.5 0 40 force
scoreboard players set @e[type=marker,tag=enmity.new] enmity.age 30
tag @e[type=marker,tag=enmity.new] remove enmity.new

execute if score @s enmity.age matches 100 run summon minecraft:marker ~ ~10 ~ {Tags:["enmity.new","enmity.meguwand_ring","enmity.second","enmity.projectile"]}
execute if score @s enmity.age matches 100.. run particle crimson_spore ~ ~0.5 ~ 1 1 1 0 80 force
scoreboard players set @e[type=marker,tag=enmity.new] enmity.age 60
tag @e[type=marker,tag=enmity.new] remove enmity.new

execute if score @s enmity.age matches 150 run summon minecraft:marker ~ ~15 ~ {Tags:["enmity.new","enmity.meguwand_ring","enmity.third","enmity.projectile"]}
execute if score @s enmity.age matches 150.. run particle crimson_spore ~ ~0.5 ~ 2 2 0 2 160 force
scoreboard players set @e[type=marker,tag=enmity.new] enmity.age 90
tag @e[type=marker,tag=enmity.new] remove enmity.new

execute if score @s enmity.age matches 200.. run function enmity:items/usable/meguwand/explode