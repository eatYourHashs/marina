scoreboard players set $1s mar.dummy 0
execute as @a at @s run function marina:entity/player/second_clock
execute as @e[type=marker,tag=mar.chum] at @s run function marina:item/generic_chum/second_clock
scoreboard players add $5s mar.dummy 1
execute if score $5s mar.dummy matches 5.. run function marina:five_second_clock
