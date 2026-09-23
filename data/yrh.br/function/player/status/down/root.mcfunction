#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/down/root
#||
#||    # function
#||        @yrh.br:player/status/take_damage/root
#||
#|| ------ End ------ ||#

## init
    data remove storage yrh.br:player tmp.UUID
    $data modify storage yrh.br:player tmp.UUID set value $(UUID)

## 一旦state保存
    data remove storage yrh.br:player tmp.state
    $data modify storage yrh.br:player tmp.state set from storage yrh.br:status player_data."$(UUID)".state

## 死んでたら何もしない
    execute if data storage yrh.br:player tmp{state:"dead"} run return fail

## すでにダウンしてたらdead
    execute if data storage yrh.br:player tmp{state:"down"} run return run function yrh.br:player/status/dead/root with storage yrh.br:player tmp

## downに設定
    $data modify storage yrh.br:status player_data."$(UUID)".state set from storage yrh.br:status config.state[1]

## ダウン体のヘルスを設定
    function yrh.br:player/status/down/add_down_health

## スクアッドに入ってなければ終わり
    $execute if data storage yrh.br:player player_data."$(UUID)"{in_squads:0b} run return fail

## データを取得
    function yrh.br:player/game/get_own_squad_index/root with storage yrh.br:player tmp

## スクアッド側もdownにして、alive countを減らす それに伴った処理を起こす
    function yrh.br:player/status/down/in_squad with storage yrh.br:player tmp
