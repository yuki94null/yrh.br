#|| --- CrossRefs --- ||#
#|| @yrh.br:system/register_player/root
#||
#||    # function
#||        @yrh.br:player/tick
#||
#|| ------ End ------ ||#

## 駄目なタイプのマネキンは弾く
    execute if entity @s[type=mannequin,tag=!yrh.br.debug_player] run return fail

## 登録済み
    tag @s add yrh.br.player.registered

## データ作成
    function yrh.br:player/init/root
