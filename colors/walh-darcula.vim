hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-darcula'

" -- group-name
call walh#hi('Identifier', walh#magenta)
call walh#hi('Function', walh#yellow)

call walh#hi('Constant', walh#magenta)
call walh#hi('String', walh#green)
call walh#hi('Character', walh#green)

call walh#hi('Number', walh#blue)
call walh#hi('Boolean', walh#orange)
call walh#hi('Float', walh#blue)

call walh#hi('Statement')
call walh#hi('Conditional', walh#orange)
call walh#hi('Repeat', walh#orange)
call walh#hi('Label')

call walh#hi('Operator')
call walh#hi('Keyword', walh#orange)
call walh#hi('Exception', walh#orange)

call walh#hi('PreProc', walh#yellow)
call walh#hi('Include', walh#orange)
call walh#hi('Define', walh#orange)
call walh#hi('Macro', walh#cyan)
call walh#hi('PreCondit', walh#blue)

call walh#hi('Type', walh#orange)
call walh#hi('StorageClass', walh#orange)
call walh#hi('Structure')
call walh#hi('Typedef')

call walh#hi('Special', walh#yellow)
call walh#hi('SpecialChar', walh#orange)
call walh#hi('Tag')

call walh#hi('Delimiter')
call walh#hi('SpecialComment', walh#green)
call walh#hi('Debug', walh#grey)

call walh#hi('Comment', walh#darkgrey)
