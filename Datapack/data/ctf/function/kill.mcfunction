# If the player has gotten a kill give them a skull point
execute as @a[tag=ctf] if score @s CTFkill matches 1 at @s run give @s minecraft:iron_nugget[minecraft:item_model="ctf:skull_point", minecraft:item_name="Skull Point"]

# Reset the CTFkill score so this can be triggered again
scoreboard players reset @a[scores={CTFkill=1..}] CTFkill