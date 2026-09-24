#|| --- CrossRefs --- ||#
#|| @yrh.br:player/ui/status_item/root
#||
#||    # function
#||        @yrh.br:player/inventory_changed
#||        @yrh.br:player/status/status_changed/root
#||
#|| ------ End ------ ||#

## アイテム操作用chest minecart
    summon chest_minecart ~ -5000 ~ {Tags:["yrh.br.player.ui.status_item.tmp_chest"]}

## ルートでベースアイテムをセット
    loot replace entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] container.0 loot yrh.br:head

## name入れる
    $function yrh.br:system/register_player/get_profile_name/root {UUID:$(UUID)}
    data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:profile".name set from storage yrh.br:system tmp.name

## CMDいじる
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:custom_model_data".floats[0] set compute default float {type:"div",left:{type:"from_int",input:{type:"storage", path:'player_data."$(UUID)".health',storage:"yrh.br:status"}},right:{type:"from_int",input:{type:"storage",path:"config.health",storage:"yrh.br:status"}}}
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:custom_model_data".floats[1] set compute default float {type:"div",left:{type:"from_int",input:{type:"storage", path:'player_data."$(UUID)".shield',storage:"yrh.br:status"}},right:{type:"from_int",input:{type:"storage",path:'player_data."$(UUID)".max_shield',storage:"yrh.br:status"}}}

## loreいじる
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[0].with[0] set from storage yrh.br:status player_data."$(UUID)".shield
    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[0].with[1] set from storage yrh.br:status player_data."$(UUID)".max_shield

    $data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[1].with[0] set from storage yrh.br:status player_data."$(UUID)".health
    data modify entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] Items[{Slot:0b}].components."minecraft:lore"[1].with[1] set from storage yrh.br:status config.health

## 置き換え
    item replace entity @s hotbar.8 from entity @n[tag=yrh.br.player.ui.status_item.tmp_chest] container.0

## kill minecart
    kill @e[tag=yrh.br.player.ui.status_item.tmp_chest]
