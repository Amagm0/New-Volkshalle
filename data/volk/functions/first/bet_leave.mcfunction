#あらかじめお金を引き落とすのであれば下2行のシャープを消す
#exeute if entity @s[scores={pvp_bet=100}] run scoreboard players add @s casino 100
#exeute if entity @s[scores={pvp_bet=1000}] run scoreboard players add @s casino 1000

#キャンセル処理
scoreboard players set @s pvp_bet 0
tag @s[tag=pvp_join_bet100] remove pvp_join_bet100
tag @s[tag=pvp_join_bet1000] remove pvp_join_bet1000
tellraw @s ["PvPの参加を辞退しました"]
