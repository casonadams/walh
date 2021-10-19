" You probably always want to set this in your vim file
let g:colors_name="walh-default"

lua package.loaded['walh-default'] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('walh-default'))
