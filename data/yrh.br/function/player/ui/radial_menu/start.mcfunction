
## 入力中のタグ
    tag @s add yrh.br.player.ui.radial_menu.input

## なんのmenu?
    summon chest_minecart ~ -5000 ~ {Tags:[yrh.br.player.ui.radial_menu.tmp_chest]}

    $item replace entity @n[tag=yrh.br.player.ui.radial_menu.tmp_chest] container.0 from entity @s weapon.$(hand)

    $data modify storage yk.lib:ui player_data."$(UUID)".radial_menu.id set from entity @n[tag=yrh.br.player.ui.radial_menu.tmp_chest] Items[{Slot:0b}].components."minecraft:custom_data".yrhbr.item.use_radial_menu.id

    kill @n[type=chest_minecart,tag=yrh.br.player.ui.radial_menu.tmp_chest]

## 回転保存のマーカー
    $summon marker ~ ~ ~ {Tags:["yrh.br.player.ui.radial_menu.rotate","yrh.br.player.ui.radial_menu.tmp"],data:{yrhbr:{Owner:$(UUID)}}}

## 回転を保存
    execute anchored eyes positioned ^ ^ ^ run tp @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] ^ ^ ^


## タグ消す
    tag @n[type=marker,tag=yrh.br.player.ui.radial_menu.tmp] remove yrh.br.player.ui.radial_menu.tmp