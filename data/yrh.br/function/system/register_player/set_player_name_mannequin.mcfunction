#|| --- CrossRefs --- ||#
#|| @yrh.br:system/register_player/set_player_name_mannequin
#||
#||    # function
#||        @yrh.br:player/init/root
#||
#|| ------ End ------ ||#

## 
    $data modify storage yrh.br:player player_data."$(UUID)".name set from entity @s profile.name
