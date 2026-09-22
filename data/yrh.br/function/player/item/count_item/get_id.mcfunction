#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/count_item/get_id
#||
#||    # function
#||        @yrh.br:player/item/count_item/loop
#||
#|| ------ End ------ ||#

## あらかじめ作っているデータからidを取得
$say $(Index)
    $data modify storage yrh.br:player tmp.id set from storage yrh.br:item config.item[$(Index)].id
