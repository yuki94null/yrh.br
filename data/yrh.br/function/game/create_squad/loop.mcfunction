#|| --- CrossRefs --- ||#
#|| @yrh.br:game/create_squad/loop
#||
#||    # function
#||        @yrh.br:game/create_squad/loop
#||        @yrh.br:game/create_squad/root
#||
#|| ------ End ------ ||#

## Index
    ### Indexの部隊の人図取得
        execute store result storage yrh.br:game tmp.membersCount int 1.0 run data get storage yrh.br:game squads[-1].members
    ### 部隊単位人数だった部隊を増やす (loadでtemplate作った)
        $execute if predicate {type:"int_value_check", value:{type:"storage",path:"tmp.membersCount",storage:"yrh.br:game"},test:{type:"storage",path:"config.$(mode).unit",storage:"yrh.br:game"}} run \
            data modify storage yrh.br:game squads append from storage yrh.br:game config.squad_template.$(mode)

## random
    ### joinの人数を最大値としてランダム
        $execute store result storage yrh.br:game tmp.Rdm int 1.0 run random value 0..$(count)
    ### ランダムの値からUUIDを取得
        function yrh.br:game/create_squad/get_uuid_from_list with storage yrh.br:game tmp

## 取得したランダムのUUIDを部隊へ入れる
    function yrh.br:game/create_squad/store_squad with storage yrh.br:game tmp

## カウント減らす
    data modify storage yrh.br:game tmp.count set compute default integer {type:"sub", left:{type:"storage",path:"tmp.count",storage:"yrh.br:game"},right:1}

## 要素終わり
    execute unless predicate {type:"int_value_check", value:{type:"storage",path:"tmp.count",storage:"yrh.br:game"}, test:{min:0}} run return fail

## loop
    function yrh.br:game/create_squad/loop with storage yrh.br:game tmp
