#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/reset_default
#||
#||    # function
#||        @yrh.br:player/item/using_item/branch
#||
#|| ------ End ------ ||#

## default
    data remove storage yrh.br:player tmp.player_data.elapsed_time
    tag @s remove yrh.br.item.using_item

## if function用に値を返す
    return 1
