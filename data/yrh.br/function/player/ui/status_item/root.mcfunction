#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/status_item/root
#||
#||    # function
#||        @yrh.br:player/tick
#||
#|| ------ End ------ ||#

## アイテム操作用chest minecart
    summon chest_minecart ~ -5000 ~ {Tags:["yrh.br.player.ui.status_item.tmp_chest"]}

## ルートでベースアイテムをセット
    loot replace entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] container.0 loot yrh.br:head

## player name取得用アイテム
    loot spawn ~ -5000 ~ loot {pools:[{rolls:1,entries:[{type:"item",name:"player_head",modifier:[{type:"fill_player_head",entity:"this"}]}]}]}

## name入れる
    execute positioned ~ -5000 ~ run data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:profile".name set from entity @n[type=item,distance=..1.0] Item.components."minecraft:profile".name

## CMDいじる
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:custom_model_data".floats[0] set compute default float {type:"div",left:{type:"from_int",input:{type:"storage", path:'player_data."$(UUID)".Health',storage:"yrh.br:status"}},right:{type:"from_int",input:{type:"storage",path:"config.Health",storage:"yrh.br:status"}}}
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:custom_model_data".floats[1] set compute default float {type:"div",left:{type:"from_int",input:{type:"storage", path:'player_data."$(UUID)".Shield',storage:"yrh.br:status"}},right:{type:"from_int",input:{type:"storage",path:'player_data."$(UUID)".MaxShield',storage:"yrh.br:status"}}}

## loreいじる
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[0].with[0] set from storage yrh.br:status player_data."$(UUID)".Shield
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[0].with[1] set from storage yrh.br:status player_data."$(UUID)".MaxShield

    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[1].with[0] set from storage yrh.br:status player_data."$(UUID)".Health
    data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[1].with[1] set from storage yrh.br:status config.Health

## 置き換え
    item replace entity @s hotbar.8 from entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] container.0

## kill minecart
kill @e[tag=yrh.br.player.ui.status_item.tmp_chest]
