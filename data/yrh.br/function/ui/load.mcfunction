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
    ### heal
        data modify storage yrh.br:ui config.radial_menu.heal set value \
            {\
                cancel: true,\
                contents:\
                    [\
                        {id:"yrh.br:all_heal"},{id:"yrh.br:small_health"},{id:"yrh.br:large_health"},{id:"yrh.br:small_shield"},{id:"yrh.br:large_shield"}\
                ]\
            }

    ### throwable
        data modify storage yrh.br:ui config.radial_menu.throwable set value \
            {\
                contents:\
                    [\
                        {id:"yrh.br:all_heal"},{id:"yrh.br:small_health"},{id:"yrh.br:large_health"},{id:"yrh.br:large_health"}\
                ]\
            }