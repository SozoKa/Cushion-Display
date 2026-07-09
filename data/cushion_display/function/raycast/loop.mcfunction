# If cushion is not a cushion display and is within 4.99 blocks of the player
# setup "potential cushion" interaction entity and add tag
execute positioned ~-.15 ~-.15 ~-.15 as @e[type=cushion,tag=!is_cushion_display,tag=!potential_cushion,dx=0] positioned ~-.7 ~-.7 ~-.7 if entity @s[dx=0] at @s run function cushion_display:potential_cushion/setup

# execute if entity @e[type=cushion,distance=...7] as @e[type=cushion,distance=...7,tag=!is_cushion_display,tag=!potential_cushion] at @s run function cushion_display:potential_cushion/setup
# # If cushion is not a cushion display and is further than 5 blocks from the player
# # remove "potential cushion" interaction entity and remove tag
# execute if entity @e[type=cushion,distance=...7] as @e[type=cushion,distance=.71..5,tag=!is_cushion_display,tag=potential_cushion] at @s run function cushion_display:potential_cushion/remove

execute if entity @s[distance=..3] positioned ^ ^ ^.3 run function cushion_display:raycast/loop

# particle flame ~ ~-.25 ~