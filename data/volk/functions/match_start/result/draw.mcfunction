#テレポート あとで座標を入力して先頭を消してください
#tp @a[team=volk.surveillance] x y z

#表示
title @a[team=volk.surveillance] title ["",{"text":"- Draw -","color":"blue"}]
tellraw @a[team=volk.surveillance] ["",{"text":"引き分け!"}]
execute as @a[team=volk.surveillance] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1 1 

#全てのタグなどを削除
scoreboard players set @a[team=volk.surveillance] pvp_bet 0
tag @a[tag=pvp_fight1] remove pvp_fight1
tag @a[tag=pvp_fight2] remove pvp_fight2
team remove volk.surveillance

#リセットをかける
scoreboard players set #volk.gamenow volk.num 0
