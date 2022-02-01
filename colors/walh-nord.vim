hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-nord'

call ui#init()

" -- group-name
call walh#hi('Identifier')
call walh#hi('Function', walh#colors.cyan)

call walh#hi('Constant')
call walh#hi('String', walh#colors.green)
call walh#hi('Character', walh#colors.green)
call walh#hi('Number', walh#colors.magenta)
call walh#hi('Boolean', walh#colors.blue)
call walh#hi('Float', walh#colors.magenta)

call walh#hi('Statement', walh#colors.blue)
call walh#hi('Conditional', walh#colors.blue)
call walh#hi('Repeat', walh#colors.blue)
call walh#hi('Label', walh#colors.blue)

call walh#hi('Operator', walh#colors.blue)
call walh#hi('Keyword', walh#colors.blue)
call walh#hi('Exception', walh#colors.blue)

call walh#hi('PreProc', walh#colors.blue)
call walh#hi('Include', walh#colors.blue)
call walh#hi('Define', walh#colors.blue)
call walh#hi('Macro', walh#colors.blue)
call walh#hi('PreCondit', walh#colors.blue)

call walh#hi('Type', walh#colors.blue)
call walh#hi('StorageClass', walh#colors.blue)
call walh#hi('Structure', walh#colors.blue)
call walh#hi('Typedef', walh#colors.blue)

call walh#hi('Special')
call walh#hi('SpecialChar', walh#colors.yellow)
call walh#hi('Tag')

call walh#hi('Delimiter', walh#colors.grey)
call walh#hi('SpecialComment', walh#colors.cyan)
call walh#hi('Debug')

call walh#hi('Comment', walh#colors.darkgrey)
