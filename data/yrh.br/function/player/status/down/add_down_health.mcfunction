#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/down/add_down_health
#||
#||    # function
#||        @yrh.br:player/status/down/root
#||
#|| ------ End ------ ||#

## inputをconfigから取得
    data modify storage yrh.br:status input set from storage yrh.br:status config.down_health
## それを保ってヘルスを与える
    function yrh.br:player/status/add_health/root with entity @s