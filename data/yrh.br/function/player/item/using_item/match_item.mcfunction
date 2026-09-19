#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/match_item
#||
#||    # function
#||        @yrh.br:player/item/using_item/branch
#||
#|| ------ End ------ ||#

## 複製して置換しようとした結果をとる ( 置換できなかったら同一のデータなので良い )
    data modify storage yrh.br:player tmp.item set from storage yrh.br:player tmp.player_data.previous_item
    execute store success storage yrh.br:player tmp.Success byte 1.0 run data modify storage yrh.br:player tmp.item set from storage yrh.br:player tmp.player_data.current_item
