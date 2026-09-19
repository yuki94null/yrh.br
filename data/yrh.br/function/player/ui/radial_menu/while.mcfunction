
## init
    data remove storage yk.lib:ui tmp
    data modify storage yk.lib:ui tmp.hand set value "offhand"
    data modify storage yk.lib:ui tmp.UUID set from entity @s UUID
    execute if items entity @s weapon.mainhand *[custom_data~{yrhbr:{item:{use_radial_menu:{enable:true}}}}] run data modify storage yk.lib:ui tmp.hand set value "mainhand"

## まだ始まってないならリターン
    execute unless entity @s[tag=yrh.br.player.ui.radial_menu.input] run return run function yrh.br:player/ui/radial_menu/start with storage yk.lib:ui tmp

## check おなじか
    function yrh.br:player/ui/radial_menu/check_item with storage yk.lib:ui tmp
    execute if data storage yk.lib:ui tmp{Success:1b} run return run function yrh.br:player/ui/radial_menu/end

## >> || -- <処理ここから> -- || << ##

## マーカーにタグ付け
    $tag @n[type=marker,tag=yrh.br.player.ui.radial_menu.rotate,nbt={data:{yrhbr:{Owner:$(UUID)}}}] add yrh.br.player.ui.radial_menu.tmp

    execute anchored eyes positioned ~ ~ ~ run \
        tp @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] ~ ~ ~

    execute rotated as @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] positioned ^ ^ ^1.0 run \
        function yrh.br:player/ui/radial_menu/set_markers/root with storage yk.lib:ui tmp

## タグ消す
    tag @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] remove yrh.br.player.ui.radial_menu.tmp