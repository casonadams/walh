hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-one'

call ui#init()

" -- group-name
call walh#hi('Identifier', walh#colors.red)
call walh#hi('Function', walh#colors.blue)

call walh#hi('Constant', walh#colors.cyan)
call walh#hi('String', walh#colors.green)
call walh#hi('Character', walh#colors.green)
call walh#hi('Number', walh#colors.yellow)
call walh#hi('Boolean', walh#colors.yellow)
call walh#hi('Float', walh#colors.yellow)

call walh#hi('Statement', walh#colors.magenta)
call walh#hi('Conditional', walh#colors.magenta)
call walh#hi('Repeat', walh#colors.magenta)
call walh#hi('Label', walh#colors.magenta)

call walh#hi('Operator', walh#colors.magenta)
call walh#hi('Keyword', walh#colors.red)
call walh#hi('Exception', walh#colors.magenta)

call walh#hi('PreProc', walh#colors.yellow)
call walh#hi('Include', walh#colors.blue)
call walh#hi('Define', walh#colors.magenta)
call walh#hi('Macro', walh#colors.magenta)
call walh#hi('PreCondit', walh#colors.yellow)

call walh#hi('Type', walh#colors.yellow)
call walh#hi('StorageClass',walh#colors.yellow)
call walh#hi('Structure', walh#colors.yellow)
call walh#hi('Typedef', walh#colors.yellow)

call walh#hi('Special', walh#colors.blue)
call walh#hi('SpecialChar', walh#colors.yellow)
call walh#hi('Tag')

call walh#hi('Delimiter', walh#colors.white)
call walh#hi('SpecialComment', walh#colors.cyan)
call walh#hi('Debug')

call walh#hi('Comment', walh#colors.darkgrey)
