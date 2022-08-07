#フォルクスハレ試合
#タグ付与・削除
tag @a[team=volk.surveillance] remove pvp_join_bet100
tag @r[tag=!pvp_fight1,tag=!pvp_fight2,team=volk.surveillance] add pvp_fight1
tag @r[tag=!pvp_fight1,tag=!pvp_fight2,team=volk.surveillance] add pvp_fight2

#死亡確認and退出確認
execute if entity @e[team=volk.surveillance,tag=pvp_fight1] unless entity @e[team=volk.surveillance,tag=pvp_fight2] run function volk:match_start/result/winner
execute if entity @e[team=volk.surveillance,tag=pvp_fight2] unless entity @e[team=volk.surveillance,tag=pvp_fight1] run function volk:match_start/result/winner
execute unless entity @e[team=volk.surveillance,tag=pvp_fight1] unless entity @e[team=volk.surveillance,tag=pvp_fight2] run function volk:match_start/result/drow
