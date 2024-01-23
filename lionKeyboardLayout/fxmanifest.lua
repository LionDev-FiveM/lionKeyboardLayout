fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Lion Development'
description 'KeyboardLayout'
version '1.1'

client_scripts {
    'client.lua',
    'config.lua',
}

server_scripts {
	'server.lua',
	'config.lua'
}

ui_page "html/index.html"

files {
    'html/index.html',
    'html/style.css',
    'html/jquery-3.6.1.min.js',
    'html/script.js',
    'version.json'
}

escrow_ignore {
	'client.lua',
    'config.lua',
    'server.lua',
    'version.json',
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/jquery-3.6.1.min.js',
}
dependency '/assetpacks'