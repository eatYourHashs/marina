execute if predicate marina:location/ocean_like if entity @s[predicate=marina:item/emperor_rod_held] run attribute @s minecraft:generic.luck modifier add bf4c672e-6de5-4133-bec4-17388d29d6f5 emperor_rod 2 add
execute unless predicate marina:location/ocean_like run attribute @s minecraft:generic.luck modifier remove bf4c672e-6de5-4133-bec4-17388d29d6f5
execute if predicate marina:location/ocean_like unless entity @s[predicate=marina:item/emperor_rod_held] run attribute @s minecraft:generic.luck modifier remove bf4c672e-6de5-4133-bec4-17388d29d6f5
execute store success score temp mar.dummy run clear @s minecraft:carrot_on_a_stick{mar_id:"luck_meter"} 0
execute if score temp mar.dummy matches 1.. run function marina:entity/player/luck_meter
execute if predicate marina:time/dusk run scoreboard players add temp mar.dummy 1
execute if score @s mar.trade_time matches 1.. run scoreboard players remove @s mar.trade_time 1
execute if score @s mar.trade matches 1.. if entity @e[type=villager,distance=..6,nbt={VillagerData:{profession:"minecraft:fisherman"}}] run tag @s add mar.trade
execute if entity @s[tag=mar.trade] unless score @s mar.trade_time matches 1.. run particle minecraft:happy_villager ~ ~0.05 ~ 0.2 0 0.2 0 15
execute if entity @s[tag=mar.trade] unless score @s mar.trade_time matches 1.. run playsound minecraft:item.armor.equip_turtle player @a ~ ~ ~ 1 1
execute if entity @s[tag=mar.trade] run scoreboard players set @s mar.trade_time 2400
scoreboard players set @s mar.trade 0