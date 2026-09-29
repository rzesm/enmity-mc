function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^-0.5 0.3 0.3 0.3 0 10 force
playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~ 2 1 0
playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound minecraft:block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2 0 0
scoreboard players add @s enmity.cooldown 32
summon armor_stand ^ ^ ^-0.5 {Tags:["enmity.projectile","enmity.new","enmity.crystalline_cluster","enmity.sentry"],CustomName:'""',CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:1016},Count:1}],Silent:1,Invisible:1,Small:1}
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[tag=enmity.new,tag=enmity.crystalline_cluster] remove enmity.new