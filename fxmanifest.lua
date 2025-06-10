fx_version 'cerulean'
game 'gta5'

author 'solvexdev'
description 'Realistic Glovebox | solvexdev'
respository 'https://github.com/solvexdev/solvex_realisticinv'
version '1.0.0'

client_scripts {
    'src/config.lua',
    'src/client.lua'
}

server_script 'src/server.lua'

dependency 'ox_inventory'
dependency 'es_extended'
