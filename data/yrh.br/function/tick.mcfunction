#|| --- CrossRefs --- ||#
#|| @yrh.br:tick
#||
#||    # tags/function
#||        @minecraft:tick
#||
#|| ------ End ------ ||#

## player tick
    execute as @e[type=#yrh.br:joinable] at @s run function yrh.br:player/tick

## game tick
    function yrh.br:game/tick