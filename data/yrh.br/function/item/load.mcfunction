#|| --- CrossRefs --- ||#
#|| @yrh.br:item/load
#||
#||    # function
#||        @yrh.br:load
#||
#|| ------ End ------ ||#

## remove
    data remove storage yrh.br:item config

## item
#   要件:
#       id: アイテムカウントをここのデータから取得する
#       Time: using_itemの処理を行うまでの時間(tick)
#       Shield / Health: 回復アイテムの回復量
##
    ### heal
        data modify storage yrh.br:item config.item set value \
        [\
            {category:"heal",id:small_health,Time:120, Shield:0b, Health:25b},\
            {category:"heal",id:small_shield,Time:60, Shield:25b, Health:0b},\
            {category:"heal",id:large_health,Time:240, Shield:0b, Health:100b},\
            {category:"heal",id:large_shield,Time:120, Shield:100b, Health:0b},\
            {category:"heal",id:all_heal,Time:300, Shield:100b, Health:100b}\
        ]

        # #### small health
        #     data modify storage yrh.br:item config.item append value {small_health:{Time:120, Shield:0b, Health:25b}}
        # #### small shield
        #     data modify storage yrh.br:item config.item append value {small_shield:{Time:60, Shield:25b, Health:0b}}
        # #### large health
        #     data modify storage yrh.br:item config.item append value {large_health:{Time:240, Shield:0b, Health:100b}}
        # #### large shield
        #     data modify storage yrh.br:item config.item append value {large_shield:{Time:120, Shield:100b, Health:0b}}
        # #### all_heal
        #     data modify storage yrh.br:item config.item append value {all_heal:{Time:300, Shield:100b, Health:100b}}

## アーマーの最大値
    data modify storage yrh.br:item config.armor set value [0b, 25b, 50b, 75b, 100b]
