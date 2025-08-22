# Remove head display if no flags held
execute as @a[tag=ctf] unless score @s has_blue_flag matches 1 unless score @s has_red_flag matches 1 run item replace entity @s armor.head with air

# Equip Blue Flag display
execute as @a[tag=ctf] if score @s has_blue_flag matches 1 unless score @s has_red_flag matches 1 run item replace entity @s armor.head with iron_nugget[item_model="ctf:blue_flag_display",item_name={"color":"blue","text":"Blue Flag Display"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]

# Equip Red Flag display
execute as @a[tag=ctf] if score @s has_red_flag matches 1 unless score @s has_blue_flag matches 1 run item replace entity @s armor.head with iron_nugget[item_model="ctf:red_flag_display",item_name={"color":"red","text":"Red Flag Display"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]

# Equip Purple Flag display
execute as @a[tag=ctf] if score @s has_blue_flag matches 1 if score @s has_red_flag matches 1 run item replace entity @s armor.head with iron_nugget[item_model="ctf:purple_flag_display",item_name={"color":"dark_purple","text":"Both Flags Display"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]