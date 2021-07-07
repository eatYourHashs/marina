data modify block -30000000 0 24576 Items prepend from entity @s SelectedItem
execute store result score temp_0 mar.dummy run data get block -30000000 0 24576 Items[0].tag.Damage
execute store result score temp_1 mar.dummy run data get block -30000000 0 24576 Items[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add temp_0 mar.dummy 2
execute store result block -30000000 0 24576 Items[0].tag.Damage int 1 run scoreboard players get temp_0 mar.dummy
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand from block -30000000 0 24576 container.0
execute if score temp_0 mar.dummy matches 25.. run function marina:item/consecrated_chum_bucket/break
setblock -30000000 0 24576 minecraft:yellow_shulker_box
particle block soul_sand ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute unless predicate marina:location/nether run particle minecraft:splash ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute if predicate marina:location/nether run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0.05 30
playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 1
summon minecraft:marker ~ ~ ~ {Tags:[global.ignore,mar.consecrated_chum,mar.chum]}