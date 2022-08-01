#フォルクスハレ-マッチング&試合準備
#カウントダウン開始
title @a[team=volk.surveillance] times 0 30 10
title @a[team=volk.surveillance] title [{"text":"-[","color":"gold"},{"text":"フォルクスハレ","color":"green"},{"text":"]-","color":"gold"}]
execute as @a[team=volk.surveillance] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
schedule function volk:match_ready/countdown/3 57s
scoreboard players set #volk.countdown volk.num 60

#ゲーム終了後、こちらのボスバー [volk:countdown] は削除してください
#ゲーム開始時に再度作成されます
bossbar add volk:countdown [{"text":"準備時間"}]
bossbar set volk:countdown players @a[team=volk.surveillance]
bossbar set volk:countdown max 60
bossbar set volk:countdown style notched_6
schedule function volk:match_ready/countdown/countdown 1t

#引継ぎ時のお願い
#下のコマンドにテレポート先のxyzを入力して、#を外してメモ状態を解除してください
#tp @a[team=volk.surveillance] x y z
#tp @a[team=volk.surveillance,sort=random] x y z
