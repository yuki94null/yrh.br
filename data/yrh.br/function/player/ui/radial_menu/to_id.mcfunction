#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/to_id
#||
#||    # function
#||        @yrh.br:player/ui/radial_menu/while
#||
#|| ------ End ------ ||#

## categoryのインデックスからアイテムidを取得
    $data modify storage yrh.br:ui tmp.id set from storage yrh.br:ui config.radial_menu.$(category).contents[$(result)].id
