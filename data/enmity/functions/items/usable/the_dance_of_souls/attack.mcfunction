playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
playsound entity.glow_squid.squirt neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.glow_squid.squirt neutral @a[distance=0..] ~ ~ ~ 1 0.5 0
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
scoreboard players set @e[type=bat,tag=enmity.soul2,tag=enmity.new] enmity.dmg 11
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
execute if entity @s[type=ghast] run tag @e[type=bat,tag=enmity.new] add enmity.ghast
execute if entity @s[name="pexdark"] run tag @e[type=bat,tag=enmity.new] add enmity.green
tag @e[type=bat,tag=enmity.new] remove enmity.new