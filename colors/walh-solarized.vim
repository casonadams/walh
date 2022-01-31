hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-solarized'

" -- group-name
call walh#hi('Identifier', walh#blue)
call walh#hi('Function', walh#blue)

call walh#hi('Constant', walh#cyan)
call walh#hi('String', walh#cyan)
call walh#hi('Character', walh#cyan)
call walh#hi('Number', walh#cyan)
call walh#hi('Boolean', walh#cyan)
call walh#hi('Float', walh#cyan)

call walh#hi('Statement', walh#green)
call walh#hi('Conditional', walh#green)
call walh#hi('Repeat', walh#green)
call walh#hi('Label', walh#green)

call walh#hi('Operator', walh#green)
call walh#hi('Keyword', walh#green)
call walh#hi('Exception', walh#green)

call walh#hi('PreProc', walh#orange)
call walh#hi('Include', walh#orange)
call walh#hi('Define', walh#orange)
call walh#hi('Macro', walh#orange)
call walh#hi('PreCondit', walh#orange)

call walh#hi('Type', walh#yellow)
call walh#hi('StorageClass', walh#yellow)
call walh#hi('Structure', walh#yellow)
call walh#hi('Typedef', walh#yellow)

call walh#hi('Special', walh#red)
call walh#hi('SpecialChar', walh#red)
call walh#hi('Tag', walh#red)

call walh#hi('Delimiter', walh#red)
call walh#hi('SpecialComment', walh#red)
call walh#hi('Debug', walh#red)

call walh#hi('Comment', walh#green)
