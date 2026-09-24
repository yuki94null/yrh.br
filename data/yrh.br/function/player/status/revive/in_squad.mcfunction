#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/revive/in_squad
#||
#||    # function
#||        @yrh.br:player/status/revive/root
#||
#|| ------ End ------ ||#

## squad上もdownにし、aliveを減らす
    $data modify storage yrh.br:game squads[$(squad_index)].members[{UUID:$(UUID)}].state set from storage yrh.br:status config.state[0]
    $execute unless data storage yrh.br:player tmp{state:"alive"} run data modify storage yrh.br:game squads[$(squad_index)].alive_count set compute default integer {type:"add",inputs:[{type:"storage",path:"squads[$(squad_index)].alive_count", storage:"yrh.br:game"},1]}

## squad alive check
    function yrh.br:game/squad/check_squad_alive/root with storage yrh.br:player tmp
