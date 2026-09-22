#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/count_item/set_count
#||
#||    # function
#||        @yrh.br:player/item/count_item/loop
#||
#|| ------ End ------ ||#

## 特定のidを持つアイテムの個数を取得
    $execute store result storage yrh.br:player player_data."$(UUID)".item[].$(id).count int 1.0 run \
        clear @s *[custom_data~{yrhbr:{item:{id:"$(id)",display_item:false}}}] 0
