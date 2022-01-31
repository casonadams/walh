hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default'

" -- group-name
call walh#hi('Identifier', walh#cyan)
call walh#hi('Function', walh#cyan)

call walh#hi('Constant', walh#magenta)
call walh#hi('String', walh#magenta)
call walh#hi('Character', walh#magenta)
call walh#hi('Number', walh#magenta)
call walh#hi('Boolean', walh#magenta)
call walh#hi('Float', walh#magenta)

call walh#hi('Statement', walh#yellow)
call walh#hi('Conditional', walh#yellow)
call walh#hi('Repeat', walh#yellow)
call walh#hi('Label', walh#yellow)

call walh#hi('Operator', walh#yellow)
call walh#hi('Keyword', walh#yellow)
call walh#hi('Exception', walh#yellow)

call walh#hi('PreProc', walh#blue)
call walh#hi('Include', walh#blue)
call walh#hi('Define', walh#blue)
call walh#hi('Macro', walh#blue)
call walh#hi('PreCondit', walh#blue)

call walh#hi('Type', walh#green)
call walh#hi('StorageClass', walh#green)
call walh#hi('Structure', walh#green)
call walh#hi('Typedef', walh#green)

call walh#hi('Special', walh#orange)
call walh#hi('SpecialChar', walh#orange)
call walh#hi('Tag', walh#orange)

call walh#hi('Delimiter', walh#orange)
call walh#hi('SpecialComment', walh#orange)
call walh#hi('Debug', walh#orange)

call walh#hi('Comment', walh#cyan)
