# Store previous max_stack_size if it exists
data modify entity @s Item.components."minecraft:custom_data".previous_max_stack_size set from entity @s Item.components."minecraft:max_stack_size"
execute if data entity @s Item.components."minecraft:custom_data".previous_max_stack_size run data modify entity @s Item.components."minecraft:custom_data".had_max_stack_size set value 1b
data modify entity @s Item.components."minecraft:custom_data".cushion_display set value 1b

# Set specific cushion value to make it non stackable and one unit
data modify entity @s Item.components."minecraft:max_stack_size" set value 1b