function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound minecraft:block.beacon.power_select neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.beacon.power_select neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.beacon.power_select neutral @a[distance=0..] ~ ~ ~ 2 0 0
scoreboard players add @s enmity.cooldown 8
summon area_effect_cloud ~ ~ ~ {Duration:999999999,Tags:["enmity.projectile","enmity.new","enmity.charm_of_decay","enmity.sentry"],CustomName:'""',CustomNameVisible:1}
scoreboard players set @e[type=area_effect_cloud,tag=enmity.new] enmity.age 59
scoreboard players set @e[type=area_effect_cloud,tag=enmity.new] enmity.dmg 4
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tag @e[tag=enmity.new] remove enmity.new