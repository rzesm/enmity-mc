function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 1.3 0
playsound entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 1.2 0
playsound entity.illusioner.mirror_move neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.illusioner.mirror_move neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle rain ~ ~1 ~ 0.3 0.3 0.3 0 50 force
scoreboard players add @s enmity.cooldown 12
summon guardian ~ ~1 ~ {DeathTime:19,NoAI:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.guardian_sentry","enmity.sentry","enmity.following"],CustomName:'""',CustomNameVisible:1,DeathLootTable:"minecraft:empty"}
execute if entity @s[predicate=enmity:entity/is_sneaking] run tag @e[type=guardian,tag=enmity.new] remove enmity.following
scoreboard players set @e[type=guardian,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=guardian,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=guardian,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=guardian,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=guardian,tag=enmity.new] remove enmity.new