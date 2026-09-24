#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/respawn/root
#||
#|| ------ End ------ ||#

## deadじゃなければやめる
    $execute unless data storage yrh.br:status player_data."$(UUID)"{state:"dead"} run return fail

## init
    data remove storage yrh.br:player tmp.UUID
    $data modify storage yrh.br:player tmp.UUID set value $(UUID)

## tag外す
    tag @s remove yrh.br.player.status.state.dead

## aliveに設定
    $data modify storage yrh.br:status player_data."$(UUID)".state set from storage yrh.br:status config.state[0]

## 蘇生体のヘルスを設定
    function yrh.br:player/status/respawn/set_respawn_health

## スクアッドに入ってなければ終わり
    $execute if data storage yrh.br:player player_data."$(UUID)"{in_squads:0b} run return fail

## データを取得
    function yrh.br:player/game/get_own_squad_index/root with storage yrh.br:player tmp

## スクアッド側もaliveにして、alive countを減らす それに伴った処理を起こす
    function yrh.br:player/status/respawn/in_squad with storage yrh.br:player tmp
