#|| --- CrossRefs --- ||#
#|| @yrh.br:player/inventory_changed
#||
#||    # advancement
#||        @yrh.br:inventory_changed
#||
#|| ------ End ------ ||#

## ad rv
    advancement revoke @s only yrh.br:inventory_changed

## Radial Menuなどで使う個数を数えます
    function yrh.br:player/item/count_item/root with entity @s

## シールドの値更新
    function yrh.br:player/item/equipment/armor/set_max_shield/root with entity @s
    
## ui item
    function yrh.br:player/ui/status_item/root with entity @s

## status item消す
    item replace entity @s {type:"minecraft:filtered",slot_source:{type:"minecraft:slot_range",source:"container",slots:"inventory.*"},item_filter:{components:{"minecraft:custom_data":{yrhbr:{item:{type:"player_head"}}}}}} with air
    execute if items entity @s hotbar.0 *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s hotbar.0 with air
    execute if items entity @s hotbar.1 *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s hotbar.1 with air
    execute if items entity @s hotbar.2 *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s hotbar.2 with air
    execute if items entity @s hotbar.3 *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s hotbar.3 with air
    execute if items entity @s hotbar.4 *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s hotbar.4 with air
    execute if items entity @s hotbar.5 *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s hotbar.5 with air
    execute if items entity @s weapon.offhand *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s weapon.offhand with air
    execute if items entity @s player.cursor *[custom_data={yrhbr:{item:{type:"player_head"}}}] run item fill entity @s player.cursor with air
