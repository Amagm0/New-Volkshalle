#1000coin賭ける用
#看板にこのfunctionをさせる
tag @s[tag=pvp_join_bet100] remove pvp_join_bet100
tag @s[tag=!pvp_join_bet100,tag=!pvp_join_bet1000] add pvp_join_bet1000
scoreboard players set @s pvp_bet 1000
tellraw @s ["1000coin賭けのPvPを選択しました!"]

#試合中でなければsecondへ
