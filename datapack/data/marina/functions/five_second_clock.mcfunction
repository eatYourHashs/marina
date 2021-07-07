scoreboard players set $5s mar.dummy 0
execute as @a at @s run function marina:entity/player/environ_luck_cal
execute as @e[type=wandering_trader,tag=!mar.processed,tag=!global.ignore] at @s run function marina:entity/trader/process
