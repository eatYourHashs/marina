execute if entity @p[distance=..3,nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{mar_id:"obsidian_rod"}}}] run tag @s add mar.obsidian_rod
execute if entity @p[distance=..3,nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{mar_id:"netherite_rod"}}}] run tag @s add mar.netherite_rod
execute if entity @s[tag=mar.obsidian_rod] run tag @s add mar.fireproof
execute if entity @s[tag=mar.netherite_rod] run tag @s add mar.fireproof
execute store result score @s mar.lots_ench run data get entity @p[predicate=marina:item/fishing_rod_held] SelectedItem.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl
execute store result score @s mar.lure_ench run data get entity @p[predicate=marina:item/fishing_rod_held] SelectedItem.tag.Enchantments[{id:"minecraft:lure"}].lvl
tag @s add mar.processed