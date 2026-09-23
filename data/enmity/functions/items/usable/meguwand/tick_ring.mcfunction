execute if entity @s[tag=enmity.first] at @s run tp @s ~ ~ ~ ~8 ~
execute if entity @s[tag=enmity.first] run particle flame ~ ~ ~ 1 0 1 .03 10 force
execute if entity @s[tag=enmity.first] run particle flame ^ ^ ^9 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle flame ^ ^ ^-9 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle flame ^-9 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle flame ^9 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^ ^ ^6 0 0 0 0 1 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^ ^ ^-6 0 0 0 0 1 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^-6 ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=enmity.first] run particle dust 0.8 0 0 3 ^6 ^ ^ 0 0 0 0 1 force

execute if entity @s[tag=enmity.second] at @s run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=enmity.second] run particle flame ~ ~ ~ 3 0 3 .03 30 force
execute if entity @s[tag=enmity.second] run particle flame ^ ^ ^15 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle flame ^ ^ ^-15 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle flame ^-15 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle flame ^15 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^ ^ ^10 0 0 0 0 1 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^ ^ ^-10 0 0 0 0 1 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^-10 ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=enmity.second] run particle dust 0.8 0 0 3 ^10 ^ ^ 0 0 0 0 1 force

execute if entity @s[tag=enmity.third] at @s run tp @s ~ ~ ~ ~15 ~
execute if entity @s[tag=enmity.third] run particle flame ~ ~ ~ 2 0 2 .03 5 force
execute if entity @s[tag=enmity.third] run particle flame ^ ^ ^12 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle flame ^ ^ ^-12 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle flame ^-12 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle flame ^12 ^ ^ 0 1 0 .1 0 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^ ^ ^8 0 0 0 0 1 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^ ^ ^-8 0 0 0 0 1 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^-8 ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=enmity.third] run particle dust 0.8 0 0 3 ^8 ^ ^ 0 0 0 0 1 force


execute if score @s enmity.age matches 200.. run kill @s