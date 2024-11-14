##
 # main.mcfunction
 # 1hpchallenge
 #
 # Created by rogal.
##
attribute @r[limit=1] minecraft:generic.max_health base set 1
execute store result score $day DayCounter run time query day
title @a actionbar [{"text":"Day ","color":"yellow"},{"score":{"objective":"DayCounter","name":"$day"},"color":"yellow"}]
execute as @a[scores={dethCounter=1..}] run team join deth
execute as @a[team=deth] run gamemode spectator @s
execute as @a[scores={dethCounter=1..}] run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" Finally dropped out","color":"dark_red"}]
execute as @a[scores={dethCounter=1..}] run gamerule doDaylightCycle false 
execute as @a[scores={dethCounter=1..}] run gamerule doWeatherCycle false 
execute as @a[scores={dethCounter=1..}] run scoreboard players set @s dethCounter 0