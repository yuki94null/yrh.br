#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/branch
#||
#||    # function
#||        @yrh.br:player/item/using_item/root
#||
#|| ------ End ------ ||#

## タイムスタンプ
    ### 現在時間を保存
        execute store result storage yrh.br:player tmp.player_data.current_time long 1.0 run time query gametime

    ### 1tick以内じゃなかったら経過時間をリセット
        execute if entity @s[tag=yrh.br.item.using_item] unless predicate {type:"int_value_check",value:\
            {\
                type:"sub",\
                    left:{type:"storage",path:'tmp.player_data.current_time', storage:"yrh.br:player"},\
                    right:{type:"storage",path:'tmp.player_data.previous_time', storage:"yrh.br:player"}\
            },\
            test:{max:1}\
        } run \
            data remove storage yrh.br:player tmp.player_data.elapsed_time

## アイテムデータ
    ### 前回のやつと違ったらやばい ( store successで判定 (0で成功) )
        execute if entity @s[tag=yrh.br.item.using_item] run function yrh.br:player/item/using_item/match_item

## 次のティック用
    ### タグ付け
        tag @s add yrh.br.item.using_item
        tag @s add yrh.br.item.using_item.this_tick

    ### 前回のタイムスタンプ
        data modify storage yrh.br:player tmp.player_data.previous_time set from storage yrh.br:player tmp.player_data.current_time

    ### 前回のアイテムとして格納
        data modify storage yrh.br:player tmp.player_data.previous_item set from storage yrh.br:player tmp.player_data.current_item

## やばかったらリセット
    execute unless data storage yrh.br:player tmp{Success:0b} run return run function yrh.br:player/item/using_item/reset_fail with entity @s

## タイマー進める
    data modify storage yrh.br:player tmp.player_data.elapsed_time set compute default integer {type:"add",inputs:[1, {type:"storage", path:'tmp.player_data.elapsed_time', storage:"yrh.br:player"}]}

## マクロで飛ばしてアイテムの種類ごとに実行
    $execute \
        if predicate \
            {type:"int_value_check", value:\
                {type:"sub",\
                    left:{type:"storage",path:"tmp.player_data.elapsed_time",storage:"yrh.br:player"},\
                    right:{type:"storage",path:'config.item[{id:"$(id)"}].Time',storage:"yrh.br:item"}\
                },\
            test:{min:1}\
            } \
        if function yrh.br:player/item/using_item/reset_default run \
            function yrh.br:item/using_item/$(id)/use
