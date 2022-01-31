hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-gruvbox'

" -- group-name
call walh#hi('Identifier', walh#blue)
call walh#hi('Function', walh#green)

call walh#hi('Constant', walh#magenta)
call walh#hi('String', walh#green)
call walh#hi('Character', walh#magenta)
call walh#hi('Number', walh#magenta)
call walh#hi('Boolean', walh#magenta)
call walh#hi('Float', walh#magenta)

call walh#hi('Statement', walh#red)
call walh#hi('Conditional', walh#red)
call walh#hi('Repeat', walh#red)
call walh#hi('Label', walh#red)

call walh#hi('Operator', walh#cyan)
call walh#hi('Keyword', walh#red)
call walh#hi('Exception', walh#red)

call walh#hi('PreProc', walh#cyan)
call walh#hi('Include', walh#cyan)
call walh#hi('Define', walh#cyan)
call walh#hi('Macro', walh#cyan)
call walh#hi('PreCondit', walh#cyan)

call walh#hi('Type', walh#yellow)
call walh#hi('StorageClass', walh#orange)
call walh#hi('Structure', walh#cyan)
call walh#hi('Typedef', walh#yellow)

call walh#hi('Special', walh#orange)
call walh#hi('SpecialChar', walh#orange)
call walh#hi('Tag', walh#orange)

call walh#hi('Delimiter', walh#magenta)
call walh#hi('SpecialComment', walh#red)
call walh#hi('Debug', walh#red)

call walh#hi('Comment', walh#darkgrey)
