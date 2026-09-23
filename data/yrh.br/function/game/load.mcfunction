#|| --- CrossRefs --- ||#
#|| @yrh.br:game/load
#||
#||    # function
#||        @yrh.br:load
#||
#|| ------ End ------ ||#

## 取りうる状態
    data modify storage yrh.br:game config.GameMode set value ["trio", "duo", "solo"]

## 部隊の人数
    data modify storage yrh.br:game config.trio.unit set value 3
    data modify storage yrh.br:game config.duo.unit set value 2
    data modify storage yrh.br:game config.solo.unit set value 1

## 余った人数(１部隊の数に満たない場合)を観戦にする
    data modify storage yrh.br:game config.OverFlowSpectators set value 1b

## チームの雛形
    data modify storage yrh.br:game config.squad_template.trio set value {members:[],alive_count:3,team_alive:true}
    data modify storage yrh.br:game config.squad_template.duo set value {members:[],alive_count:2,team_alive:true}
    data modify storage yrh.br:game config.squad_template.solo set value {members:[],alive_count:1,team_alive:true}

## デフォルト設定
    data modify storage yrh.br:game current_game set value {mode:"trio"}
