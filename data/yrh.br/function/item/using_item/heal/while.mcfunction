#|| --- CrossRefs --- ||#
#|| @yrh.br:item/using_item/heal/while
#||
#|| ------ End ------ ||#

## カウントを見てあれば切る
    $execute if predicate {type:"int_value_check",value:{type:"storage",path:'player_data."$(UUID)".item[].$(id).count',storage:"yrh.br:player"},test:{min:1}} run return fail

## リセット
    function yrh.br:player/item/using_item/reset_elapsed_time

## 
    say ないよ