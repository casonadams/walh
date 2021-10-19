" You probably always want to set this in your vim file
let g:colors_name="walh-ocean-warm"

lua package.loaded['walh-ocean-warm'] = nil

" include our theme file and pass it to lush to apply
lua require('lush')(require('walh-ocean-warm'))
