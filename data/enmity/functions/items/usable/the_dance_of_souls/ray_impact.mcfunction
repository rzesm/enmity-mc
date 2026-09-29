function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound minecraft:block.beacon.power_select neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.sculk_shrieker.shriek neutral @a[distance=0..] ~ ~ ~ 2 1.25 0
playsound minecraft:block.sculk_shrieker.shriek neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
scoreboard players add @s enmity.cooldown 12
particle white_ash ~ ~1 ~ 0.4 0.4 0.4 0 100 force
summon area_effect_cloud ~ ~1 ~ {Duration:999999999,Tags:["enmity.projectile","enmity.new","enmity.the_dance_of_souls","enmity.sentry","enmity.following"],CustomName:'""',CustomNameVisible:1}
execute if entity @s[predicate=enmity:entity/is_sneaking] run tag @e[type=area_effect_cloud,tag=enmity.new] remove enmity.following
scoreboard players set @e[type=area_effect_cloud,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.dmg_bst = @s enmity.dmg_bst
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[tag=enmity.new] remove enmity.new