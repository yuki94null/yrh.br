#|| --- CrossRefs --- ||#
#|| @yrh.br:game/io/negative/root
#||
#||    # function
#||        @yrh.br:game/io/root
#||
#|| ------ End ------ ||#

## 今までのプレイヤーリストから今いるプレイヤーを引いて残ったやつがいない
    $execute as @a run data remove storage yrh.br:game tmp.player_list[{UUID:$(UUID)}]

## いない人リストでループ
    function yrh.br:game/io/negative/loop with storage yrh.br:game tmp
