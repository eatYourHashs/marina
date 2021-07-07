scoreboard players add @s mar.dummy 1
execute if score @s mar.dummy matches 11.. run kill @s
execute unless entity @e[type=fishing_bobber,distance=..0.2] run function marina:entity/lava_fish_marker/catch