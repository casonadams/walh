hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-solarized'

call ui#init()

" -- group-name
call walh#hi('Identifier', walh#colors.blue)
call walh#hi('Function', walh#colors.blue)

call walh#hi('Constant', walh#colors.cyan)
call walh#hi('String', walh#colors.cyan)
call walh#hi('Character', walh#colors.cyan)
call walh#hi('Number', walh#colors.cyan)
call walh#hi('Boolean', walh#colors.cyan)
call walh#hi('Float', walh#colors.cyan)

call walh#hi('Statement', walh#colors.green)
call walh#hi('Conditional', walh#colors.green)
call walh#hi('Repeat', walh#colors.green)
call walh#hi('Label', walh#colors.green)

call walh#hi('Operator', walh#colors.green)
call walh#hi('Keyword', walh#colors.green)
call walh#hi('Exception', walh#colors.green)

call walh#hi('PreProc', walh#colors.orange)
call walh#hi('Include', walh#colors.orange)
call walh#hi('Define', walh#colors.orange)
call walh#hi('Macro', walh#colors.orange)
call walh#hi('PreCondit', walh#colors.orange)

call walh#hi('Type', walh#colors.yellow)
call walh#hi('StorageClass', walh#colors.yellow)
call walh#hi('Structure', walh#colors.yellow)
call walh#hi('Typedef', walh#colors.yellow)

call walh#hi('Special', walh#colors.red)
call walh#hi('SpecialChar', walh#colors.red)
call walh#hi('Tag', walh#colors.red)

call walh#hi('Delimiter', walh#colors.red)
call walh#hi('SpecialComment', walh#colors.red)
call walh#hi('Debug', walh#colors.red)

call walh#hi('Comment', walh#colors.green)
