#フォルクスハレ-マッチング&試合準備
#カウントダウン開始
#残り3s
title @a[team=volk.surveillance] times 0 30 10
title @a[team=volk.surveillance] title [{"text":"-[","color":"gold"},{"text":"  3  ","color":"green"},{"text":"]-","color":"gold"}]
execute as @a[team=volk.surveillance] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.5 1
schedule function volk:match_ready/countdown/2 1s
