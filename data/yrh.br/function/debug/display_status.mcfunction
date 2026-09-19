#|| --- CrossRefs --- ||#
#|| @yrh.br:debug/display_status
#||
#|| ------ End ------ ||#

$title @s actionbar \
    [\
        {text:"State: "},{nbt:'player_data."$(UUID)".State',storage:"yrh.br:status"},{text:", "},\
        {text:"Health: "},{nbt:'player_data."$(UUID)".Health',storage:"yrh.br:status"},{text:", "},\
        {text:"ArLv: "},{nbt:'player_data."$(UUID)".ArmorLevel',storage:"yrh.br:status"},{text:", "},\
        {text:"Shield: "},{nbt:'player_data."$(UUID)".Shield',storage:"yrh.br:status"},{text:", "},\
        {text:"MaxShield: "},{nbt:'player_data."$(UUID)".MaxShield',storage:"yrh.br:status"},{text:", "},\
        {text:"elapsed_time: "},{nbt:'player_data."$(UUID)".elapsed_time',storage:"yrh.br:player"},{text:""},\
    ]