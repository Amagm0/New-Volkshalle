#死亡確認and退出確認
execute if entity @e[team=volk.surveillance,tag=pvp_fight1] unless entity @e[team=volk.surveillance,tag=pvp_fight2] run function volk:match_start/result/winner
execute if entity @e[team=volk.surveillance,tag=pvp_fight2] unless entity @e[team=volk.surveillance,tag=pvp_fight1] run function volk:match_start/result/winner
execute unless entity @e[team=volk.surveillance,tag=pvp_fight1] unless entity @e[team=volk.surveillance,tag=pvp_fight2] run function volk:match_start/result/draw
execute if score #volk.gamenow volk.num matches 1 if score #volk.timer_sec volk.num matches 0 run function volk:match_start/result/draw