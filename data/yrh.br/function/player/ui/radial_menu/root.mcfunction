#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/root
#||
#||    # function
#||        @yrh.br:player/tick
#||
#|| ------ End ------ ||#

## タグ無し且inputがあれば始める
    execute \
        if predicate {type:"entity_properties",entity:"this",predicate:{"type_specific/player":{input:{sprint:true}}}} \
        if items entity @s weapon.* *[custom_data~{yrhbr:{item:{use_radial_menu:{enable:true}}}}] run \
            return run \
                function yrh.br:player/ui/radial_menu/while with entity @s

## タグある且inputがなければやめる
    execute \
        if entity @s[tag=yrh.br.player.ui.radial_menu.input] run \
            function yrh.br:player/ui/radial_menu/end with entity @s
