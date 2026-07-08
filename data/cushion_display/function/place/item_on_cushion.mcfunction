# Spawn unpickable and infinite item
summon item ~ ~.25 ~ {PickupDelay:-1,Age:-1,Item:{id:"stone_button",components:{custom_data:{kill:1b}}},Tags:[is_cushion_display_item,this]}

# Copy data from player's item
data modify entity @n[type=item,tag=this] Item set from entity @s SelectedItem

# Dup security
data modify storage cushion_display:data temp.kill set from entity @n[type=item,tag=this] Item.components."minecraft:custom_data".kill
execute if data storage cushion_display:data temp{kill:1b} run function cushion_display:dup_security

# Bulk edit item's data
execute as @n[type=item,tag=this] run function cushion_display:modify_item_data

# Remove 1 item from the player's main hand (after so if player was holding 1 item, spawned item wouldn't find any data to retreive)
item modify entity @s[gamemode=!creative] weapon.mainhand cushion_display:remove_one_item

# Make item ride cushion
ride @n[type=item,tag=this] mount @n[type=cushion,tag=this]

playsound entity.cushion.sit block @a ~ ~ ~ 1 1

tag @n[type=item,tag=this] remove this
tag @n[type=cushion,tag=this] remove this