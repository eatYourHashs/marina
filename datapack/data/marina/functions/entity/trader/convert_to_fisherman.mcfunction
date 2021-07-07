execute if predicate marina:random/one_twentieth run tag @s add mar.midas_rod
execute unless entity @s[tag=mar.midas_rod] run data modify entity @s Offers.Recipes set value [{},{},{},{}]
execute if entity @s[tag=mar.midas_rod] run data modify entity @s Offers.Recipes set value [{},{},{},{},{}]
tag @s add mar.wandering_fisherman
setblock -30000000 0 24576 minecraft:yellow_shulker_box
loot insert -30000000 0 24576 loot marina:fisherman/rare_fish
data modify entity @s Offers.Recipes[0].buy set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
data modify entity @s Offers.Recipes[0].maxUses set value 1
data modify entity @s Offers.Recipes[0].rewardExp set value true
loot insert -30000000 0 24576 loot marina:fisherman/rare_fish_emeralds
data modify entity @s Offers.Recipes[0].sell set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
loot insert -30000000 0 24576 loot marina:fisherman/minor_item_emeralds
data modify entity @s Offers.Recipes[1].buy set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
data modify entity @s Offers.Recipes[1].maxUses set value 3
data modify entity @s Offers.Recipes[1].rewardExp set value true
loot insert -30000000 0 24576 loot marina:fisherman/minor_item
data modify entity @s Offers.Recipes[1].sell set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
loot insert -30000000 0 24576 loot marina:fisherman/major_item_emeralds
data modify entity @s Offers.Recipes[2].buy set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
data modify entity @s Offers.Recipes[2].maxUses set value 1
data modify entity @s Offers.Recipes[2].rewardExp set value true
loot insert -30000000 0 24576 loot marina:fisherman/major_item
data modify entity @s Offers.Recipes[2].sell set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
loot insert -30000000 0 24576 loot marina:fisherman/luck_meter_emeralds
data modify entity @s Offers.Recipes[3].buy set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
data modify entity @s Offers.Recipes[3].maxUses set value 1
data modify entity @s Offers.Recipes[3].rewardExp set value true
loot insert -30000000 0 24576 loot marina:items/luck_meter
data modify entity @s Offers.Recipes[3].sell set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
execute if entity @s[tag=mar.midas_rod] run function marina:entity/trader/add_midas_rod