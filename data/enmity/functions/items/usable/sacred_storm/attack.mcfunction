particle dragon_breath ~ ~0.3 ~ 0.2 0.2 0.2 0.2 20 force
playsound minecraft:item.trident.riptide_3 neutral @a[distance=0..] ~ ~ ~ 1 2 0
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.sacred_storm_projectile"]}
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.dmg_bst = @s enmity.dmg_bst
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=bat,tag=enmity.new] remove enmity.new