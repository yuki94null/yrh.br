#|| --- CrossRefs --- ||#
#|| @yrh.br:game/io/negative/loop
#||
#||    # function
#||        @yrh.br:game/io/negative/root
#||
#|| ------ End ------ ||#

## init
    data remove storage yrh.br:game tmp.UUID

## 後ろから一番目を入れる消す
    data modify storage yrh.br:game tmp.UUID set from storage yrh.br:game tmp.player_list[-1]
    data remove storage yrh.br:game tmp.player_list[-1]

## UUIDなければやめる
    execute unless data storage yrh.br:game tmp.UUID run return fail

## UUIDとして
    function yrh.br:game/io/negative/mcr with storage yrh.br:game tmp

## 通ったので再帰
    function yrh.br:game/io/negative/loop


tellraw @a [{nbt:"tmp.UUID",storage:"yrh.br:game"}]