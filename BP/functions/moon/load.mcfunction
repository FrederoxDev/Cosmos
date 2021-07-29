# This MCFUNCTION is used in the end_module when teleporting to the end

# -- File Overview --
# Teleport player to the island
# Add moon tag, remove the launch tag
# Clear player effects

teleport @a[tag=moon_launch] 502 120 540
tag @a[tag=moon_launch] add moon
tag @a[tag=moon_launch] remove moon_launch
effect @a[tag=moon] clear
summon cosmo:rocket 502 120 540