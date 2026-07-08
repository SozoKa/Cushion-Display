# If cushion is not a cushion display and is within 4.99 blocks of the player
# setup "potential cushion" interaction entity and add tag
execute as @e[type=cushion,tag=!is_cushion_display,tag=!potential_cushion,distance=..4.99] at @s run function cushion_display:potential_cushion/setup
# If cushion is not a cushion display and is further than 5 blocks from the player
# remove "potential cushion" interaction entity and remove tag
execute as @e[type=cushion,tag=!is_cushion_display,tag=potential_cushion,distance=5..] at @s run function cushion_display:potential_cushion/remove