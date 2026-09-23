#|| --- CrossRefs --- ||#
#|| @yrh.br:player/init/root
#||
#||    # function
#||        @yrh.br:debug/debug_player/init
#||        @yrh.br:system/register_player/root
#||
#|| ------ End ------ ||#

## マクロに飛ばすよ
    function yrh.br:player/init/mcr with entity @s
## player name
    execute if entity @s[type=player] run function yrh.br:system/register_player/set_player_name with entity @s
    execute if entity @s[type=mannequin] run function yrh.br:system/register_player/set_player_name_mannequin with entity @s