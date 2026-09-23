#|| --- CrossRefs --- ||#
#|| @yrh.br:game/lobby/io/negative/root
#||
#||    # function
#||        @yrh.br:game/lobby/io/root
#||
#|| ------ End ------ ||#

## 今までのプレイヤーリストから今いるプレイヤーを引いて残ったやつがいない
    $execute as @e[type=#yrh.br:joinable,tag=yrh.br.player.registered] run data remove storage yrh.br:game tmp.player_list[{UUID:$(UUID)}]

## いない人リストでループ
    function yrh.br:game/lobby/io/negative/loop with storage yrh.br:game tmp
