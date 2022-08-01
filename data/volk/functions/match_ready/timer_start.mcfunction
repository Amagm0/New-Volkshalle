#フォルクスハレ-マッチング&試合準備
#タイマー
scoreboard players remove #volk.timer_sec volk.num 1
bossbar set volk:timer name [{"text":"試合時間 : ","color":"green"},{"score":{"objective": "volk.num","name": "#volk.timer_sec"},"color":"green"}]
execute store result bossbar volk:timer value run scoreboard players get #volk.timer_sec volk.num
execute if score #volk.timer_sec volk.num matches 1.. run schedule function volk:match_ready/timer_start 1s
