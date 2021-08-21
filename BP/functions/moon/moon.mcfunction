# Moon Gravity
effect @e[tag=moon] slow_falling 3 1 true
effect @e[tag=moon] jump_boost 3 2 true

# Summon mobs
execute @e[tag=moon] ~ ~ ~ kill @e[type=enderman, r=64, c=1]
execute @e[tag=moon] ~ ~ ~ kill @e[type=item, name="Ender Pearl", r=120]
execute @e[tag=moon] ~ ~ ~ execute @e[type=enderman, r=64, c=1 ] ~ ~ ~ summon cosmo:space_zombie

tag @e[type=cosmo:space_zombie, tag=!moon] add moon

# Rocket launching particles
execute @e[tag=flame_particles] ~ ~ ~ particle minecraft:mobflame_single ~ ~-4 ~