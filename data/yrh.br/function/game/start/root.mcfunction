#|| --- CrossRefs --- ||#
#|| @yrh.br:game/start/root
#||
#|| ------ End ------ ||#

## Queueしてない人
    execute if data storage yrh.br:game join.list[{queue:0b}] run return run tellraw @a [{text:"Queueしてない人いるよ"}]

##
    execute store result storage yrh.br:game tmp.Success byte 1.0 run \
        function yrh.br:game/start/create_squad/root with storage yrh.br:game current_game

    execute unless data storage yrh.br:game tmp{Success:1b} run return run tellraw @a [{text:"人数不足"}]
    tellraw @a [{text:"いけるで"}]