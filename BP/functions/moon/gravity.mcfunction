effect @e[tag=moon] slow_falling 3 1 true
effect @e[tag=moon] jump_boost 3 2 true

execute @e[tag=moon] ~ ~ ~ kill @e[type=enderman, r=30]
execute @e[tag=moon] ~ ~ ~ kill @e[type=item, name="Ender Pearl", r=30]