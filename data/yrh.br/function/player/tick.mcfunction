#|| --- CrossRefs --- ||#
#|| @yrh.br:player/tick
#||
#||    # function
#||        @yrh.br:tick
#||
#|| ------ End ------ ||#

## item
    function yrh.br:player/item/count_item with entity @s


## 使ったティックじゃないのに残ってたら時間をリセット(UIで使うかもしれない用)
    execute if entity @s[tag=yrh.br.item.using_item,tag=!yrh.br.item.using_item.this_tick] run function yrh.br:player/item/using_item/reset_donot_elapse with entity @s

## UI
    function yrh.br:player/ui/status_item/root with entity @s

## Radial Menu
    function yrh.br:player/ui/radial_menu/root

## 使ってたティックは終わり
    tag @s remove yrh.br.item.using_item.this_tick
