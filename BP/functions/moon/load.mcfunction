# This MCFUNCTION is used in the end_module when teleporting to the end

# -- File Overview --
# Teleport player to the island
# Add moon tag, remove the launch tag
# Clear player effects

teleport @p 500 86 500
tag @p add moon
tag @p remove moon_launch
effect @p clear
summon cosmo:tier_1_rocket 500 86 500 