# Reset Age of item so it will never dispawn
execute on passengers run data modify entity @s Age set value -1

# If cushion display does not have a passenger, reset it
execute unless predicate cushion_display:has_passenger at @s run function cushion_display:reset_cushion

# Test if block under is hopper and if so if it contains a cushion display item, if so reset the custom items
execute at @s positioned ~ ~-.25 ~ if block ~ ~ ~ hopper if items block ~ ~ ~ cushion_display:is_cushion_display * run function cushion_display:reset_hopper