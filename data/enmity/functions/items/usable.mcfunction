execute if entity @s[scores={enmity.use=1,enmity.mana=50..}] at @s run function enmity:items/usable/silvan_wand/use
execute if entity @s[scores={enmity.use=7,enmity.mana=100..}] unless predicate enmity:entity/is_sneaking at @s run function enmity:items/usable/delirium/use
execute if entity @s[scores={enmity.use=7,enmity.mana=50..}] if predicate enmity:entity/is_sneaking at @s anchored eyes run function enmity:items/usable/delirium/use_secondary
execute if entity @s[scores={enmity.use=2,enmity.mana=90..}] at @s anchored eyes run function enmity:items/usable/mineral_rumbler/raycast
execute if entity @s[scores={enmity.use=13,enmity.mana=50..}] at @s run function enmity:items/usable/staff_of_nature/use
execute if entity @s[scores={enmity.use=3,enmity.mana=100..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_liquid run function enmity:items/usable/gust_caster/use
execute if entity @s[scores={enmity.use=4,enmity.mana=60..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_lava run function enmity:items/usable/water_bolt/use
execute if entity @s[scores={enmity.use=6,enmity.mana=90..}] at @s run function enmity:items/usable/diamond_staff/use
execute if entity @s[scores={enmity.use=15,enmity.mana=90..}] at @s run function enmity:items/usable/redstone_staff/use
execute if entity @s[scores={enmity.use=14,enmity.mana=80..}] at @s run function enmity:items/usable/lapis_staff/use
execute if entity @s[scores={enmity.use=16,enmity.mana=80..}] at @s run function enmity:items/usable/emerald_staff/use
execute if entity @s[type=player,scores={enmity.use=17}] at @s anchored eyes run function enmity:items/usable/silvan_spirit_staff/raycast
execute if entity @s[scores={enmity.use=18,enmity.mana=90..}] at @s run function enmity:items/usable/soul_scepter/use
execute if entity @s[type=player,scores={enmity.use=19}] at @s anchored eyes run function enmity:items/usable/the_dance_of_souls/raycast
execute if entity @s[scores={enmity.use=24,enmity.mana=110..}] at @s run function enmity:items/usable/withered_scepter/use
execute if entity @s[type=player,scores={enmity.use=25}] at @s anchored eyes run function enmity:items/usable/infernal_helix_staff/raycast
execute if entity @s[scores={enmity.use=26,enmity.mana=50..}] at @s anchored eyes positioned ^ ^ ^0.3 run function enmity:items/usable/nights_ray/use
execute if entity @s[scores={enmity.use=27,enmity.mana=40..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_liquid positioned ^ ^ ^0.3 run function enmity:items/usable/dust_storm/use
execute if entity @s[scores={enmity.use=32,enmity.mana=30..}] at @s run function enmity:items/usable/crystal_storm/use
execute if entity @s[scores={enmity.use=34,enmity.mana=90..}] at @s run function enmity:items/usable/sky_fracture/use
execute if entity @s[scores={enmity.use=35,enmity.mana=140..}] at @s anchored eyes positioned ^ ^ ^0.3 run function enmity:items/usable/withering_beam_staff/use
execute if entity @s[type=player,scores={enmity.use=36}] at @s anchored eyes run function enmity:items/usable/charm_of_decay/raycast
execute if entity @s[scores={enmity.use=37,enmity.mana=80..}] at @s run function enmity:items/usable/rainbow_rod/use
execute if entity @s[scores={enmity.use=38,enmity.mana=90..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_water run function enmity:items/usable/flamelash/use
execute if entity @s[scores={enmity.use=39,enmity.mana=120..}] at @s run function enmity:items/usable/liquidator/use
execute if entity @s[scores={enmity.use=40,enmity.mana=120..}] at @s run function enmity:items/usable/terminal_flash/use
execute if entity @s[scores={enmity.use=41,enmity.mana=80..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_water run function enmity:items/usable/flare_bolt/use
execute if entity @s[type=player,scores={enmity.use=42}] at @s if predicate enmity:environment/is_night unless entity @e[type=giant] if predicate enmity:environment/in_overworld run function enmity:items/usable/rotten_lure/use
execute if entity @s[scores={enmity.use=45,enmity.mana=20..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_water run function enmity:items/usable/flame_barrage/check_for_ammo
execute if entity @s[type=player,scores={enmity.use=49,enmity.mana=100..}] at @s run function enmity:items/usable/ender_warper/use
execute if entity @s[scores={enmity.use=46,enmity.mana=80..}] at @s run function enmity:items/usable/boulder_staff/use
execute if entity @s[type=player,scores={enmity.use=47}] at @s anchored eyes run function enmity:items/usable/call_of_the_undead/raycast
execute if entity @s[scores={enmity.use=50,enmity.mana=70..}] at @s anchored eyes positioned ^ ^ ^0.3 run function enmity:items/usable/lightning_surge/use
execute if entity @s[scores={enmity.use=62,enmity.mana=60..}] at @s run function enmity:items/usable/aquatic_discharge/use
execute if entity @s[scores={enmity.use=65,enmity.mana=60..}] at @s run function enmity:items/usable/aquaflame_bolt/use
execute if entity @s[scores={enmity.use=66,enmity.mana=20..}] at @s run function enmity:items/usable/aquatic_scepter/use
execute if entity @s[type=player,scores={enmity.use=67}] at @s anchored eyes run function enmity:items/usable/guardian_thorn/raycast
execute if entity @s[scores={enmity.use=68,enmity.mana=100..}] at @s anchored eyes run function enmity:items/usable/torrential_scepter/use
execute if entity @s[type=player,scores={enmity.use=69}] at @s anchored eyes run function enmity:items/usable/elder_guardians_tear/use
execute if entity @s[scores={enmity.use=71,enmity.mana=10..}] at @s run function enmity:items/usable/entrail_spewer/check_for_ammo
execute if entity @s[scores={enmity.use=72,enmity.mana=70..}] at @s run function enmity:items/usable/fang_staff/use
execute if entity @s[scores={enmity.use=75,enmity.mana=100..}] at @s run function enmity:items/usable/spectral_rift/use
execute if entity @s[type=player,scores={enmity.use=83}] at @s anchored eyes run function enmity:items/usable/sacred_storm/raycast
execute if entity @s[type=player,scores={enmity.use=85}] at @s anchored eyes run function enmity:items/usable/cloud_staff/raycast
execute if entity @s[type=player,scores={enmity.use=87}] unless entity @e[type=armor_stand,tag=enmity.stop_dummies] at @s run function enmity:items/usable/target_dummy/use
execute if entity @s[scores={enmity.use=88,enmity.mana=60..}] at @s run function enmity:items/usable/sulphur_staff/use
execute if entity @s[scores={enmity.use=90,enmity.mana=90..}] at @s anchored eyes positioned ^ ^ ^ unless predicate enmity:environment/in_liquid run function enmity:items/usable/primordial_eruption/use
execute if entity @s[scores={enmity.use=94,enmity.mana=100..}] at @s anchored eyes positioned ^ ^ ^ run function enmity:items/usable/smilers_fang/use
execute if entity @s[scores={enmity.use=57,enmity.mana=80..}] at @s run function enmity:items/usable/hadopelagic_echo/use
execute if entity @s[scores={enmity.use=96,enmity.mana=80..}] at @s run function enmity:items/usable/alliance_rod/use
execute if entity @s[scores={enmity.use=98,enmity.mana=60..}] at @s run function enmity:items/usable/web_slinger/use
execute if entity @s[type=player,scores={enmity.use=101,enmity.mana=30..}] at @s anchored eyes positioned ^ ^ ^ run function enmity:items/usable/dripstone_digger/use
execute if entity @s[type=player,scores={enmity.use=102,enmity.mana=20..}] at @s anchored eyes positioned ^ ^ ^ run function enmity:items/usable/netherite_digger/use
execute if entity @s[type=player,scores={enmity.use=103,enmity.mana=20..}] at @s anchored eyes positioned ^ ^ ^ run function enmity:items/usable/ethereal_excavator/use
execute if entity @s[type=player,scores={enmity.use=104,enmity.mana=10..}] at @s anchored eyes positioned ^ ^ ^ run function enmity:items/usable/celestial_excavator/use
execute if entity @s[type=player,scores={enmity.use=106}] at @s run function enmity:items/usable/eldritch_candle/use
execute if entity @s[type=player,scores={enmity.use=108..110}] unless predicate enmity:entity/is_sneaking at @s anchored feet positioned ^ ^ ^ run function enmity:items/usable/subjugator/use
execute if entity @s[type=player,scores={enmity.use=108..110}] if predicate enmity:entity/is_sneaking at @s run function enmity:items/usable/subjugator/switch_mode
execute if entity @s[type=player,scores={enmity.use=115}] at @s anchored eyes run function enmity:items/usable/dazzling_rod/raycast
execute if entity @s[type=player,scores={enmity.use=116}] at @s anchored eyes run function enmity:items/usable/sculk_verge/raycast
execute if entity @s[type=player,scores={enmity.use=117}] at @s anchored eyes run function enmity:items/usable/crystalline_twig/raycast
execute if entity @s[scores={enmity.use=122,enmity.mana=70..}] at @s run function enmity:items/usable/healing_bolt/use
execute if entity @s[type=player,scores={enmity.use=123}] at @s anchored eyes run function enmity:items/usable/circle_of_vigour/raycast
execute if entity @s[scores={enmity.use=126,enmity.mana=40..}] at @s run function enmity:items/usable/magical_pistol/use
execute if entity @s[scores={enmity.use=127,enmity.mana=180..}] at @s run function enmity:items/usable/magical_boomstick/use
execute if entity @s[scores={enmity.use=128,enmity.mana=30..}] at @s run function enmity:items/usable/magical_blaster/use
execute if entity @s[scores={enmity.use=129,enmity.mana=100..}] at @s run function enmity:items/usable/magical_rifle/use
execute if entity @s[scores={enmity.use=130}] at @s anchored eyes run function enmity:items/usable/meguwand/raycast

scoreboard players set @s enmity.use 0