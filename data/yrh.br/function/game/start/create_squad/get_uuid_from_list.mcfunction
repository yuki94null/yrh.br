#|| --- CrossRefs --- ||#
#|| @yrh.br:game/start/create_squad/get_uuid_from_list
#||
#||    # function
#||        @yrh.br:game/start/create_squad/loop
#||
#|| ------ End ------ ||#

## Rdmを添え字としてUUIDを取得
    $data modify storage yrh.br:game tmp.UUID set from storage yrh.br:game tmp.player_list[$(Rdm)].UUID
    $data remove storage yrh.br:game tmp.player_list[$(Rdm)]

## プレイヤーネームを取得する
    function yrh.br:system/register_player/get_profile_name/root with storage yrh.br:game tmp
    data modify storage yrh.br:game tmp.name set from storage yrh.br:system tmp.name