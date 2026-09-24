#|| --- CrossRefs --- ||#
#|| @yrh.br:game/squad/check_squad_alive/root
#||
#||    # function
#||        @yrh.br:player/status/dead/in_squad
#||        @yrh.br:player/status/down/in_squad
#||        @yrh.br:player/status/respawn/in_squad
#||        @yrh.br:player/status/revive/in_squad
#||
#|| ------ End ------ ||#

## 生きてる人数が0以下じゃなければやめる
    $execute unless predicate {type:"int_value_check",value:{type:"storage",path:"squads[$(squad_index)].alive_count",storage:"yrh.br:game"},test:{max:0}} run return fail

## indexを保持
    data remove storage yrh.br:game tmp.squad_index
    $data modify storage yrh.br:game tmp.squad_index set value $(squad_index)

## 人数を取得
    data remove storage yrh.br:game tmp.index
    $execute store result storage yrh.br:game tmp.index int 1.0 run data get storage yrh.br:game squads[$(squad_index)].members
    data modify storage yrh.br:game tmp.index set compute default integer {type:"sub", left:{type:"storage",path:"tmp.index",storage:"yrh.br:game"},right:1}

## squadを殺す
    $data modify storage yrh.br:game squads[$(squad_index)].squad_alive set value 0b

## 全員殺す
    function yrh.br:game/squad/check_squad_alive/dead_squad_member/loop with storage yrh.br:game tmp
