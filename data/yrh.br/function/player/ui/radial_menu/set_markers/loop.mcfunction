#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/set_markers/loop
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/set_markers/loop
#||        @yrh.br:player/ui/radial_menu/set_markers/root
#||
#|| ------ End ------ ||#

## index減らす
    data modify storage yrh.br:ui tmp.index set compute default integer {type:"sub",left:{type:"storage",path:"tmp.index",storage:"yrh.br:ui"},right:1}

## sin cosで座標を生成
    data modify storage yrh.br:ui tmp.x set compute default float {type:"mul",inputs:[1,{type:"cos",input:{type:mul,inputs:[0.005555,3.1415,{type:"add",inputs:[{type:"mul",inputs:[{type:"storage",path:"tmp.angle",storage:"yrh.br:ui"},{type:"storage",path:"tmp.index",storage:"yrh.br:ui"}]},90]}]}}]}
    data modify storage yrh.br:ui tmp.y set compute default float {type:"mul",inputs:[1,{type:"sin",input:{type:mul,inputs:[0.005555,3.1415,{type:"add",inputs:[{type:"mul",inputs:[{type:"storage",path:"tmp.angle",storage:"yrh.br:ui"},{type:"storage",path:"tmp.index",storage:"yrh.br:ui"}]},90]}]}}]}

## summon marker
    function yrh.br:player/ui/radial_menu/set_markers/mcr with storage yrh.br:ui tmp

## index 0 まで再帰
    execute if predicate {type:"int_value_check",value:{type:"storage",path:"tmp.index",storage:"yrh.br:ui"},test:{min:1}} run \
        function yrh.br:player/ui/radial_menu/set_markers/loop with storage yrh.br:ui tmp
