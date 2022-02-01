hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default-legacy'

call ui#init()

" -- group-name
call walh#hi('Identifier', walh#colors.cyan)
call walh#hi('Function', walh#colors.cyan)

call walh#hi('Constant', walh#colors.red)
call walh#hi('String', walh#colors.red)
call walh#hi('Character', walh#colors.red)
call walh#hi('Number', walh#colors.red)
call walh#hi('Boolean', walh#colors.red)
call walh#hi('Float', walh#colors.red)

call walh#hi('Statement', walh#colors.yellow)
call walh#hi('Conditional', walh#colors.yellow)
call walh#hi('Repeat', walh#colors.yellow)
call walh#hi('Label', walh#colors.yellow)

call walh#hi('Operator', walh#colors.yellow)
call walh#hi('Keyword', walh#colors.yellow)
call walh#hi('Exception', walh#colors.yellow)

call walh#hi('PreProc', walh#colors.magenta)
call walh#hi('Include', walh#colors.magenta)
call walh#hi('Define', walh#colors.magenta)
call walh#hi('Macro', walh#colors.magenta)
call walh#hi('PreCondit', walh#colors.magenta)

call walh#hi('Type', walh#colors.green)
call walh#hi('StorageClass', walh#colors.green)
call walh#hi('Structure', walh#colors.green)
call walh#hi('Typedef', walh#colors.green)

call walh#hi('Special', walh#colors.magenta)
call walh#hi('SpecialChar', walh#colors.magenta)
call walh#hi('Tag', walh#colors.magenta)

call walh#hi('Delimiter', walh#colors.magenta)
call walh#hi('SpecialComment', walh#colors.magenta)
call walh#hi('Debug', walh#colors.magenta)

call walh#hi('Comment', walh#colors.blue)
