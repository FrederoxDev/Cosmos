# This MCFUNCTION completes the setup of the addon

# -- File Overview --
# Loads in a structure at 0 0 0 in the end
# Creates a teleporter at ~ 0 ~
# Teleports the player to ~ 1 ~

# structure load

structure load mystructure:end_module 0 0 0

tickingarea add 490 68 490 490 68 490 moon
tickingarea add -490 68 -490 -490 68 -490 mars
tickingarea add 502 120 540 502 120 540 moon_rocket
tickingarea add -440 120 -475 -440 120 -475 mars_rocket

tickingarea add 0 0 0 2 3 2 end_cmd

structure load moon_island 490 68 490
structure load mars_island -490 68 -490

fill ~-1 0 ~-1 ~1 3 ~1 bedrock 1 hollow
fill ~ 1 ~ ~ 1 ~ end_portal

teleport @p ~ 1 ~

tellraw @p {"rawtext":[{"text":"[COSMOS] §dThank you for finishing the setup!"}]}
title @p actionbar |COSMOS| §dThank you for finishing the setup!

effect @p clear