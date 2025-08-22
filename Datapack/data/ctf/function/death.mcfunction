# If player has died and has the blue flag summon it in the world
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s container.* minecraft:iron_nugget[item_model="ctf:blue_flag"] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:item_name":{"color":"blue","text":"Blue Flag"},"minecraft:item_model":"ctf:blue_flag"}}}
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s weapon.offhand minecraft:iron_nugget[item_model="ctf:blue_flag"] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:item_name":{"color":"blue","text":"Blue Flag"},"minecraft:item_model":"ctf:blue_flag"}}}

# If player has died and has the blue flag remove this flag from their inventory
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s container.* minecraft:iron_nugget[item_model="ctf:blue_flag"] run clear @s minecraft:iron_nugget[item_model="ctf:blue_flag"]
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s weapon.offhand minecraft:iron_nugget[item_model="ctf:blue_flag"] run clear @s minecraft:iron_nugget[item_model="ctf:blue_flag"]

# If player has died and has the red flag summon it in the world
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s container.* minecraft:iron_nugget[item_model="ctf:red_flag"] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:item_name":{"color":"red","text":"Red Flag"},"minecraft:item_model":"ctf:red_flag"}}}
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s weapon.offhand minecraft:iron_nugget[item_model="ctf:red_flag"] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:item_name":{"color":"red","text":"Red Flag"},"minecraft:item_model":"ctf:red_flag"}}}

# If player has died and has the red flag remove this flag from their inventory
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s container.* minecraft:iron_nugget[item_model="ctf:red_flag"] run clear @s minecraft:iron_nugget[item_model="ctf:red_flag"]
execute as @a[tag=ctf] if score @s CTFdeath matches 1 if items entity @s weapon.offhand minecraft:iron_nugget[item_model="ctf:red_flag"] run clear @s minecraft:iron_nugget[item_model="ctf:red_flag"]

# Reset the CTFdeath score so this can be triggered again
scoreboard players reset @a[scores={CTFdeath=1..}] CTFdeath