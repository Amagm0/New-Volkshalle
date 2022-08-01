#フォルクスハレ-マッチング&試合準備
#準備時間
#準備時間のカウントダウン処理
bossbar set volk:countdown name [{"text":"準備時間 "},{"score":{"objective":"volk.num","name":"#volk.countdown"}},{"text":"秒"}]
execute if score #volk.countdown volk.num matches 21.. run bossbar set volk:countdown color green
execute if score #volk.countdown volk.num matches 11..20 run bossbar set volk:countdown color yellow
execute if score #volk.countdown volk.num matches 1..10 run bossbar set volk:countdown color red
execute if score #volk.countdown volk.num matches 1.. store result bossbar volk:countdown value run scoreboard players get #volk.countdown volk.num
execute if score #volk.countdown volk.num matches 1.. run schedule function volk:match_ready/countdown/countdown 1s
scoreboard players remove #volk.countdown volk.num 1
