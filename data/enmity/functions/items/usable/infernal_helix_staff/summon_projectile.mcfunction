particle lava ~ ~ ~ 0 0 0 0 5 force
playsound minecraft:block.lava.pop neutral @a[distance=0..] ~ ~ ~ 2 0 0
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.infernal_helix_projectile"]}
scoreboard players set @e[type=bat,tag=enmity.infernal_helix_projectile,tag=enmity.new] enmity.dmg 11
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=bat,tag=enmity.new] remove enmity.new
scoreboard players set @s enmity.cooldown 0