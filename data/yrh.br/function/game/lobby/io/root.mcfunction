#|| --- CrossRefs --- ||#
#|| @yrh.br:game/lobby/io/root
#||
#||    # function
#||        @yrh.br:game/tick
#||
#|| ------ End ------ ||#

## 次のtick
    data modify storage yrh.br:game PreviousPlayerCount set from storage yrh.br:game CurrentPlayerCount
## 今の人数
    execute store result storage yrh.br:game CurrentPlayerCount int 1.0 if entity @e[type=#yrh.br:joinable,tag=yrh.br.player.registered]

## 差を出す
    data modify storage yrh.br:game diff set compute default integer \
        {\
            type:"sub",\
            left:\
                {\
                    type:"storage","path":"CurrentPlayerCount",storage:"yrh.br:game"\
                },\
            right: \
                {\
                    type:"storage","path": "PreviousPlayerCount", storage: "yrh.br:game"\
                }\
        }

## 差が0なら一緒なのでやめる
    execute if predicate \
        {\
            type:"int_value_check",\
            value:\
                {\
                    type:"storage",\
                    path: "diff",\
                    storage: "yrh.br:game"\
                    },\
                test: 0\
        } run \
        return fail

## init
    data remove storage yrh.br:game tmp

## プレイヤーリスト
    ### 判定で使うので移す
        data modify storage yrh.br:game tmp.player_list set from storage yrh.br:game ConnectedPlayer

    ### 移したので作り直す
        data remove storage yrh.br:game ConnectedPlayer
        execute as @e[type=#yrh.br:joinable,tag=yrh.br.player.registered] run function yrh.br:game/lobby/io/create_player_list with entity @s

## 減った増えた？
    ### 減った
        execute if predicate \
            {\
                type:"int_value_check",\
                value:\
                    {\
                        type:"storage",\
                        path: "diff",\
                        storage: "yrh.br:game"\
                        },\
                    test: {\
                        "max": -1\
                    }\
            } \
            as @e[type=#yrh.br:joinable,tag=yrh.br.player.registered] run \
                function yrh.br:game/lobby/io/negative/root with entity @s

    ### 増えた
        execute if predicate \
            {\
                type:"int_value_check",\
                value:\
                    {\
                        type:"storage",\
                        path: "diff",\
                        storage: "yrh.br:game" \
                        },\
                    test: {\
                        "min": 1\
                    }\
            } run \
                function yrh.br:game/lobby/io/positive/root
