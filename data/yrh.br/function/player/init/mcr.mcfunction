#|| --- CrossRefs --- ||#
#|| @yrh.br:player/init/mcr
#||
#||    # function
#||        @yrh.br:player/init/root
#||
#|| ------ End ------ ||#

## 初期値をUUIDに紐づけてストレージに保存 これを操作する
    $data modify storage yrh.br:status player_data."$(UUID)" set value {UUID:$(UUID),Health:100b,Shield:0b,MaxShield:0b,ArmorLevel:0b,State:"alive"}