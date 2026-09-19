#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/add_health
#||
#||    # function
#||        @yrh.br:debug/1_heal_health
#||        @yrh.br:player/status/each_heal
#||
#|| ------ End ------ ||#


## ヘルス加える
    $data modify storage yrh.br:status player_data."$(UUID)".Health \
        set compute default integer \
            {\
                "type": "min", inputs:[\
                {\
                    "type":"add", \
                        inputs:[\
                            {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".Health'}, \
                            {type:storage, storage:"yrh.br:status", path:"input"}\
                        ]\
                    },\
                {\
                    "type":"storage", path: "config.Health", storage: "yrh.br:status"\
                }\
            ]\
        }
