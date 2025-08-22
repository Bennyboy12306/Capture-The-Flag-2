# Set scoreboard score for has red flag
scoreboard players set @s has_red_flag 1
# Send message letting the player know they have picked up the red flag
tellraw @s ["",{"text":"You picked up the "},{"text":"Red Flag","bold":true,"color":"red"}]
# Remove the advancement so this can be triggered again
advancement revoke @s only ctf:ctf/get_red_flag