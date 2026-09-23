#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/take_damage/root
#||
#|| ------ End ------ ||#

# as target
# yrh.br:status input
# 

## シールドから削る
    $data modify storage yrh.br:status player_data."$(UUID)".shield \
        set compute default integer \
            {"type":"sub", \
                left:{type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".shield'}, \
                right: {type:storage, storage:"yrh.br:status", path:"input"}\
            }

## マイナスならヘルスも
    $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".shield', storage:"yrh.br:status"}, test: {"max": 0}} run \
    data modify storage yrh.br:status player_data."$(UUID)".health \
        set compute default integer \
            {"type":"add", \
                "inputs":[\
                    {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".health'}, \
                    {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".shield'}\
                ]\
            }

## 0でclamp
    ### health
        $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".health', storage:"yrh.br:status"}, test: {"max": 0}} run \
            data modify storage yrh.br:status player_data."$(UUID)".health set value 0b

    ### shield
        $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".shield', storage:"yrh.br:status"}, test: {"max": 0}} run \
            data modify storage yrh.br:status player_data."$(UUID)".shield set value 0b

## Down / Dead
    $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".health', storage:"yrh.br:status"}, test: {"max": 0}} run \
        function yrh.br:player/status/down/root with entity @s

## シールド更新
    $function yrh.br:player/item/equipment/armor/update_armor/root with storage yrh.br:status player_data."$(UUID)"

## status更新の共通処理
    function yrh.br:player/status/status_changed/root