#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/take_damage/root
#||
#|| ------ End ------ ||#

# as target
# yrh.br:status input
# 

## シールドから削る
    $data modify storage yrh.br:status player_data."$(UUID)".Shield \
        set compute default integer \
            {"type":"sub", \
                left:{type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".Shield'}, \
                right: {type:storage, storage:"yrh.br:status", path:"input"}\
            }

## マイナスならヘルスも
    $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".Shield', storage:"yrh.br:status"}, test: {"max": 0}} run \
    data modify storage yrh.br:status player_data."$(UUID)".Health \
        set compute default integer \
            {"type":"add", \
                "inputs":[\
                    {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".Health'}, \
                    {type:storage, storage:"yrh.br:status", path:'player_data."$(UUID)".Shield'}\
                ]\
            }

## 0でclamp
    ### Health
        $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".Health', storage:"yrh.br:status",}, test: {"max": 0}} run \
            data modify storage yrh.br:status player_data."$(UUID)".Health set value 0b
    ### Shield
        $execute if predicate {type:"int_value_check", value: {type: "storage", path: 'player_data."$(UUID)".Shield', storage:"yrh.br:status"}, test: {"max": 0}} run \
            data modify storage yrh.br:status player_data."$(UUID)".Shield set value 0b

## シールド更新
    $function yrh.br:player/item/equipment/armor/update_armor/root with storage yrh.br:status player_data."$(UUID)"