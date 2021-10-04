" You probably always want to set this in your vim file
set background=dark
let g:colors_name="walh-eighties"

lua package.loaded['walh-eighties'] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('walh-eighties'))
