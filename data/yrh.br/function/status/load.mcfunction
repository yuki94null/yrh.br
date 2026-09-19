#|| --- CrossRefs --- ||#
#|| @yrh.br:status/load
#||
#||    # function
#||        @yrh.br:load
#||
#|| ------ End ------ ||#

## プレイヤーの状態を定義
    data modify storage yrh.br:status config.state set value [ "alive", "down", "dead" ]

## ステータスの最大値
    data modify storage yrh.br:status config.Health set value 100b