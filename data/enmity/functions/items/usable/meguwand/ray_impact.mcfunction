execute as @a[distance=0..64] at @s run playsound minecraft:block.portal.travel neutral @s ~ ~ ~ 0.5 0.5 0
execute as @a[distance=0..129] at @s run playsound minecraft:block.portal.travel neutral @s ~ ~ ~ 0.5 0.5 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.new","enmity.meguwand"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.mana = @s enmity.mana
scoreboard players set @s enmity.mana 0 
scoreboard players add @s enmity.cooldown 24000
particle dust 0.8 0 0 20 ~ ~ ~ 0.025 0.025 0.025 0 5 force
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new