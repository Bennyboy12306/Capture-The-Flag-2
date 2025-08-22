# Call death and kill events when player dies or gets a kill
execute as @a[scores={CTFdeath=1..}] at @s run function ctf:death
execute as @a[scores={CTFkill=1..}] at @s run function ctf:kill

# Clear has flags scores if player gets rid of flag
execute as @a[tag=ctf] unless items entity @s container.* minecraft:iron_nugget[item_model="ctf:blue_flag"] at @s run scoreboard players reset @s has_blue_flag
execute as @a[tag=ctf] unless items entity @s container.* minecraft:iron_nugget[item_model="ctf:red_flag"] at @s run scoreboard players reset @s has_red_flag

# Call head and message display updates
function ctf:update_head_display
function ctf:update_message_display