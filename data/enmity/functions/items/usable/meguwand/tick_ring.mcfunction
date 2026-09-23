execute if entity @s[tag=enmity.first] at @s run tp @s ~ ~ ~ ~8 ~
execute if entity @s[tag=enmity.first] run particle flame ^ ^ ^9 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle flame ^ ^ ^-9 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle flame ^-9 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle flame ^9 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^ ^ ^4.5 0 0 0 0 1 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^ ^ ^-4.5 0 0 0 0 1 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^-4.5 ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^4.5 ^ ^ 0 0 0 0 1 force

execute if entity @s[tag=enmity.second] at @s run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=enmity.second] run particle flame ^ ^ ^15 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle flame ^ ^ ^-15 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle flame ^-15 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle flame ^15 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^ ^ ^10 0 0 0 0 1 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^ ^ ^-10 0 0 0 0 1 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^-10 ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^10 ^ ^ 0 0 0 0 1 force

execute if entity @s[tag=enmity.third] at @s run tp @s ~ ~ ~ ~15 ~
execute if entity @s[tag=enmity.third] run particle flame ^ ^ ^5 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle flame ^ ^ ^-5 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle flame ^-5 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle flame ^5 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^ ^ ^7.5 0 0 0 0 1 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^ ^ ^-7.5 0 0 0 0 1 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^-7.5 ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^7.5 ^ ^ 0 0 0 0 1 force


execute if score @s enmity.age matches 200.. run kill @s