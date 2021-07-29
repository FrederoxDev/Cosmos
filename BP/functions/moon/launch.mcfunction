# This MCFUNCTION is used to teleport the player to the moon

# -- File Overview --
# Give player blindness and slowness for the transition 
# Gives the player the moon_launch tag so the end_module can select the player
# Creates teleport box and teleports player to end

effect @s blindness 255 255
effect @s slowness 255 255

tag @s add moon_launch

fill ~-1 0 ~-1 ~1 3 ~1 bedrock 1 hollow
fill ~ 1 ~ ~ 1 ~ end_portal

teleport @s ~ 1 ~