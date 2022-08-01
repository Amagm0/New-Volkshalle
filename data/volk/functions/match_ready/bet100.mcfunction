#フォルクスハレ-マッチング&試合準備
#試合準備-100ベット

#試合開始判断(マッチングが重複するのを防ぐため)
scoreboard players set #volk.gamenow volk.num 1

#チーム分け
team add volk.surveillance [{"text":"監視用チーム","color":"gold"}]
team join volk.surveillance @a[tag=pvp_join_bet100]

#カウントダウン開始
function volk:match_ready/countdown/start
