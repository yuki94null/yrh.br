#|| --- CrossRefs --- ||#
#|| @yrh.br:status/load
#||
#||    # function
#||        @yrh.br:load
#||
#|| ------ End ------ ||#

## remove
    data remove storage yrh.br:status config

## プレイヤーの状態を定義
    data modify storage yrh.br:status config.state set value [ "alive", "down", "dead" ]

## ステータスの最大値
    data modify storage yrh.br:status config.health set value 100b

## 状態遷移時のヘルス
    data modify storage yrh.br:status config.down_health set value 100b
    data modify storage yrh.br:status config.revive_health set value 25b
    data modify storage yrh.br:status config.respawn_health set value 100b