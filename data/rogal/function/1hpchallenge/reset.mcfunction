##
 # reset.mcfunction
 # 1hpchallenge
 #
 # Created by rogal.
##
tellraw @a "123"
scoreboard objectives add dethCounter deathCount
scoreboard objectives add DayCounter dummy

team add deth "Deth"
team modify deth color red