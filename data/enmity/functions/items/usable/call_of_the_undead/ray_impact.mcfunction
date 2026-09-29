function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:entity.evoker.prepare_summon neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle smoke ~ ~1 ~ 0.3 0.3 0.3 0.05 50 force
scoreboard players add @s enmity.cooldown 24
summon zombie ^ ^ ^-0.5 {Invulnerable:1,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.movement_speed",Base:0}],Tags:["enmity.projectile","enmity.new","enmity.call_of_the_undead","enmity.sentry"],CustomName:'""',CustomNameVisible:1,DeathLootTable:"minecraft:empty"}
effect give @e[type=zombie,tag=enmity.new] weakness 1000000 255 true
scoreboard players set @e[type=zombie,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=zombie,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=zombie,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=zombie,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=zombie,tag=enmity.new] remove enmity.new