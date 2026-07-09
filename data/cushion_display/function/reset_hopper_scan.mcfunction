# Get item data
$data modify storage cushion_display:data item set from block ~ ~ ~ Items[{Slot:$(slot)b}]

# If item is not a cushion display item, exit
# $say $(slot)
execute unless data storage cushion_display:data item.components."minecraft:custom_data".cushion_display run return fail
# say pass

# Reset item data
data remove storage cushion_display:data item.components."minecraft:max_stack_size"
data modify storage cushion_display:data item.components."minecraft:max_stack_size" set from storage cushion_display:data item.components."minecraft:custom_data".previous_max_stack_size
data remove storage cushion_display:data item.components."minecraft:custom_data".previous_max_stack_size
data remove storage cushion_display:data item.components."minecraft:custom_data".cushion_display
data remove storage cushion_display:data item.components."minecraft:custom_data".had_max_stack_size

# If custom data is empty, remove it
execute store result storage cushion_display:data temp.have_custom_data byte 1 run data get storage cushion_display:data item.components."minecraft:custom_data"
execute if data storage cushion_display:data temp{have_custom_data:0b} run data remove storage cushion_display:data item.components."minecraft:custom_data"
# tellraw @a {storage:"cushion_display:data",nbt:"temp"}
data remove storage cushion_display:data temp

$data modify block ~ ~ ~ Items[{Slot:$(slot)b}] set from storage cushion_display:data item

# tellraw @a {storage:"cushion_display:data",nbt:"item"}
data remove storage cushion_display:data item