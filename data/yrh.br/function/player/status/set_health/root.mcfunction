#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/set_health/root
#||
#||    # function
#||        @yrh.br:player/status/down/set_down_health
#||        @yrh.br:player/status/respawn/set_respawn_health
#||        @yrh.br:player/status/revive/set_revive_health
#||
#|| ------ End ------ ||#

## シールドセット
    $data modify storage yrh.br:status player_data."$(UUID)".health \
        set compute default integer \
            {\
                "type": "min", inputs:\
                    [\
                        {\
                            type:storage, storage:"yrh.br:status", path:'input'\
                        },\
                        {\
                            "type":"storage", path: "config.health", storage: "yrh.br:status"\
                        }\
                    ]\
            }

## status更新の共通処理
    function yrh.br:player/status/status_changed/root
