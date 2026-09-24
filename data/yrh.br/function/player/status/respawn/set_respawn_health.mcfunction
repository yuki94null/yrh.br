#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/respawn/set_respawn_health
#||
#||    # function
#||        @yrh.br:player/status/respawn/root
#||
#|| ------ End ------ ||#

## inputをconfigから取得
    data modify storage yrh.br:status input set from storage yrh.br:status config.respawn_health

## それを保ってヘルスを与える
    function yrh.br:player/status/set_health/root with entity @s
