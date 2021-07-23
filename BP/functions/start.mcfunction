# This MCFUNCTION sets up the addon 

# -- File Overview --
# Creates a teleporter at ~ 0 ~
# Teleports the player to ~ 1 ~
# Gives the player the SETUP tag

gamerule sendcommandfeedback false
gamerule commandblockoutput false

fill ~-1 0 ~-1 ~1 3 ~1 bedrock 1 hollow
fill ~ 1 ~ ~ 1 ~ end_portal

effect @p blindness 255 255
effect @p slowness 255 255

teleport @p ~ 1 ~

tellraw @p {"rawtext":[{"text":"[COSMOS] §dPlease run '/function finish' to finish the setup!"}]}
title @p actionbar |COSMOS| §dPlease run '/function finish' to finish the setup!