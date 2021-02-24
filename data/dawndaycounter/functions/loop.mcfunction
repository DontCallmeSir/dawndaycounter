#Setup the scoreboard
scoreboard objectives add Time dummy "Time of day"

# Add the new day
execute store result score $daytime Time run time query daytime
execute store result score $day Time run time query day

# Show the title
execute if score $daytime Time matches 0 run title @a title [{"text":"Dawn of Day "},{"score":{"objective":"Time","name":"$day"}}]