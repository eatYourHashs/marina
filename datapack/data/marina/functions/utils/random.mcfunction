# pRNG function by ImCoolYeah105

## $math.in_0: max output value (0-100,000,000)
#> $math.out_0: generated random number

#LCG
scoreboard players operation $math.rng_seed mar.dummy *= $cons.rng_a mar.dummy
scoreboard players add $math.rng_seed mar.dummy 12345

#output
scoreboard players operation $math.out_0 mar.dummy = $math.rng_seed mar.dummy
scoreboard players operation $math.out_0 mar.dummy /= $cons.16 mar.dummy
scoreboard players operation $math.out_0 mar.dummy %= $math.in_0 mar.dummy
execute if score $math.out_0 mar.dummy matches ..-1 run scoreboard players operation $math.out_0 mar.dummy *= $cons.-1 mar.dummy

#check for 0 range
execute if score $math.in_0 mar.dummy matches 0 run scoreboard players set $math.out_0 mar.dummy 0
