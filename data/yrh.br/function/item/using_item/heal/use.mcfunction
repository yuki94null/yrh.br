#|| --- CrossRefs --- ||#
#|| @yrh.br:item/using_item/heal/use
#||
#||    # function
#||        @yrh.br:item/using_item/heal/all_heal/use
#||        @yrh.br:item/using_item/heal/large_health/use
#||        @yrh.br:item/using_item/heal/large_shield/use
#||        @yrh.br:item/using_item/heal/small_health/use
#||        @yrh.br:item/using_item/heal/small_shield/use
#||
#|| ------ End ------ ||#

## 回復量指定
    $function yrh.br:player/status/each_heal with storage yrh.br:item config.item[{id:"$(id)"}]

## アイテム減らす
    $clear @s *[custom_data~{yrhbr:{item:{id:"$(id)",display_item:false}}}] 1
