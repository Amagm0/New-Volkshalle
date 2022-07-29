#100coin賭ける用
#看板にこのfunction実行をさせる
tag @s[tag=pvp_join_bet1000] remove pvp_join_bet1000
tag @s[tag=!pvp_join_bet100,tag=!pvp_join_bet1000] add pvp_join_bet100
tag @s[tag=!pvp_wait100_1,tag=!pvp_wait100_2] add pvp_wait100_1
execute if entity @a[tag=pvp_wait100_1] run tag @s[tag=!pvp_wait100_1,tag=!pvp_wait_2] add pvp_wait100_2
scoreboard players set @s pvp_bet 100
tellraw @s ["100coin賭けのPvPを選択しました!"]

#試合中でなければ2番へ

execute if entity @a[tag=pvp_wait100_2] unless entity @a[tag=pvp_now] run function name:functionname
