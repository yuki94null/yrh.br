#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/equipment/armor/update_armor/root
#||
#||    # function
#||        @yrh.br:player/status/add_shield
#||        @yrh.br:player/status/take_damage/root
#||
#|| ------ End ------ ||#

## マクロでシールドの値入れるだけ
    $item modify entity @s armor.chest {type:"minecraft:set_custom_data",tag:{yrhbr:{item:{Shield:$(Shield)}}}}
