function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
scoreboard players add @s enmity.cooldown 16
summon area_effect_cloud ~ ~1.5 ~ {Duration:999999999,Tags:["enmity.projectile","enmity.new","enmity.cloud","enmity.sentry","enmity.following"],CustomName:'""',CustomNameVisible:1}
execute if entity @s[predicate=enmity:entity/is_sneaking] run tag @e[type=area_effect_cloud,tag=enmity.new] remove enmity.following
scoreboard players set @e[type=area_effect_cloud,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
execute if entity @s[name="Kapeluszownik"] run tag @e[type=area_effect_cloud,tag=enmity.new] add enmity.red
tag @e[tag=enmity.new,tag=enmity.cloud] remove enmity.new