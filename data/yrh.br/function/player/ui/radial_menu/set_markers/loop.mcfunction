

    data modify storage yk.lib:ui tmp.Index set compute default integer {type:"sub",left:{type:"storage",path:"tmp.Index",storage:"yk.lib:uii"},right:1}

    data modify storage yk.lib:ui tmp.x set compute default float {type:"mul",inputs:[1,{type:"cos",input:{type:mul,inputs:[{type:"storage",path:"tmp.angle",storage:"yk.lib:ui"},{type:"storage",path:"tmp.Index",storage:"yk.lib:ui"}]}}]}
    data modify storage yk.lib:ui tmp.y set compute default float {type:"mul",inputs:[1,{type:"sin",input:{type:mul,inputs:[{type:"storage",path:"tmp.angle",storage:"yk.lib:ui"},{type:"storage",path:"tmp.Index",storage:"yk.lib:ui"}]}}]}

    function yrh.br:player/ui/radial_menu/set_markers/mcr with storage yk.lib:ui tmp

    execute if predicate {type:"int_value_check",value:{type:"storage",path:"tmp.Index",storage:"yk.lib:ui"},test:{max:0}} run function yrh.br:player/ui/radial_menu/set_markers/loop with storage yk.lib:ui tmp