execute unless entity @s[predicate=marina:item/emperor_rod_held,predicate=marina:location/ocean_like] run schedule function marina:entity/player/detect_junk_mob 1t
execute if entity @s[predicate=marina:item/emperor_rod_held,predicate=marina:location/ocean_like] run schedule function marina:entity/player/detect_guardian_junk_mob 1t
advancement revoke @s only marina:technical/fish_junk_mob
