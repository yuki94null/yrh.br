#|| --- CrossRefs --- ||#
#|| @yrh.br:system/register_player/get_profile_name/root
#||
#||    # function
#||        @yrh.br:game/start/create_squad/get_uuid_from_list
#||        @yrh.br:player/ui/status_item/root
#||
#|| ------ End ------ ||#

data remove storage yrh.br:system tmp.name
$data modify storage yrh.br:system tmp.name set from storage yrh.br:player player_data."$(UUID)".name