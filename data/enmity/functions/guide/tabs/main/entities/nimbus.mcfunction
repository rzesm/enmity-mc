tellraw @s [{"text":"-=================[","color":"gray"},{"text":"NIMBUS","color":"white","bold":true},{"text":"]=================-","color":"gray"}]

tellraw @s [{"text":"The Nimbus is a dangerous flying hostile mob encountered during the rain or thunderstorm.","color":"gray"}]
tellraw @s [{"text":"\nBehaviour:\n   Floats above the player and uses projectiles to damage them. It is difficult to attack without ranged weapons as it tries to avoid contact with the player. The Nimbus fires whirlwinds at the player pre-Wither. Post-Wither, it shoots lightning beams instead.","color":"gray"}]
tellraw @s [{"text":"\nSpawning:\n   Spawns in the Overworld during the rain or thunderstorm. Needs sky access to spawn.","color":"gray"}]
tellraw @s [{"text":"\nDrops:\n   Cloud (1-2, 40% chance)\n   Lightning Surge (2% chance, post-Wither)","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 12"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]