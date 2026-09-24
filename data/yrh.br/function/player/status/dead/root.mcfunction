#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/dead/root
#||
#||    # function
#||        @yrh.br:game/squad/check_squad_alive/dead_squad_member/loop
#||        @yrh.br:player/status/down/root
#||
#|| ------ End ------ ||#

## init
    data remove storage yrh.br:player tmp.UUID
    $data modify storage yrh.br:player tmp.UUID set value $(UUID)

## 一旦state保存
    data remove storage yrh.br:player tmp.state
    $data modify storage yrh.br:player tmp.state set from storage yrh.br:status player_data."$(UUID)".state

## tag外す
    tag @s remove yrh.br.player.status.state.down

## tagつける
    tag @s add yrh.br.player.status.state.dead

## deadに設定
    $data modify storage yrh.br:status player_data."$(UUID)".state set from storage yrh.br:status config.state[2]

## チームに入ってなければ終わり
    $execute if data storage yrh.br:player player_data."$(UUID)"{in_squads:0b} run return fail

## データを取得
    function yrh.br:player/game/get_own_squad_index/root with storage yrh.br:player tmp

## チーム側もdeadにして、alive countを減らす それに伴った処理を起こす
    function yrh.br:player/status/dead/in_squad with storage yrh.br:player tmp
