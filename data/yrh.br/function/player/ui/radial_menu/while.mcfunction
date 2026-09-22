#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/while
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/root
#||
#|| ------ End ------ ||#

## init
    data remove storage yrh.br:ui tmp
    data modify storage yrh.br:ui tmp.hand set value "offhand"
    data modify storage yrh.br:ui tmp.UUID set from entity @s UUID
    execute if items entity @s weapon.mainhand *[custom_data~{yrhbr:{item:{use_radial_menu:{enable:true}}}}] run data modify storage yrh.br:ui tmp.hand set value "mainhand"

## まだ始まってないならリターン
    execute unless entity @s[tag=yrh.br.player.ui.radial_menu.input] run return run function yrh.br:player/ui/radial_menu/start with storage yrh.br:ui tmp

## check おなじか
    function yrh.br:player/ui/radial_menu/check_item with storage yrh.br:ui tmp
    execute unless data storage yrh.br:ui tmp{Success:0b} run return run function yrh.br:player/ui/radial_menu/end

## マーカーにタグ付け
    $tag @n[type=marker,tag=yrh.br.player.ui.radial_menu.rotate,nbt={data:{yrhbr:{Owner:$(UUID)}}}] add yrh.br.player.ui.radial_menu.tmp

## 必要ないけど位置合わせ
    execute anchored eyes positioned ~ ~ ~ run \
        tp @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] ~ ~ ~

## idを移す
    $data modify storage yrh.br:ui tmp.id set from storage yrh.br:ui player_data."$(UUID)".radial_menu.id

## どこ見てるか判定
    execute anchored eyes rotated as @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] positioned ^ ^ ^2.0 run \
        function yrh.br:player/ui/radial_menu/set_markers/root with storage yrh.br:ui tmp

## 結果を入れる
    $data modify storage yrh.br:ui player_data."$(UUID)".result set from storage yrh.br:ui tmp.Result

## タグ消す
    tag @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] remove yrh.br.player.ui.radial_menu.tmp