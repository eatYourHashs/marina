loot insert -30000000 0 24576 loot marina:fisherman/midas_rod_emeralds
data modify entity @s Offers.Recipes[4].buy set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box
data modify entity @s Offers.Recipes[4].maxUses set value 1
data modify entity @s Offers.Recipes[4].rewardExp set value true
loot insert -30000000 0 24576 loot marina:items/midas_rod
data modify entity @s Offers.Recipes[4].sell set from block -30000000 0 24576 Items[0]
setblock -30000000 0 24576 minecraft:yellow_shulker_box