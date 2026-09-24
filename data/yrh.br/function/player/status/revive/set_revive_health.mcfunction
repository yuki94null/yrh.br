#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/revive/set_revive_health
#||
#||    # function
#||        @yrh.br:player/status/revive/root
#||
#|| ------ End ------ ||#

## inputをconfigから取得
    data modify storage yrh.br:status input set from storage yrh.br:status config.revive_health

## それを保ってヘルスを与える
    function yrh.br:player/status/set_health/root with entity @s
