# Mode BELEK activé, I don't want to create scoreboards
data modify storage cushion_display:data temp.slot set value 0b
function cushion_display:reset_hopper_scan with storage cushion_display:data temp
data modify storage cushion_display:data temp.slot set value 1b
function cushion_display:reset_hopper_scan with storage cushion_display:data temp
data modify storage cushion_display:data temp.slot set value 2b
function cushion_display:reset_hopper_scan with storage cushion_display:data temp
data modify storage cushion_display:data temp.slot set value 3b
function cushion_display:reset_hopper_scan with storage cushion_display:data temp
data modify storage cushion_display:data temp.slot set value 4b
function cushion_display:reset_hopper_scan with storage cushion_display:data temp