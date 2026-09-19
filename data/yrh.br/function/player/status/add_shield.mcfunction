#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/add_shield
#||
#||    # function
#||        @yrh.br:debug/1_heal_shield
#||        @yrh.br:player/status/each_heal
#||
#|| ------ End ------ ||#

## シールド加える
    $data modify storage yrh.br:status player_data."$(UUID)".Shield \
        set compute default integer \
            {\
                "type": "min", inputs:[\
                {\
                    "type":"add", \
                        inputs:[\
                            {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".Shield'}, \
                            {type:storage, storage:"yrh.br:status", path:'input'}\
                        ]\
                    },\
                {\
                    "type":"storage", path:'player_data."$(UUID)".MaxShield', storage: "yrh.br:status"\
                }\
            ]\
        }

## シールド更新
    $function yrh.br:player/item/equipment/armor/update_armor/root with storage yrh.br:status player_data."$(UUID)"
