# This MCFUNCTION is used in the end_module when teleporting to the end

# -- File Overview --
# Teleport player to the island
# Add moon tag, remove the launch tag
# Clear player effects

teleport @s 502 120 540
tag @s add moon
tag @s remove moon_launch
effect @s clear
music play music.supernova
summon cosmo:rocket 502 120 540