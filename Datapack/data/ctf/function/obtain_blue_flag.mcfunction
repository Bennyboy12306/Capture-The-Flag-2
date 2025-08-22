# Set scoreboard score for has blue flag
scoreboard players set @s has_blue_flag 1
# Send message letting the player know they have picked up the blue flag
tellraw @s ["",{"text":"You picked up the "},{"text":"Blue Flag","bold":true,"color":"dark_blue"}]
# Remove the advancement so this can be triggered again
advancement revoke @s only ctf:ctf/get_blue_flag