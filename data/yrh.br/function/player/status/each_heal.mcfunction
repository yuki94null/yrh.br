#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/each_heal
#||
#||    # function
#||        @yrh.br:item/using_item/heal/use
#||
#|| ------ End ------ ||#

## それぞれ回復するよ
    data remove storage yrh.br:status input
    $data modify storage yrh.br:status input set value $(Shield)
    function yrh.br:player/status/add_shield with entity @s

    data remove storage yrh.br:status input
    $data modify storage yrh.br:status input set value $(Health)
    function yrh.br:player/status/add_health with entity @s
