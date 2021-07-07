execute as @e[type=minecraft:fishing_bobber] at @s run function marina:entity/bobber/tick
execute as @e[type=minecraft:marker,tag=mar.lava_fish_marker] at @s run function marina:entity/lava_fish_marker/tick
execute as @a at @s run function marina:entity/player/tick
scoreboard players add $1s mar.dummy 1
execute if score $1s mar.dummy matches 20.. run function marina:second_clock