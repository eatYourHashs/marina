data remove storage mar:storage SelectedItem
data modify storage mar:storage SelectedItem set from entity @s SelectedItem

#luck meter swapping
execute if score @s mar.sneak matches 1.. if data storage mar:storage SelectedItem.tag{mar_id:"luck_meter"} run tag @s add mar.swapped1
execute if entity @s[tag=mar.swapped1] run loot replace entity @s weapon.mainhand loot marina:items/luck_meter_inactive
execute if entity @s[tag=mar.swapped1] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1
execute if score @s mar.sneak matches 1.. if entity @s[tag=!mar.swapped1] if data storage mar:storage SelectedItem.tag{mar_id:"luck_meter_inactive"} run tag @s add mar.swapped2
execute if entity @s[tag=mar.swapped2] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2
execute if entity @s[tag=mar.swapped2] run loot replace entity @s weapon.mainhand loot marina:items/luck_meter
tag @s remove mar.swapped1
tag @s remove mar.swapped2

#luck meter checking
execute if score @s mar.sneak matches 0 if data storage mar:storage SelectedItem.tag{mar_id:"luck_meter"} run function marina:item/luck_meter_check
execute if score @s mar.sneak matches 0 if data storage mar:storage SelectedItem.tag{mar_id:"luck_meter_inactive"} run function marina:item/luck_meter_check

#rainmaker
execute if data storage mar:storage SelectedItem.tag{mar_id:"rainmaker"} run function marina:item/rainmaker

#chum
execute if data storage mar:storage SelectedItem.tag{mar_id:"fish_chum_bucket"} run function marina:item/fish_chum_bucket/use
execute if data storage mar:storage SelectedItem.tag{mar_id:"cursed_chum_bucket"} run function marina:item/cursed_chum_bucket/use
execute if data storage mar:storage SelectedItem.tag{mar_id:"exotic_chum_bucket"} run function marina:item/exotic_chum_bucket/use
execute if data storage mar:storage SelectedItem.tag{mar_id:"consecrated_chum_bucket"} run function marina:item/consecrated_chum_bucket/use
execute if data storage mar:storage SelectedItem.tag{mar_id:"golden_chum_bucket"} run function marina:item/golden_chum_bucket/use