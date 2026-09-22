#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/reset_fail
#||
#||    # function
#||        @yrh.br:player/item/using_item/branch
#||
#|| ------ End ------ ||#

## fail
    data modify storage yrh.br:player tmp.player_data.elapsed_time set value 1
    tag @s remove yrh.br.item.using_item