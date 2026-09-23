#|| --- CrossRefs --- ||#
#|| @yrh.br:player/status/dead/in_squad
#||
#||    # function
#||        @yrh.br:player/status/dead/root
#||
#|| ------ End ------ ||#

## squad上もdeadにし、今ダウンじゃなければaliveを減らす
    $data modify storage yrh.br:game squads[$(squad_index)].members[{UUID:$(UUID)}].state set from storage yrh.br:status config.state[2]
    $execute if data storage yrh.br:player tmp{state:"alive"} run data modify storage yrh.br:game squads[$(squad_index)].alive_count set compute default integer {type:"sub",left:{type:"storage",path:"squads[$(squad_index)].alive_count", storage:"yrh.br:game"},right:1}

## squadが死んでたら切る
    $execute unless data storage yrh.br:game yrh.br:game squads[$(squad_index)]{squad_alive:1b} run return fail

## squad alive check
    function yrh.br:game/squad/check_squad_alive/root with storage yrh.br:player tmp
