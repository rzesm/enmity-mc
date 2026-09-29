particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}]
kill @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:crimson_planks",Count:4b}}]
kill @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:tnt",Count:64b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Meguwand","italic":false}',Lore:['[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"24000","color":"white"}]','[{"text":"Consumes all mana the caster has.","italic":false,"color":"gray"}]','[{"text":"Calls forth a massive explosion.","italic":false,"color":"gray"}]','[{"text":"Its size depends on your mana.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:130,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["usable","weapons"]}}}