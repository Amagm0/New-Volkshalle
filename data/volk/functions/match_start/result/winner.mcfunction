#タグを付与する
tag @e[team=volk.surveillance] add pvp_winner

#テレポート あとで座標を入力して先頭を消してください
#tp @a[team=volk.surveillance] x y z

#表示
title @a[team=volk.surveillance] title ["",{"text":"Winner : ","color":"gold"},{"selector":"@a[tag=pvp_winner]"}]
tellraw @a[team=volk.surveillance] ["",{"selector":"@a[tag=pvp_winner]"},{"text":"の勝利!!"}]
execute as @a[team=volk.surveillance] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5 1 

#全てのタグなどを削除
tag @a[tag=pvp_winner] remove pvp_winner
tag @a[tag=pvp_fight1] remove pvp_fight1
tag @a[tag=pvp_fight2] remove pvp_fight2
team remove volk.surveillance

#リセットをかける
scoreboard players set #volk.gamenow volk.num 0
