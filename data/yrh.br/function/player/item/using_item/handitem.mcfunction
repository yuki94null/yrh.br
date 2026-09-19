#|| --- CrossRefs --- ||#
#|| @yrh.br:player/item/using_item/handitem
#||
#||    # function
#||        @yrh.br:player/item/using_item/root
#||
#|| ------ End ------ ||#

## 個人データを移す
    $data modify storage yrh.br:player tmp.player_data set from storage yrh.br:player player_data."$(UUID)"

## アイテムデータを格納しておく
    ### アイテムデータを格納するようチェスト
        summon chest_minecart ~ -5000 ~ {Tags:["yrh.br.player.item.using_item.tmp_chest"]}

    ### アイテム移す
        $item replace entity @n[tag=yrh.br.player.item.using_item.tmp_chest] container.0 from entity @s weapon.$(hand)

    ### データ移す
        data modify storage yrh.br:player tmp.player_data.current_item set from entity @n[tag=yrh.br.player.item.using_item.tmp_chest] Items[{Slot:0b}]

    ### つかうID
        data modify storage yrh.br:player tmp.id set from storage yrh.br:player tmp.player_data.current_item.components."minecraft:custom_data".yrhbr.item.id

    ### キル
        kill @e[tag=yrh.br.player.item.using_item.tmp_chest]
