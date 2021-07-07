summon cod ~ ~ ~ {DeathLootTable:"marina:fishing/lava_catch",NoAI:1b,Tags:["global.ignore","mar.loot_fish"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20}]}
tag @p[predicate=marina:item/fishing_rod_held] add mar.fisher
execute if score @s mar.lots_ench matches 1 run attribute @p[tag=mar.fisher] minecraft:generic.luck modifier add cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed luck_bonus 1 add
execute if score @s mar.lots_ench matches 2 run attribute @p[tag=mar.fisher] minecraft:generic.luck modifier add cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed luck_bonus 2 add
execute if score @s mar.lots_ench matches 3 run attribute @p[tag=mar.fisher] minecraft:generic.luck modifier add cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed luck_bonus 3 add
execute if score @s mar.lots_ench matches 4 run attribute @p[tag=mar.fisher] minecraft:generic.luck modifier add cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed luck_bonus 4 add
execute if score @s mar.lots_ench matches 5 run attribute @p[tag=mar.fisher] minecraft:generic.luck modifier add cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed luck_bonus 5 add
execute if score @s mar.lots_ench matches 6.. run attribute @p[tag=mar.fisher] minecraft:generic.luck modifier add cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed luck_bonus 6 add
loot give @p[tag=mar.fisher] kill @e[limit=1,tag=mar.loot_fish]
data modify block -30000000 0 24576 Items prepend from entity @p[tag=mar.fisher] SelectedItem
execute store result score temp_0 mar.dummy run data get block -30000000 0 24576 Items[0].tag.Damage
execute store result score temp_1 mar.dummy run data get block -30000000 0 24576 Items[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score temp_1 mar.dummy matches 0 run scoreboard players add temp_0 mar.dummy 1
execute if score temp_1 mar.dummy matches 1 if predicate marina:random/one_half run scoreboard players add temp_0 mar.dummy 1
execute if score temp_1 mar.dummy matches 2 if predicate marina:random/one_third run scoreboard players add temp_0 mar.dummy 1
execute if score temp_1 mar.dummy matches 3.. if predicate marina:random/one_fourth run scoreboard players add temp_0 mar.dummy 1
execute store result block -30000000 0 24576 Items[0].tag.Damage int 1 run scoreboard players get temp_0 mar.dummy
execute unless entity @p[tag=mar.fisher,gamemode=creative] run item replace entity @p[tag=mar.fisher] weapon.mainhand from block -30000000 0 24576 container.0
execute if score temp_0 mar.dummy matches 65.. run function marina:entity/lava_fish_marker/break_rod
setblock -30000000 0 24576 minecraft:yellow_shulker_box
tp @e[limit=1,tag=mar.loot_fish] ~ -200 ~
kill @e[limit=1,tag=mar.loot_fish]
execute if score @s mar.lots_ench matches 1.. run attribute @p minecraft:generic.luck modifier remove cfbeba0e-9ad7-46e9-8f1d-ed5e3e8ba0ed
execute store success score temp mar.dummy run clear @a minecraft:structure_void{mar_id:"junk_ph"}
execute if score temp mar.dummy matches 1.. run function marina:entity/player/fish_lava_junk_mob
tag @p[tag=mar.fisher] remove mar.fisher
kill @s