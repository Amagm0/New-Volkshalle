#もえかす writed
#フォルクスハレ-マッチング&試合準備
#マッチングシステム
execute store result score #volk.bet100_player volk.num if entity @a[tag=pvp_join_bet100]
execute if score #volk.gamenow volk.num matches 0 if score #volk.bet100_player volk.num matches 2 run function volk:match_ready/bet100
execute store result score #volk.bet1000_player volk.num if entity @a[tag=pvp_join_bet1000]
execute if score #volk.gamenow volk.num matches 0 if score #volk.bet1000_player volk.num matches 2 run function volk:match_ready/bet1000

#あまぐも writed
#フォルクスハレ試合中
execute if score #volk.gamenow volk.num matches 1 run funciton volk:match_start/tick

#installに書けない初期設定でござるよ↓
execute unless score #volk.gamenow volk.num matches -2147483648..2147483647 run scoreboard players set #volk.gamenow volk.num 0
