
## 回復量指定
    $function yrh.br:player/status/each_heal with storage yrh.br:item config.item[{id:"$(id)"}]

## アイテム減らす
    $clear @s *[custom_data~{yrhbr:{item:{id:"$(id)",display_item:false}}}] 1
