#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/set_shield/root
#||
#|| ------ End ------ ||#

## シールドセット
    $data modify storage yrh.br:status player_data."$(UUID)".shield \
        set compute default integer \
            {\
                "type": "min", inputs:\
                    [\
                        {\
                            type:storage, storage:"yrh.br:status", path:'input'\
                        },\
                        {\
                            "type":"storage", path:'player_data."$(UUID)".max_shield', storage: "yrh.br:status"\
                        }\
                    ]\
            }

## シールド更新
    $function yrh.br:player/item/equipment/armor/update_armor/root with storage yrh.br:status player_data."$(UUID)"

## status更新の共通処理
    function yrh.br:player/status/status_changed/root