# Remove message display if no flags held
execute as @a[tag=ctf] unless score @s has_blue_flag matches 1 unless score @s has_red_flag matches 1 run title @s reset

# Show Blue Flag message display
execute as @a[tag=ctf] if score @s has_blue_flag matches 1 unless score @s has_red_flag matches 1 run title @s actionbar {"text":"\ud83c\udff4","color":"blue"}

# Show Red Flag message display
execute as @a[tag=ctf] if score @s has_red_flag matches 1 unless score @s has_blue_flag matches 1 run title @s actionbar {"text":"\ud83c\udff4","color":"red"}

# Show Purple Flag message display
execute as @a[tag=ctf] if score @s has_blue_flag matches 1 if score @s has_red_flag matches 1 run title @s actionbar {"text":"\ud83c\udff4","color":"dark_purple"}