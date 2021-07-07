execute unless entity @s[tag=mar.processed] run function marina:entity/bobber/process
execute if block ~ ~-0.1 ~ lava unless entity @s[tag=mar.fireproof] run function marina:entity/bobber/burn
execute if block ~ ~ ~ lava run tp ~ ~0.05 ~
execute if block ~ ~-0.1 ~ lava run particle flame
execute if block ~ ~-0.1 ~ lava run scoreboard players add @s mar.lava_fish 1
execute if block ~ ~-0.1 ~ lava if score @s mar.lava_fish matches 1 run function marina:entity/bobber/init_lava_fish
execute if block ~ ~-0.1 ~ lava if score @s mar.lava_fish matches 2.. run scoreboard players remove @s mar.dummy 1
execute if block ~ ~-0.1 ~ lava if score @s mar.dummy matches 20 run particle minecraft:flame ~ ~0.1 ~ 0.1 0 0.1 0.05 5
execute if block ~ ~-0.1 ~ lava if score @s mar.dummy matches 10 run particle minecraft:flame ~ ~0.1 ~ 0.1 0 0.1 0.05 5
execute if block ~ ~-0.1 ~ lava if score @s mar.dummy matches 0 run particle minecraft:lava ~ ~ ~ 0 0 0 0.05 10
execute if block ~ ~-0.1 ~ lava if score @s mar.dummy matches 0 run playsound minecraft:entity.fishing_bobber.splash player @a ~ ~ ~ 1 0.7
execute if block ~ ~-0.1 ~ lava if score @s mar.dummy matches 0 run summon minecraft:marker ~ ~ ~ {Tags:[global.ignore,mar.lava_fish_marker]}
execute if block ~ ~-0.1 ~ lava if score @s mar.dummy matches 0 run scoreboard players operation @e[limit=1,sort=nearest,tag=mar.lava_fish_marker] mar.lots_ench = @s mar.lots_ench