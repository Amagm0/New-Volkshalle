#タグを付与する
tag @e[team=volk.surveillance] add pvp_winner

#テレポート あとで座標を入力して先頭を消してください
#tp @a[team=volk.surveillance] x y z

#表示
tellraw @a ["",{"selector":"@e[tag=pvp_winner]"},{"text":"の勝利!!"}]

#全てのタグなどを削除
tag @a[tag=pvp_winner] remove pvp_winner
tag @a[tag=pvp_fight1] remove pvp_fight1
tag @a[tag=pvp_fight2] remove pvp_fight2
team leave volk.surveillance @a[team=volk.surveillance]

#リセットをかける
scoreboard players set #volk.gamenow volk.num 0
