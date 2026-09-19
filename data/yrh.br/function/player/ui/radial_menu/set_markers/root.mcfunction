
## 個数を保存
    $execute \
        store result storage yk.lib:ui tmp.Index int 1.0 run \
            data get storage yk.lib:ui config.radial_menu.$(id).contents

    data modify storage yk.lib:ui tmp.angle set compute default float {type:"div",left:360.0,right:{type:"storage",path:"tmp.Index",storage:"yk.lib:ui"}}

    function yrh.br:player/ui/radial_menu/set_markers/loop with storage yk.lib:ui tmp

    execute rotated as @s positioned ^ ^ ^1.0 store result storage yk.lib:ui tmp.Result int 1.0 run data get entity @n[type=marker,tag=yrh.br.player.ui.radial_menu.options] data.yrhbr.Index

    kill @e[type=marker,tag=yrh.br.player.ui.radial_menu.options]
