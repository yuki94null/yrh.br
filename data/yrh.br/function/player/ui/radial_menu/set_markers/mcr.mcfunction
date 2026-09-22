#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/set_markers/mcr
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/set_markers/loop
#||
#|| ------ End ------ ||#

## マーカーを所定位置に出す
    $summon marker ^$(x) ^$(y) ^ {Tags:["yrh.br.player.ui.radial_menu.options"],data:{yrhbr:{radial_menu:{Index:$(Index)}}}}
## 選択肢の位置
    $particle dust{color:[0f,1f,0f],scale:0.5f} ^$(x) ^$(y) ^