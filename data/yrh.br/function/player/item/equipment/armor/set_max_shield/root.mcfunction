#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/equipment/armor/set_max_shield/root
#||
#||    # function
#||        @yrh.br:player/inventory_changed
#||
#|| ------ End ------ ||#

## いったん0に
    $data modify \
        storage yrh.br:status player_data."$(UUID)".ArmorLevel set value 0b
## いったん0に
    $data modify \
        storage yrh.br:status player_data."$(UUID)".Shield set value 0b

## アイテムから格納
    ### level
        $data modify \
            storage yrh.br:status player_data."$(UUID)".ArmorLevel set from \
            entity @s equipment.chest.components."minecraft:custom_data".yrhbr.item.ArmorLevel
    ### value
        $data modify \
            storage yrh.br:status player_data."$(UUID)".Shield set from \
            entity @s equipment.chest.components."minecraft:custom_data".yrhbr.item.Shield

## 格納したシールドのレベルを参照してmax shieldを作成
    $function yrh.br:player/item/equipment/armor/set_max_shield/mcr with storage yrh.br:status player_data."$(UUID)"
