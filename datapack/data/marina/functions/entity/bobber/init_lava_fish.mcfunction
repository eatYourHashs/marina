scoreboard players set $math.in_0 mar.dummy 400
function marina:utils/random
scoreboard players operation @s mar.dummy = $math.out_0 mar.dummy
scoreboard players add @s mar.dummy 400
execute if score @s mar.lure_ench matches 1.. run scoreboard players remove @s mar.dummy 100
execute if score @s mar.lure_ench matches 2.. run scoreboard players remove @s mar.dummy 100
execute if score @s mar.lure_ench matches 3.. run scoreboard players remove @s mar.dummy 100
execute if entity @s[tag=mar.netherite_rod] run scoreboard players add @s mar.lots_ench 2