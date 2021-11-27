# Gravity
effect @e[tag=mars] slow_falling 3 1 true
effect @e[tag=mars] jump_boost 3 2 true

# Water evaporation
execute @e[tag=mars] ~-4 ~-3 ~-4 fill ~ ~ ~ ~8 ~9 ~8 air 0 replace water

# Summon mobs
execute @e[tag=mars] ~ ~ ~ kill @e[type=enderman, r=64, c=2]
execute @e[tag=mars] ~ ~ ~ kill @e[type=item, name="Ender Pearl", r=120]
execute @e[tag=mars] ~ ~ ~ execute @e[type=enderman, r=64, c=1 ] ~ ~ ~ summon cosmos:space_zombie

tag @e[type=cosmos:space_zombie, tag=!mars] add mars