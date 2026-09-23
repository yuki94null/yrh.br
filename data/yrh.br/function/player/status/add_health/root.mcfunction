#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/add_health/root
#||
#||    # function
#||        @yrh.br:player/status/down/add_down_health
#||        @yrh.br:player/status/each_heal
#||
#|| ------ End ------ ||#


## ヘルス加える
    $data modify storage yrh.br:status player_data."$(UUID)".health \
        set compute default integer \
            {\
                "type": "min", inputs:[\
                {\
                    "type":"add", \
                        inputs:[\
                            {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".health'}, \
                            {type:storage, storage:"yrh.br:status", path:"input"}\
                        ]\
                    },\
                {\
                    "type":"storage", path: "config.health", storage: "yrh.br:status"\
                }\
            ]\
        }
