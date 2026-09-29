execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[tag=enmity.target,limit=1,sort=nearest] eyes
playsound entity.elder_guardian.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle dust 0.3 0.6 1 1 ~ ~ ~ 0.5 0.5 0.5 0 50 force
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.guardian_sentry_bolt","enmity.projectile","enmity.anchored"]}
scoreboard players set @e[type=marker,tag=enmity.guardian_sentry_bolt,tag=enmity.new,limit=1] enmity.dmg 14
scoreboard players operation @e[type=marker,tag=enmity.new,limit=1] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new,limit=1] enmity.player_id = @s enmity.player_id
execute as @e[type=marker,tag=enmity.new,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=enmity.target,limit=1,sort=nearest] eyes
tag @e remove enmity.target
tag @e[type=marker,limit=1,tag=enmity.new] remove enmity.new