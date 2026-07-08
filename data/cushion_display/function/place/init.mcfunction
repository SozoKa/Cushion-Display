advancement revoke @s only cushion_display:rightclick_cushion

# Remove tags and kill the interaction entity
execute as @n[type=interaction,distance=..4.99,tag=potential_cushion,predicate=cushion_display:got_rightclicked] at @s run function cushion_display:place/as_interaction

# Init item placement
execute at @n[type=cushion,tag=is_cushion_display,tag=this] run function cushion_display:place/item_on_cushion

swing @s mainhand