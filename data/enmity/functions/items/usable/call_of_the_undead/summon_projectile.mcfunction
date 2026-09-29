tag @e[tag=enmity.target,limit=1,sort=nearest] add enmity.this
tag @e remove enmity.target
execute store result score @s enmity.math_a run data get entity @e[type=#enmity:enemies,tag=enmity.this,limit=1] Pos[0] 100
execute store result score @s enmity.math_c run data get entity @e[type=#enmity:enemies,tag=enmity.this,limit=1] Pos[2] 100
execute store result score @s enmity.math_d run data get entity @e[type=#enmity:enemies,tag=enmity.this,limit=1] Motion[0] 1000
execute store result score @s enmity.math_f run data get entity @e[type=#enmity:enemies,tag=enmity.this,limit=1] Motion[2] 1000
scoreboard players operation @s enmity.math_e += %const_80 enmity.value
execute if entity @e[type=#enmity:enemies,tag=enmity.this,distance=..4] run scoreboard players operation @s enmity.math_d *= %const_1 enmity.value
execute if entity @e[type=#enmity:enemies,tag=enmity.this,distance=4.0000000000001..7] run scoreboard players operation @s enmity.math_d *= %const_2 enmity.value
execute if entity @e[type=#enmity:enemies,tag=enmity.this,distance=7.0000000000001..] run scoreboard players operation @s enmity.math_d *= %const_3 enmity.value
execute if entity @e[type=#enmity:enemies,tag=enmity.this,distance=..4] run scoreboard players operation @s enmity.math_f *= %const_1 enmity.value
execute if entity @e[type=#enmity:enemies,tag=enmity.this,distance=4.0000000000001..7] run scoreboard players operation @s enmity.math_f *= %const_2 enmity.value
execute if entity @e[type=#enmity:enemies,tag=enmity.this,distance=7.0000000000001..] run scoreboard players operation @s enmity.math_f *= %const_3 enmity.value
scoreboard players operation @s enmity.math_a += @s enmity.math_d
scoreboard players operation @s enmity.math_c += @s enmity.math_f
execute as @e[type=#enmity:enemies,tag=enmity.this] at @s anchored eyes run summon marker ^ ^ ^ {Tags:["enmity.direction_anchor"]}
execute store result entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0] double 0.01 run scoreboard players get @s enmity.math_a
execute store result entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2] double 0.01 run scoreboard players get @s enmity.math_c
tag @e[type=#enmity:enemies,tag=enmity.this] remove enmity.this
execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1] feet
kill @e[type=marker,tag=enmity.direction_anchor]
function enmity:items/usable/boulder_staff/use
scoreboard players set @s enmity.cooldown 0