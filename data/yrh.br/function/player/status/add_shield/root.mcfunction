#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/add_shield/root
#||
#||    # function
#||        @yrh.br:player/status/each_heal
#||
#|| ------ End ------ ||#

## シールド加える
    $data modify storage yrh.br:status player_data."$(UUID)".shield \
        set compute default integer \
            {\
                "type": "min", inputs:[\
                {\
                    "type":"add", \
                        inputs:[\
                            {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".shield'}, \
                            {type:storage, storage:"yrh.br:status", path:'input'}\
                        ]\
                    },\
                {\
                    "type":"storage", path:'player_data."$(UUID)".max_shield', storage: "yrh.br:status"\
                }\
            ]\
        }

## シールド更新
    $function yrh.br:player/item/equipment/armor/update_armor/root with storage yrh.br:status player_data."$(UUID)"
