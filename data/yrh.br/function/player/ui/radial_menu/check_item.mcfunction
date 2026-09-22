#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/check_item
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/while
#||
#|| ------ End ------ ||#

## なんのmenu?
    summon chest_minecart ~ -5000 ~ {Tags:[yrh.br.player.ui.radial_menu.tmp_chest]}

    $item replace entity @n[tag=yrh.br.player.ui.radial_menu.tmp_chest] container.0 from entity @s weapon.$(hand)

    $execute store result storage yrh.br:ui tmp.Success byte 1.0 run data modify storage yrh.br:ui player_data."$(UUID)".radial_menu.category set from entity @n[tag=yrh.br.player.ui.radial_menu.tmp_chest] Items[{Slot:0b}].components."minecraft:custom_data".yrhbr.item.use_radial_menu.category

    kill @n[type=chest_minecart,tag=yrh.br.player.ui.radial_menu.tmp_chest]