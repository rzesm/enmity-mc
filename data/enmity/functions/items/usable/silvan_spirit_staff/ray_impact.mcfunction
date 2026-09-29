function enmity:misc/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:misc/projectiles/sentries/remove_sentry
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=0..] ~ ~ ~ 2 1 0
playsound minecraft:block.beacon.power_select neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
scoreboard players add @s enmity.cooldown 20
summon armor_stand ~ ~ ~ {NoGravity:1,Tags:["enmity.projectile","enmity.new","enmity.silvan_spirit","enmity.sentry","enmity.following"],CustomName:'""',CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1002}}],Silent:1,Invisible:1}
execute if entity @s[predicate=enmity:entity/is_sneaking] run tag @e[type=armor_stand,tag=enmity.new] remove enmity.following
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_targeting = @s enmity.player_targeting
tag @e[type=armor_stand,tag=enmity.new] remove enmity.new