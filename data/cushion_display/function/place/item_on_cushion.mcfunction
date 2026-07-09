# Copy data from player's item
data modify storage cushion_display:data item set from entity @s SelectedItem
# data modify storage cushion_display:data item.components."minecraft:custom_data".kill set value 1b
data modify storage cushion_display:data item.count set value 1b

# Spawn unpickable and infinite item
function cushion_display:place/spawn_item with storage cushion_display:data

# Bulk edit item's data
execute as @n[type=item,tag=this] run function cushion_display:modify_item_data

# Remove 1 item from the player's main hand (after so if player was holding 1 item, spawned item wouldn't find any data to retreive)
item modify entity @s[gamemode=!creative] weapon.mainhand cushion_display:remove_one_item

# Make item ride cushion
ride @n[type=item,tag=this] mount @n[type=cushion,tag=this]

playsound entity.cushion.sit block @a ~ ~ ~ 1 1

tag @n[type=item,tag=this] remove this
tag @n[type=cushion,tag=this] remove this