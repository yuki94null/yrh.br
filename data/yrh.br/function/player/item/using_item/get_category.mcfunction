#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/get_category
#||
#||    # function
#||        @yrh.br:player/item/using_item/handitem
#||
#|| ------ End ------ ||#

## loadで作ったstorageから取得
    $data modify storage yrh.br:player tmp.category set from storage yrh.br:item config.item[{id:"$(id)"}].category
