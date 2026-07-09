# If player placed interaction entity (has advancement) prepare if they stop looking at the cushion or move too far away, reset the raycast actions
execute as @a[advancements={cushion_display:all_condition_to_place=true}] at @s unless predicate cushion_display:all_conditions_interaction run function cushion_display:raycast/reset
execute as @a[advancements={cushion_display:all_condition_to_place=true}] at @s if predicate cushion_display:all_conditions_interaction if entity @e[type=interaction,tag=potential_cushion,distance=4..] run function cushion_display:raycast/reset

# Make all cushion displays run their actions and tests
execute as @e[type=cushion,tag=is_cushion_display] run function cushion_display:cushion_actions_and_tests

# If displayed item detects that it is no longer riding a cushion reset it
# execute as @e[type=item,tag=is_cushion_display_item,predicate=!cushion_display:on_vehicle] run function cushion_display:reset_item
execute as @a at @s as @e[distance=..5,type=item,tag=is_cushion_display_item,predicate=!cushion_display:on_vehicle] run function cushion_display:reset_item