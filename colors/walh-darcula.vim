hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-darcula'

call ui#init()

" -- group-name
call walh#hi('Identifier', walh#colors.magenta)
call walh#hi('Function', walh#colors.yellow)

call walh#hi('Constant', walh#colors.magenta)
call walh#hi('String', walh#colors.green)
call walh#hi('Character', walh#colors.green)

call walh#hi('Number', walh#colors.blue)
call walh#hi('Boolean', walh#colors.orange)
call walh#hi('Float', walh#colors.blue)

call walh#hi('Statement', walh#colors.orange)
call walh#hi('Conditional', walh#colors.orange)
call walh#hi('Repeat', walh#colors.orange)
call walh#hi('Label')

call walh#hi('Operator')
call walh#hi('Keyword', walh#colors.orange)
call walh#hi('Exception', walh#colors.orange)

call walh#hi('PreProc', walh#colors.yellow)
call walh#hi('Include', walh#colors.orange)
call walh#hi('Define', walh#colors.orange)
call walh#hi('Macro', walh#colors.cyan)
call walh#hi('PreCondit', walh#colors.blue)

call walh#hi('Type', walh#colors.orange)
call walh#hi('StorageClass', walh#colors.orange)
call walh#hi('Structure')
call walh#hi('Typedef')

call walh#hi('Special', walh#colors.yellow)
call walh#hi('SpecialChar', walh#colors.orange)
call walh#hi('Tag')

call walh#hi('Delimiter')
call walh#hi('SpecialComment', walh#colors.green)
call walh#hi('Debug', walh#colors.grey)

call walh#hi('Comment', walh#colors.darkgrey)
