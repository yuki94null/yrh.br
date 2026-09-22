#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/radial_menu/category/heal/root
#||
#|| ------ End ------ ||#


## cancel
    execute if data storage yrh.br:ui tmp{result:-1} run return fail

##
    $loot replace entity @s weapon loot yrh.br:ui/radial_menu/heal/$(id)
