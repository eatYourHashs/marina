scoreboard objectives add mar.dummy dummy
scoreboard objectives add mar.lava_fish dummy
scoreboard objectives add mar.lots_ench dummy
scoreboard objectives add mar.lure_ench dummy
scoreboard objectives add mar.cstick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mar.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add mar.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add mar.sprint_time dummy
scoreboard objectives add mar.take_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add mar.damage_time dummy
scoreboard objectives add mar.trade minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add mar.trade_time dummy
scoreboard objectives add mar.exotic dummy
scoreboard objectives add mar.consecrated dummy
scoreboard objectives add mar.golden dummy

forceload add -30000000 24576
setblock -30000000 0 24576 yellow_shulker_box

scoreboard players set $cons.rng_a mar.dummy 1103515245
execute store result score $cons.rng_seed mar.dummy run data get entity @e[limit=1,sort=random] UUID[0]

scoreboard players set $cons.-100 mar.dummy -100
scoreboard players set $cons.-25 mar.dummy -25
scoreboard players set $cons.-10 mar.dummy -10
scoreboard players set $cons.-5 mar.dummy -5
scoreboard players set $cons.-3 mar.dummy -3
scoreboard players set $cons.-2 mar.dummy -2
scoreboard players set $cons.-1 mar.dummy -1
scoreboard players set $cons.2 mar.dummy 2
scoreboard players set $cons.3 mar.dummy 3
scoreboard players set $cons.4 mar.dummy 4
scoreboard players set $cons.5 mar.dummy 5
scoreboard players set $cons.10 mar.dummy 10
scoreboard players set $cons.11 mar.dummy 11
scoreboard players set $cons.16 mar.dummy 16
scoreboard players set $cons.25 mar.dummy 25
scoreboard players set $cons.100 mar.dummy 100

team add mar.unluck
team add mar.luck
team modify mar.luck color green
team modify mar.unluck color red