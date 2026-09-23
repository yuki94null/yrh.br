#|| --- CrossRefs --- ||#
#|| @yrh.br:game/create_squad/store_squad
#||
#||    # function
#||        @yrh.br:game/create_squad/loop
#||
#|| ------ End ------ ||#

## 一番うしろ(appendした)部隊に入れる
    $data modify storage yrh.br:game squads[-1].members append value {UUID:$(UUID),state:"alive"}
