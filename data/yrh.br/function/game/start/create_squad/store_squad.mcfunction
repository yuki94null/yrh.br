#|| --- CrossRefs --- ||#
#|| @yrh.br:game/start/create_squad/store_squad
#||
#||    # function
#||        @yrh.br:game/start/create_squad/loop
#||
#|| ------ End ------ ||#

## 一番うしろ(appendした)部隊に入れる
    $data modify storage yrh.br:game squads[-1].members append value {state:"alive",UUID:$(UUID),name:"$(name)"}

## どの部隊かを保存
    $data modify storage yrh.br:game player_data."$(UUID)".squad_index set from storage yrh.br:game tmp.index

$data modify storage yrh.br:player player_data."$(UUID)".in_squads set value 1b