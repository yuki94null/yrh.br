#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/reset_donot_elapse
#||
#|| ------ End ------ ||#

## donot elapse
    $data remove storage yrh.br:player player_data."$(UUID)".elapsed_time
    tag @s remove yrh.br.item.using_item