function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
execute positioned ~ ~1 ~ run particle flash ^ ^ ^-0.5 0.2 0.2 0.2 0 5 force
playsound minecraft:item.trident.thunder neutral @a[distance=0..] ~ ~ ~ 2 2 0
scoreboard players add @s enmity.cooldown 32
summon armor_stand ^ ^ ^-0.5 {Tags:["enmity.projectile","enmity.new","enmity.dazzling_rod","enmity.sentry"],CustomName:'""',CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16156003}}},{id:"leather_leggings",Count:1,tag:{display:{color:16156003}}},{},{id:"copper_block",Count:1}],Silent:1,Invisible:1,Pose:{Head:[180f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0.01f,0f,0f],Body:[0.01f,0f,0f]}}
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[tag=enmity.new,tag=enmity.dazzling_rod] remove enmity.new