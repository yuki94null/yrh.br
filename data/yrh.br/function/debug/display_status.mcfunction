#|| --- CrossRefs --- ||#
#|| @yrh.br:debug/display_status
#||
#|| ------ End ------ ||#

$title @s actionbar \
    [\
        {text:"state: "},{nbt:'player_data."$(UUID)".state',storage:"yrh.br:status"},{text:", "},\
        {text:"health: "},{nbt:'player_data."$(UUID)".health',storage:"yrh.br:status"},{text:", "},\
        {text:"ArLv: "},{nbt:'player_data."$(UUID)".armor_level',storage:"yrh.br:status"},{text:", "},\
        {text:"shield: "},{nbt:'player_data."$(UUID)".shield',storage:"yrh.br:status"},{text:", "},\
        {text:"max_shield: "},{nbt:'player_data."$(UUID)".max_shield',storage:"yrh.br:status"},{text:", "},\
        {text:"elapsed_time: "},{nbt:'player_data."$(UUID)".elapsed_time',storage:"yrh.br:player"},{text:""},\
    ]