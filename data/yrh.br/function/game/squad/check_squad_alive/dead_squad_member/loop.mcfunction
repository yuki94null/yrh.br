#|| --- CrossRefs --- ||#
#|| @yrh.br:game/squad/check_squad_alive/dead_squad_member/loop
#||
#||    # function
#||        @yrh.br:game/squad/check_squad_alive/dead_squad_member/loop
#||        @yrh.br:game/squad/check_squad_alive/root
#||
#|| ------ End ------ ||#

## memberのUUIDを取得
    $data modify storage yrh.br:game tmp.UUID set from storage yrh.br:game squads[$(squad_index)].members[$(index)].UUID
    function yrh.br:player/status/dead/root with storage yrh.br:game tmp

## decrement
    data modify storage yrh.br:game tmp.index set compute default integer {type:"sub", left:{type:"storage",path:"tmp.index",storage:"yrh.br:game"},right:1}

## 0を下回ったらやめる
    execute unless predicate {type:"int_value_check",value:{type:"storage",path:"tmp.index",storage:"yrh.br:game"},test:{min:0}} run return fail

## 再帰
    function yrh.br:game/squad/check_squad_alive/dead_squad_member/loop with storage yrh.br:game tmp
