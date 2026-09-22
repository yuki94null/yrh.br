#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/count_item/root
#||
#|| ------ End ------ ||#

say root
## init
    data remove storage yrh.br:player tmp

## UUIDを入れる
    data modify storage yrh.br:player tmp.UUID set from entity @s UUID

## 要素数を取得
    execute store result storage yrh.br:player tmp.Index int 1.0 run data get storage yrh.br:item config.item

## データの要素数でループ
    function yrh.br:player/item/count_item/loop
