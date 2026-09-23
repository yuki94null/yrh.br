#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/count_item/loop
#||
#||    # function
#||        @yrh.br:player/item/count_item/loop
#||        @yrh.br:player/item/count_item/root
#||
#|| ------ End ------ ||#

## index減らす
    data modify storage yrh.br:player tmp.index set compute default integer {type:"sub",left:{type:"storage",path:"tmp.index",storage:"yrh.br:player"},right:1}

## id get
    function yrh.br:player/item/count_item/get_id with storage yrh.br:player tmp

## set count
    function yrh.br:player/item/count_item/set_count with storage yrh.br:player tmp

## index 0 まで再帰
    execute if predicate {type:"int_value_check",value:{type:"storage",path:"tmp.index",storage:"yrh.br:player"},test:{min:1}} run function yrh.br:player/item/count_item/loop
