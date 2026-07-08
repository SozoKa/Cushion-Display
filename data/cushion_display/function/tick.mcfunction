# If player is sneaking with an item in hand, prepare system
execute as @a[predicate=cushion_display:sneak_with_item_in_hand] at @s run function cushion_display:prepare
# If player is not sneaking with an item in hand, remove the potential cushion interaction entities
execute unless entity @a[predicate=cushion_display:sneak_with_item_in_hand] as @e[type=cushion,tag=potential_cushion] at @s run function cushion_display:potential_cushion/remove

# Make all cushion displays set their Item Age to -1 so they don't despawn
execute as @e[type=cushion,tag=is_cushion_display] run function cushion_display:cushion_actions_and_tests

# If displayed item detects that it is no longer riding a cushion reset its tags and pick up values
execute as @e[type=item,tag=is_cushion_display_item,predicate=!cushion_display:on_vehicle] run function cushion_display:reset_item