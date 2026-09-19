#|| --- CrossRefs --- ||#
#|| @yrh.br:item/load
#||
#||    # function
#||        @yrh.br:load
#||
#|| ------ End ------ ||#

##
    ### heal
        #### small health
            data modify storage yrh.br:item config.small_health set value {Time:120, Shield:0b, Health:25b}
        #### small shield
            data modify storage yrh.br:item config.small_shield set value {Time:60, Shield:25b, Health:0b}
        #### large health
            data modify storage yrh.br:item config.large_health set value {Time:240, Shield:0b, Health:100b}
        #### large shield
            data modify storage yrh.br:item config.large_shield set value {Time:120, Shield:100b, Health:0b}
        #### all_heal
            data modify storage yrh.br:item config.all_heal set value {Time:300, Shield:100b, Health:100b}

## ステータスの最大値
    data modify storage yrh.br:item config.armor set value [0b, 25b, 50b, 75b, 100b]
