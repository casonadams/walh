" You probably always want to set this in your vim file
let g:colors_name="walh-ocean"

lua package.loaded['walh-ocean'] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('walh-ocean'))
