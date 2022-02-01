hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-gruvbox'

call ui#init()

" -- group-name
call walh#hi('Identifier', walh#colors.blue)
call walh#hi('Function', walh#colors.green)

call walh#hi('Constant', walh#colors.magenta)
call walh#hi('String', walh#colors.green)
call walh#hi('Character', walh#colors.magenta)
call walh#hi('Number', walh#colors.magenta)
call walh#hi('Boolean', walh#colors.magenta)
call walh#hi('Float', walh#colors.magenta)

call walh#hi('Statement', walh#colors.red)
call walh#hi('Conditional', walh#colors.red)
call walh#hi('Repeat', walh#colors.red)
call walh#hi('Label', walh#colors.red)

call walh#hi('Operator', walh#colors.cyan)
call walh#hi('Keyword', walh#colors.red)
call walh#hi('Exception', walh#colors.red)

call walh#hi('PreProc', walh#colors.cyan)
call walh#hi('Include', walh#colors.cyan)
call walh#hi('Define', walh#colors.cyan)
call walh#hi('Macro', walh#colors.cyan)
call walh#hi('PreCondit', walh#colors.cyan)

call walh#hi('Type', walh#colors.yellow)
call walh#hi('StorageClass', walh#colors.orange)
call walh#hi('Structure', walh#colors.cyan)
call walh#hi('Typedef', walh#colors.yellow)

call walh#hi('Special', walh#colors.orange)
call walh#hi('SpecialChar', walh#colors.orange)
call walh#hi('Tag', walh#colors.orange)

call walh#hi('Delimiter', walh#colors.magenta)
call walh#hi('SpecialComment', walh#colors.red)
call walh#hi('Debug', walh#colors.red)

call walh#hi('Comment', walh#colors.darkgrey)
