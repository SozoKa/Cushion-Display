tag @s remove is_cushion_display_item
data modify entity @s PickupDelay set value 10

data remove entity @s Item.components."minecraft:max_stack_size"
data modify entity @s Item.components."minecraft:max_stack_size" set from entity @s Item.components."minecraft:custom_data".previous_max_stack_size
data remove entity @s Item.components."minecraft:custom_data".previous_max_stack_size
data remove entity @s Item.components."minecraft:custom_data".cushion_display
data remove entity @s Item.components."minecraft:custom_data".had_max_stack_size

execute store result storage cushion_display:data temp.have_custom_data byte 1 run data get entity @s Item.components."minecraft:custom_data"
execute if data storage cushion_display:data temp{have_custom_data:0b} run data remove entity @s Item.components."minecraft:custom_data"
data remove storage cushion_display:data temp