#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/merge_data
#||
#||    # function
#||        @yrh.br:player/item/using_item/root
#||
#|| ------ End ------ ||#

## 元のデータに統合
    ### いったん消して
        $data remove storage yrh.br:player player_data."$(UUID)".using_item
    ### セット
        $data modify storage yrh.br:player player_data."$(UUID)".using_item set from storage yrh.br:player tmp.player_data
