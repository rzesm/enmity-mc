function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.respawn_anchor.set_spawn neutral @a[distance=0..] ~ ~ ~ 1 0.5 0
playsound minecraft:block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle dust_color_transition 0 1 1 1 0 0 0 ~ ~0.8 ~ 0.5 0.5 0.5 0 50 force
scoreboard players add @s enmity.cooldown 28
summon armor_stand ~ ~ ~ {Small:1,NoGravity:1,Tags:["enmity.projectile","enmity.new","enmity.sculk_verge","enmity.sentry","enmity.following"],CustomName:'""',CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"sculk",Count:1}],Silent:1,Invisible:1}
execute if entity @s[predicate=enmity:entity/is_sneaking] run tag @e[type=armor_stand,tag=enmity.new] remove enmity.following
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.age 59
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 15
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=armor_stand,tag=enmity.new] remove enmity.new