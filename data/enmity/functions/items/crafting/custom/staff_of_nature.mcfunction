particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:acacia_sapling",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:mangrove_propagule",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:emerald",Count:4b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Staff of Nature","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"5","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"50","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"8","color":"white"}]','[{"text":"Quickly casts homing leaves.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:13,Enmity:1,Enmity.ItemGroups:["usable","weapons"]}}}