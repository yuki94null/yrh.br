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
    ### heal
        data modify storage yrh.br:item config.item set value \
        [\
            {id:small_health,Time:120, Shield:0b, Health:25b},\
            {id:small_shield,Time:60, Shield:25b, Health:0b},\
            {id:large_health,Time:240, Shield:0b, Health:100b},\
            {id:large_shield,Time:120, Shield:100b, Health:0b},\
            {id:all_heal,Time:300, Shield:100b, Health:100b}\
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
