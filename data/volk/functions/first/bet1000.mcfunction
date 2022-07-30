#1000coin賭ける用
#看板にこのfunctionをさせる
tag @s[tag=pvp_join_bet100] remove pvp_join_bet100
tag @s[tag=!pvp_join_bet100,tag=!pvp_join_bet1000] add pvp_join_bet1000
tag @s[tag=pvp_wait100] remove pvp_wait100
tag @s[tag=!pvp_wait1000,tag=!pvp_wait100] add pvp_wait1000
scoreboard players set @s pvp_bet 1000
tellraw @s ["1000coin賭けのPvPを選択しました!"]

#試合中でなければsecondへ
#まだ不明
