#1000coin賭ける用
#看板にこのfunctionをさせる
tag @s[tag=pvp_join_bet100] remove pvp_join_bet100
tag @s[tag=!pvp_join_bet100,tag=!pvp_join_bet1000] add pvp_join_bet1000
tag @s[tag=!pvp_wait1000_1,tag=!pvp_wait1000_2] add pvp_wait1000_1
execute if entity @a[tag=pvp_wait1000_1] run tag @s[tag=!pvp_wait1000_1,tag=!pvp_wait1000_2] add pvp_wait1000_2
scoreboard players set @s pvp_bet 1000
tellraw @s ["1000coin賭けのPvPを選択しました!"]
