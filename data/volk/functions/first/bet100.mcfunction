#100coin賭ける用
#看板にこのfunction実行をさせる
tag @s[tag=pvp_join_bet1000] remove pvp_join_bet1000
tag @s[tag=!pvp_join_bet100,tag=!pvp_join_bet1000] add pvp_join_bet100
tag @s[tag=pvp_wait1000] remove pvp_wait1000
tag @s[tag=!pvp_wait100,tag=!pvp_wait1000] add pvp_wait100
scoreboard players set @s pvp_bet 100
tellraw @s ["100coin賭けのPvPを選択しました!"]

#試合中でなけれsecondへ
#まだ不明
