scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches ..128 positioned ^ ^ ^0.5 if block ~ ~ ~ #enmity:not_solid run function enmity:items/usable/meguwand/raycast
execute unless block ^ ^ ^0.5 #enmity:not_solid positioned ~ ~0.5 ~ run function enmity:items/usable/meguwand/ray_impact
execute if score @s enmity.raycast matches 128.. run function enmity:items/usable/meguwand/ray_impact
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast 0