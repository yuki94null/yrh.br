#|| --- CrossRefs --- ||#
#|| @yrh.br:game/lobby/io/create_player_list
#||
#||    # function
#||        @yrh.br:game/lobby/io/root
#||
#|| ------ End ------ ||#

## UUIDを入れていく
    $data modify storage yrh.br:game ConnectedPlayer append value {UUID:$(UUID)}
