#|| --- CrossRefs --- ||#
#|| @yrh.br:player/init/mcr
#||
#||    # function
#||        @yrh.br:player/init/root
#||
#|| ------ End ------ ||#

## 初期値をUUIDに紐づけてストレージに保存 これを操作する
    $data modify storage yrh.br:status player_data."$(UUID)" set value \
        {health:100b,shield:0b,max_shield:0b,armor_level:0b,state:"alive"}
    $data modify storage yrh.br:player player_data."$(UUID)" set value \
        {in_squads:0b}