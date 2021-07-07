scoreboard players add @s mar.dummy 1
particle block soul_sand ~ ~ ~ 1.5 0.1 1.5 0.05 50
execute unless predicate marina:location/nether run particle minecraft:splash ~ ~ ~ 1.5 0.1 1.5 0.05 50
execute if predicate marina:location/nether run particle minecraft:lava ~ ~ ~ 1.5 0.1 1.5 0.05 20
execute if score @s mar.dummy matches 300.. run kill @s