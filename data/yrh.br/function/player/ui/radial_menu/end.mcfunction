#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/end
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/root
#||        @yrh.br:player/ui/radial_menu/while
#||
#|| ------ End ------ ||#

## タグとrotate marker消す
    tag @s remove yrh.br.player.ui.radial_menu.input
    $kill @n[type=marker,tag=yrh.br.player.ui.radial_menu.rotate,nbt={data:{yrhbr:{Owner:$(UUID)}}}]

    data remove storage yrh.br:ui tmp
    $data modify storage yrh.br:ui tmp set from storage yrh.br:ui player_data."$(UUID)".radial_menu

    function yrh.br:player/ui/radial_menu/category/mcr_branch with storage yrh.br:ui tmp
