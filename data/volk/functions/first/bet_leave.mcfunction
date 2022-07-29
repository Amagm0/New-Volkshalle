exeute if entity @s[scores={pvp_bet=100}] run scoreboard palyers add @s casino 100
exeute if entity @s[scores={pvp_bet=1000}] run scoreboard palyers add @s casino 1000
scoreboard players set @s pvp_bet 0
tag @s remove pvp_wait100_1
tag @s remove pvp_wait100_2
tag @s remove pvp_wait1000_1
tag @s remove pvp_wait1000_2
execute unless entity @a[tag=pvp_wait100_1] run tag @a[tag=pvp_wait100_2] add pvp_wait100_1
execute if entity @a[tag=pvp_wait100_1,tag=pvp_wait100_2] run tag @a remove pvp_wait100_2
execute unless entity @a[tag=pvp_wait1000_1] run tag @a[tag=pvp_wait1000_2] add pvp_wait1000_1
execute if entity @a[tag=pvp_wait1000_1,tag=pvp_wait1000_2] run tag @a remove pvp_wait1000_2
tellraw @s ["PvPの参加を辞退しました"]
