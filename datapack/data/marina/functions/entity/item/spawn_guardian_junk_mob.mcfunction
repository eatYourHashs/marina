execute unless score @p mar.consecrated matches 1 run playsound minecraft:entity.zombie.converted_to_drowned hostile @a
execute unless score @p mar.consecrated matches 1 run particle minecraft:splash ~ ~0.5 ~ 0.3 0.3 0.3 1 100
execute unless score @p mar.consecrated matches 1 run summon guardian
execute if score @p mar.consecrated matches 1 run loot give @p loot marina:fishing/fish_drop
kill @s
