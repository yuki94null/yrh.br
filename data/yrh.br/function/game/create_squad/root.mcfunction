#|| --- CrossRefs --- ||#
#|| @yrh.br:game/create_squad/root
#||
#||    # function
#||        @yrh.br:game/start/root
#||
#|| ------ End ------ ||#

## 人数チェック
    $execute \
        if predicate \
            {\
                type:"int_value_check",\
                    value: {type:"storage",path:"join.count",storage:"yrh.br:game"},\
                    test:{max:{type:"storage",path:"config.$(mode).unit",storage:"yrh.br:game"}}\
            } run \
                    return 0

## init
    data remove storage yrh.br:game tmp
    data remove storage yrh.br:game squads
    $data modify storage yrh.br:game tmp.mode set value "$(mode)"
    $data modify storage yrh.br:game squads append from storage yrh.br:game config.squad_template.$(mode)

## 一部隊の人数
    $data modify storage yrh.br:game tmp.unit set from storage yrh.br:game config.$(mode).unit

## joinしてる人数
    data modify storage yrh.br:game tmp.count set compute default integer {type:"sub", left:{type:"storage",path:"join.count",storage:"yrh.br:game"},right:1}

## join list
    data modify storage yrh.br:game tmp.player_list set from storage yrh.br:game join.list

## 順に部隊に入れていく
    function yrh.br:game/create_squad/loop with storage yrh.br:game tmp

## 最後の部隊人数のデータだけ調整
    execute store result storage yrh.br:game squads[-1].alive_count int 1.0 run data get storage yrh.br:game squads[-1].members

## store 用のreturn 1
    return 1
