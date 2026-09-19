#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/root
#||
#||    # advancement
#||        @yrh.br:using_item
#||
#|| ------ End ------ ||#

## adv revoke
    advancement revoke @s only yrh.br:using_item

## そもそも持ってない
    execute unless items entity @s weapon.* *[custom_data~{yrhbr:{item:{use_advancement:true}}}] run return fail

## init
    data remove storage yrh.br:player tmp
    data modify storage yrh.br:player tmp.Success set value 0b
    data modify storage yrh.br:player tmp.hand set value "offhand"
    data modify storage yrh.br:player tmp.UUID set from entity @s UUID

## メインハンドにあったら変更
    execute if items entity @s weapon.mainhand *[custom_data~{yrhbr:{item:{use_advancement:true}}}] run data modify storage yrh.br:player tmp.hand set value "mainhand"

## ハンドアイテムのデータを取得 (あとついでに個人データも入れる (負荷対策？) )
    function yrh.br:player/item/using_item/handitem with storage yrh.br:player tmp

## 手とUUIDで移行
    function yrh.br:player/item/using_item/branch with storage yrh.br:player tmp

## 個人データの統合
    function yrh.br:player/item/using_item/merge_data with storage yrh.br:player tmp