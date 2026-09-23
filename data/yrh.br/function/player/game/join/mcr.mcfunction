#|| --- CrossRefs --- ||#
#|| @yrh.br:player/game/join/mcr
#||
#||    # function
#||        @yrh.br:player/game/join/root
#||
#|| ------ End ------ ||#

##
    $execute if data storage yrh.br:game join.list[{UUID:$(UUID)}] run return fail
    $data modify storage yrh.br:game join.list append value {UUID:$(UUID),queue:0b}
    execute store result storage yrh.br:game join.count int 1.0 run data get storage yrh.br:game join.list
