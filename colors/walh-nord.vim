hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-nord'

" -- group-name
call walh#hi('Identifier')
call walh#hi('Function', walh#cyan)

call walh#hi('Constant')
call walh#hi('String', walh#green)
call walh#hi('Character', walh#green)
call walh#hi('Number', walh#magenta)
call walh#hi('Boolean', walh#blue)
call walh#hi('Float', walh#magenta)

call walh#hi('Statement', walh#blue)
call walh#hi('Conditional', walh#blue)
call walh#hi('Repeat', walh#blue)
call walh#hi('Label', walh#blue)

call walh#hi('Operator', walh#blue)
call walh#hi('Keyword', walh#blue)
call walh#hi('Exception', walh#blue)

call walh#hi('PreProc', walh#blue)
call walh#hi('Include', walh#blue)
call walh#hi('Define', walh#blue)
call walh#hi('Macro', walh#blue)
call walh#hi('PreCondit', walh#blue)

call walh#hi('Type', walh#blue)
call walh#hi('StorageClass', walh#blue)
call walh#hi('Structure', walh#blue)
call walh#hi('Typedef', walh#blue)

call walh#hi('Special')
call walh#hi('SpecialChar', walh#yellow)
call walh#hi('Tag')

call walh#hi('Delimiter', walh#grey)
call walh#hi('SpecialComment', walh#cyan)
call walh#hi('Debug')

call walh#hi('Comment', walh#darkgrey)
