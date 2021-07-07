scoreboard players add cast_temp mar.dummy 1
execute if block ~ ~ ~ water run function marina:item/golden_chum_bucket/place
execute if block ~ ~ ~ lava run function marina:item/golden_chum_bucket/place
execute unless score cast_temp mar.dummy matches 10.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function marina:item/golden_chum_bucket/raycast
execute unless score cast_temp mar.dummy matches 10.. if block ~ ~ ~ cave_air positioned ^ ^ ^0.5 run function marina:item/golden_chum_bucket/raycast