#|| --- CrossRefs --- ||#
#|| @yrh.br:game/start/create_squad/add_squad
#||
#||    # function
#||        @yrh.br:game/start/create_squad/loop
#||
#|| ------ End ------ ||#

## テンプレートから追加
    $data modify storage yrh.br:game squads append from storage yrh.br:game config.squad_template.$(mode)
## indexを増やす
    data modify storage yrh.br:game tmp.index set compute default integer {type:"add", inputs:[{type:"storage",path:"tmp.index",storage:"yrh.br:game"},1]}

    data modify storage yrh.br:game squads[-1].index set from storage yrh.br:game tmp.index