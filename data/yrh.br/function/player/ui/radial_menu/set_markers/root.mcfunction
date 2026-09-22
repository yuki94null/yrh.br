#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/set_markers/root
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/while
#||
#|| ------ End ------ ||#

## 個数を保存
    $execute \
        store result storage yrh.br:ui tmp.Index int 1.0 run \
            data get storage yrh.br:ui config.radial_menu.$(id).contents

## 単位角度の計算
    data modify storage yrh.br:ui tmp.angle set compute default float {type:"div",left:360.0,right:{type:"storage",path:"tmp.Index",storage:"yrh.br:ui"}}

## マーカー召喚
    function yrh.br:player/ui/radial_menu/set_markers/loop with storage yrh.br:ui tmp

## 選んだやつを格納
    execute rotated as @s positioned ^ ^ ^2.0 run \
        data modify storage yrh.br:ui tmp.Result set from entity @n[type=marker,tag=yrh.br.player.ui.radial_menu.options] data.yrhbr.radial_menu.Index

## 見てるやつ
    execute rotated as @s positioned ^ ^ ^2.0 at @n[type=marker,tag=yrh.br.player.ui.radial_menu.options] run particle electric_spark
## 見ている場所
    execute rotated as @s positioned ^ ^ ^2.0 run particle happy_villager

## マーカー消す
    kill @e[type=marker,tag=yrh.br.player.ui.radial_menu.options]
