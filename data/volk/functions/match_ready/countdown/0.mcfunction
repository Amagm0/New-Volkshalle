#フォルクスハレ-マッチング&試合準備
#カウントダウン開始
title @a[team=volk.surveillance] times 0 30 10
title @a[team=volk.surveillance] title [{"text":"-[","color":"gold"},{"text":" Start ","color":"green"},{"text":"]-","color":"gold"}]
execute as @a[team=volk.surveillance] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 2 1
#schedule function volk:match_ready/countdown/0 1s

#タイマー開始
scoreboard players set #volk.timer_sec volk.num 300

#こちらのボスバーの名前はfunctions/match_ready/timer_startにて随時書き換えています
bossbar add volk:timer ""
bossbar set volk:timer style notched_10
bossbar set volk:timer players @a[team=volk.surveillance]
bossbar set volk:timer max 300
function volk:match_ready/timer_start

#カウントダウン終了後処理
bossbar remove volk:countdown
