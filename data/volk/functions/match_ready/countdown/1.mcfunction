#フォルクスハレ-マッチング&試合準備
#カウントダウン開始
#残り1s
title @a[team=volk.surveillance] times 0 30 10
title @a[team=volk.surveillance] title [{"text":"-[","color":"gold"},{"text":"1","color":"red"},{"text":"]-","color":"gold"}]
execute as @a[team=volk.surveillance] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1 1
schedule function volk:match_ready/countdown/0 1s
