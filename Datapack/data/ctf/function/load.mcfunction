# Create objectives for death and kill tracking
scoreboard objectives add CTFdeath deathCount
scoreboard objectives add CTFkill playerKillCount

# Create objectives for has flag tracking
scoreboard objectives add has_blue_flag dummy
scoreboard objectives add has_red_flag dummy

# Add the teams and modify their settings
team add CTFBlue "CTFBlue"
team add CTFRed "CTFRed"

team modify CTFBlue color blue
team modify CTFRed color red

team modify CTFBlue friendlyFire false
team modify CTFRed friendlyFire false

team modify CTFBlue seeFriendlyInvisibles true
team modify CTFRed seeFriendlyInvisibles true