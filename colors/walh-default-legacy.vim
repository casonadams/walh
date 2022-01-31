hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default-legacy'

" -- group-name
call walh#hi('Identifier', walh#cyan)
call walh#hi('Function', walh#cyan)

call walh#hi('Constant', walh#red)
call walh#hi('String', walh#red)
call walh#hi('Character', walh#red)
call walh#hi('Number', walh#red)
call walh#hi('Boolean', walh#red)
call walh#hi('Float', walh#red)

call walh#hi('Statement', walh#yellow)
call walh#hi('Conditional', walh#yellow)
call walh#hi('Repeat', walh#yellow)
call walh#hi('Label', walh#yellow)

call walh#hi('Operator', walh#yellow)
call walh#hi('Keyword', walh#yellow)
call walh#hi('Exception', walh#yellow)

call walh#hi('PreProc', walh#magenta)
call walh#hi('Include', walh#magenta)
call walh#hi('Define', walh#magenta)
call walh#hi('Macro', walh#magenta)
call walh#hi('PreCondit', walh#magenta)

call walh#hi('Type', walh#green)
call walh#hi('StorageClass', walh#green)
call walh#hi('Structure', walh#green)
call walh#hi('Typedef', walh#green)

call walh#hi('Special', walh#magenta)
call walh#hi('SpecialChar', walh#magenta)
call walh#hi('Tag', walh#magenta)

call walh#hi('Delimiter', walh#magenta)
call walh#hi('SpecialComment', walh#magenta)
call walh#hi('Debug', walh#magenta)

call walh#hi('Comment', walh#blue)
