attribute @s minecraft:generic.luck modifier remove 0eeb90be-b0a4-41a2-8666-b706496ef74a
scoreboard players set temp mar.dummy 0
execute if entity @e[type=dolphin,distance=..10,tag=!global.ignore] run scoreboard players add temp mar.dummy 1
execute if predicate marina:location/warm_ocean run scoreboard players add temp mar.dummy 1
execute if predicate marina:location/ruins run scoreboard players add temp mar.dummy 1
execute if predicate marina:location/monument run scoreboard players add temp mar.dummy 2
execute if predicate marina:weather/rain run scoreboard players add temp mar.dummy 1
execute if predicate marina:time/dawn run scoreboard players add temp mar.dummy 1
execute if predicate marina:time/dusk run scoreboard players add temp mar.dummy 1
execute if data entity @s {RootVehicle:{Entity:{id:"minecraft:strider"}}} run scoreboard players add temp mar.dummy 1
execute if score @s mar.trade_time matches 1.. run scoreboard players add temp mar.dummy 1
execute if score temp mar.dummy matches 2..3 run attribute @s minecraft:generic.luck modifier add 0eeb90be-b0a4-41a2-8666-b706496ef74a environ_luck_pos 1 add
execute if score temp mar.dummy matches 4..7 run attribute @s minecraft:generic.luck modifier add 0eeb90be-b0a4-41a2-8666-b706496ef74a environ_luck_pos 2 add
execute if score temp mar.dummy matches 8..11 run attribute @s minecraft:generic.luck modifier add 0eeb90be-b0a4-41a2-8666-b706496ef74a environ_luck_pos 3 add
execute if score temp mar.dummy matches 12..15 run attribute @s minecraft:generic.luck modifier add 0eeb90be-b0a4-41a2-8666-b706496ef74a environ_luck_pos 4 add
execute if score temp mar.dummy matches 16..19 run attribute @s minecraft:generic.luck modifier add 0eeb90be-b0a4-41a2-8666-b706496ef74a environ_luck_pos 5 add
execute if score temp mar.dummy matches 20.. run attribute @s minecraft:generic.luck modifier add 0eeb90be-b0a4-41a2-8666-b706496ef74a environ_luck_pos 6 add
scoreboard players set temp mar.dummy 0
attribute @s minecraft:generic.luck modifier remove f52b4a8f-f0c8-4748-9989-1804cf957afd
execute store result score temp0 mar.dummy if entity @e[type=#marina:unlucky,distance=..10,tag=!global.ignore]
scoreboard players operation temp mar.dummy += temp0 mar.dummy
execute if score @s mar.damage_time matches 1.. run scoreboard players add temp mar.dummy 2
execute if score @s mar.sprint_time matches 1.. run scoreboard players add temp mar.dummy 1
execute if score temp mar.dummy matches 2..3 run attribute @s minecraft:generic.luck modifier add f52b4a8f-f0c8-4748-9989-1804cf957afd environ_luck_neg -1 add
execute if score temp mar.dummy matches 4.. run attribute @s minecraft:generic.luck modifier add f52b4a8f-f0c8-4748-9989-1804cf957afd environ_luck_neg -2 add
attribute @s minecraft:generic.luck modifier remove d4d016ce-0d7b-4b0c-ab58-159ffb729364
execute if entity @e[type=marker,tag=mar.fish_chum,distance=..8] run attribute @s minecraft:generic.luck modifier add d4d016ce-0d7b-4b0c-ab58-159ffb729364 fish_chum 1 add
attribute @s minecraft:generic.luck modifier remove b42d50c8-6440-45cf-8af9-50f7308d67d2
execute if entity @e[type=marker,tag=mar.cursed_chum,distance=..8] run attribute @s minecraft:generic.luck modifier add b42d50c8-6440-45cf-8af9-50f7308d67d2 cursed_chum -2 add
scoreboard players set @s mar.exotic 0
execute if entity @e[type=marker,tag=mar.exotic_chum,distance=..8] run scoreboard players set @s mar.exotic 1
scoreboard players set @s mar.consecrated 0
execute if entity @e[type=marker,tag=mar.consecrated_chum,distance=..8] run scoreboard players set @s mar.consecrated 1
scoreboard players set @s mar.golden 0
execute if entity @e[type=marker,tag=mar.golden_chum,distance=..8] run scoreboard players set @s mar.golden 1