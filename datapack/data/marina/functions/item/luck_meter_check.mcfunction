playsound minecraft:block.bell.resonate player @a ~ ~ ~ 1 2
particle minecraft:enchant ~ ~1 ~ 1 1 1 0 50
team join mar.unluck @e[distance=..10,type=#marina:unlucky]
team join mar.luck @e[distance=..10,type=minecraft:dolphin]
execute if data entity @s {RootVehicle:{Entity:{id:"minecraft:strider"}}} run team join mar.luck @e[limit=1,sort=nearest,type=minecraft:strider]
effect give @e[team=mar.unluck,distance=..10] glowing 5 0 true
effect give @e[team=mar.luck,distance=..10] glowing 5 0 true