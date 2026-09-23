tellraw @s [{"text":"-=============[","color":"gray"},{"text":"CRIMSON VISAGE","color":"white","bold":true},{"text":"]============-","color":"gray"}]

tellraw @s [{"text":"The Crimson Visage is a hostile mob that inhabits the Nether. It shoots very dangerous but quite easily avoided wither skulls.","color":"gray"}]
tellraw @s [{"text":"\nBehaviour:\n   Floats above the player and uses wither skulls to damage them. It is difficult to attack without ranged weapons as it tries to avoid contact with the player. In expert mode it notices players from very far away.","color":"gray"}]
tellraw @s [{"text":"\nSpawning:\n   Spawns in crimson forests.","color":"gray"}]
tellraw @s [{"text":"\nDrops:\n   Wither Skeleton Skull (5% chance)\n   Crimson Glyph (2.5% chance, post-Wither)","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 12"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]