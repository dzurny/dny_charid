fx_version 'cerulean'
game 'gta5'

author "dny / džurny"
version '1.0.0'

shared_scripts { '@es_extended/imports.lua', '@ox_lib/init.lua' }

client_script 'client.lua'

ui_page 'index.html'

files {
    '*.*'
}

lua54 'yes'

dependency 'esx_addonaccount'
