#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/each_heal
#||
#||    # function
#||        @yrh.br:item/using_item/heal/use
#||
#|| ------ End ------ ||#

## それぞれ回復するよ
    data remove storage yrh.br:status input
    $data modify storage yrh.br:status input set value $(shield)
    function yrh.br:player/status/add_shield/root with entity @s

    data remove storage yrh.br:status input
    $data modify storage yrh.br:status input set value $(health)
    function yrh.br:player/status/add_health/root with entity @s
