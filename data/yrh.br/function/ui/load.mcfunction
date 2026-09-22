#|| --- CrossRefs --- ||#
#|| @yrh.br:ui/load
#||
#||    # function
#||        @yrh.br:load
#||
#|| ------ End ------ ||#

## remove
    data remove storage yrh.br:ui config

## radial menu
#   要件: 
#       config.radial_menu.category[].id
#           category: 同じメニューに表示する際ための
#           []: メニューのセレクション
#           id: lootで参照するアイテムid
#
#       cancel: 中央にキャンセル択を置くかどうか
##
    ### heal
        data modify storage yrh.br:ui config.radial_menu.heal set value \
            {\
                cancel: true,\
                contents:\
                    [\
                        {id:"all_heal"},{id:"small_health"},{id:"large_health"},{id:"large_shield"},{id:"small_shield"}\
                ]\
            }

    ### throwable
        data modify storage yrh.br:ui config.radial_menu.throwable set value \
            {\
                contents:\
                    [\
                        {id:"all_heal"},{id:"small_health"},{id:"large_health"},{id:"large_health"}\
                ]\
            }