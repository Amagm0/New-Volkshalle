#exeute if entity @s[scores={pvp_bet=100}] run scoreboard players add @s casino 100
#exeute if entity @s[scores={pvp_bet=1000}] run scoreboard players add @s casino 1000

scoreboard players set @s pvp_bet 0
tag @s remove pvp_wait100
tag @s remove pvp_wait1000
tellraw @s ["PvPの参加を辞退しました"]
