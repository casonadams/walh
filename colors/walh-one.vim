hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-one'

" -- group-name
call walh#hi('Identifier', walh#red)
call walh#hi('Function', walh#blue)

call walh#hi('Constant', walh#cyan)
call walh#hi('String', walh#green)
call walh#hi('Character', walh#green)
call walh#hi('Number', walh#yellow)
call walh#hi('Boolean', walh#yellow)
call walh#hi('Float', walh#yellow)

call walh#hi('Statement', walh#magenta)
call walh#hi('Conditional', walh#magenta)
call walh#hi('Repeat', walh#magenta)
call walh#hi('Label', walh#magenta)

call walh#hi('Operator', walh#magenta)
call walh#hi('Keyword', walh#red)
call walh#hi('Exception', walh#magenta)

call walh#hi('PreProc', walh#yellow)
call walh#hi('Include', walh#blue)
call walh#hi('Define', walh#magenta)
call walh#hi('Macro', walh#magenta)
call walh#hi('PreCondit', walh#yellow)

call walh#hi('Type', walh#yellow)
call walh#hi('StorageClass',walh#yellow)
call walh#hi('Structure', walh#yellow)
call walh#hi('Typedef', walh#yellow)

call walh#hi('Special', walh#blue)
call walh#hi('SpecialChar', walh#yellow)
call walh#hi('Tag')

call walh#hi('Delimiter', walh#white)
call walh#hi('SpecialComment', walh#cyan)
call walh#hi('Debug')

call walh#hi('Comment', walh#darkgrey)
