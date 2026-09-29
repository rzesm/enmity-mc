playsound minecraft:item.trident.hit neutral @a[distance=0..] ~ ~ ~ 0.6 0.7 0
playsound minecraft:entity.creeper.primed neutral @a[distance=0..] ~ ~ ~ 0.6 2 0
playsound minecraft:block.anvil.land neutral @a[distance=0..] ~ ~ ~ 0.3 2 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.dazzling_rod"]}
scoreboard players operation @e[type=marker,tag=enmity.dazzling_rod] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.dazzling_rod] enmity.dmg 2
scoreboard players operation @e[type=marker,tag=enmity.dazzling_rod] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.dazzling_rod] ~ ~ ~ facing ^ ^ ^1
execute as @e[type=marker,tag=enmity.dazzling_rod] run function enmity:items/usable/dazzling_rod/raycast_beam
kill @e[type=marker,tag=enmity.dazzling_rod]