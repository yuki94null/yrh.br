#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/equipment/armor/set_max_shield/mcr
#||
#||    # function
#||        @yrh.br:player/item/equipment/armor/set_max_shield/root
#||
#|| ------ End ------ ||#

## リストのインデックスとしてレベルを扱っているのでそれで指定していれる
    $data modify storage yrh.br:status player_data."$(UUID)".MaxShield set from storage yrh.br:item config.armor[$(ArmorLevel)]
