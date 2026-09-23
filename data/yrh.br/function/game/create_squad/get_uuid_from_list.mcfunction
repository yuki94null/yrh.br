
## Rdmを添え字としてUUIDを取得
    $data modify storage yrh.br:game tmp.UUID set from storage yrh.br:game tmp.player_list[$(Rdm)].UUID
    $data remove storage yrh.br:game tmp.player_list[$(Rdm)]