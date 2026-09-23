execute if score @s enmity.mana matches ..200 run function enmity:items/usable/meguwand/explode_tiny
execute if score @s enmity.mana matches 201..500 run function enmity:items/usable/meguwand/explode_small
execute if score @s enmity.mana matches 501..800 run function enmity:items/usable/meguwand/explode_medium
execute if score @s enmity.mana matches 1000.. run function enmity:items/usable/meguwand/explode_large