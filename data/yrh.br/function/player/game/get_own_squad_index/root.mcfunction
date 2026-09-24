#|| --- CrossRefs --- ||#
#|| @yrh.br:player/game/get_own_squad_index/root
#||
#||    # function
#||        @yrh.br:player/status/dead/root
#||        @yrh.br:player/status/down/root
#||        @yrh.br:player/status/respawn/root
#||        @yrh.br:player/status/revive/root
#||
#|| ------ End ------ ||#

## 取得
    data remove storage yrh.br:player tmp.squad_index
    $data modify storage yrh.br:player tmp.squad_index set from storage yrh.br:game player_data."$(UUID)".squad_index
