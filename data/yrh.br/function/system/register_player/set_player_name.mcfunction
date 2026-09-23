#|| --- CrossRefs --- ||#
#|| @yrh.br:system/register_player/set_player_name
#||
#||    # function
#||        @yrh.br:system/register_player/root
#||
#|| ------ End ------ ||#

    loot spawn ~ -5000 ~ loot {type:"command",pools:[{rolls:1,entries:[{type:"item",name:"player_head",modifier:{type:"fill_player_head",entity:"this"}}]}]}
    $execute positioned ~ -5000 ~ run data modify storage yrh.br:player player_data."$(UUID)".name set from entity @n[type=item,distance=..0.1] Item.components."minecraft:profile".name
    execute positioned ~ -5000 ~ run kill @n[type=item,distance=..0.1]