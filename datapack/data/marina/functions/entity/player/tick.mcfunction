execute if entity @s[predicate=marina:item/fishing_rod_held] run tag @s add mar.fishing_rod
execute if score @s mar.cstick matches 1.. run function marina:entity/player/cstick
execute if score @s mar.sprint_time matches 1.. run scoreboard players remove @s mar.sprint_time 1
execute if score @s mar.damage_time matches 1.. run scoreboard players remove @s mar.damage_time 1
execute if score @s mar.sprint matches 1.. run scoreboard players set @s mar.sprint_time 200
execute if score @s mar.sprint_time matches 190 if entity @s[tag=mar.fishing_rod] run particle minecraft:angry_villager ~ ~ ~ 0.2 0 0.2 0 2
execute if score @s mar.take_damage matches 1.. run scoreboard players set @s mar.damage_time 600
execute if score @s mar.damage_time matches 590 if entity @s[tag=mar.fishing_rod] run particle minecraft:angry_villager ~ ~ ~ 0.2 0 0.2 0 2
scoreboard players set @s mar.cstick 0
scoreboard players set @s mar.sneak 0
scoreboard players set @s mar.sprint 0
scoreboard players set @s mar.take_damage 0
tag @s remove mar.fishing_rod