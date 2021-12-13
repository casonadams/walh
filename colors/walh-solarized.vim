hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-solarized'

let s:gray = 7
let s:darkgray = 8
let s:red = 9
let s:green = 10
let s:yellow = 11
let s:blue = 12
let s:magenta = 13
let s:cyan = 14
let s:orange = 16
let s:black = 18

exec "source " . expand('<sfile>:p:h') . "/helpers/highlights.vim"

function! s:hi(group, fg='NONE', bg='NONE', attr='NONE')
  if a:fg != ''
    exec 'hi ' . a:group . ' ctermfg=' . a:fg
  endif
  if a:bg != ''
    exec 'hi ' . a:group . ' ctermbg=' . a:bg
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' cterm=' . a:attr
  endif
endfunction

" -- group-name
call s:hi('Identifier', s:blue)
call s:hi('Function', s:blue)

call s:hi('Constant', s:cyan)
call s:hi('String', s:cyan)
call s:hi('Character', s:cyan)
call s:hi('Number', s:cyan)
call s:hi('Boolean', s:cyan)
call s:hi('Float', s:cyan)

call s:hi('Statement', s:green)
call s:hi('Conditional', s:green)
call s:hi('Repeat', s:green)
call s:hi('Label', s:green)

call s:hi('Operator', s:green)
call s:hi('Keyword', s:green)
call s:hi('Exception', s:green)

call s:hi('PreProc', s:orange)
call s:hi('Include', s:orange)
call s:hi('Define', s:orange)
call s:hi('Macro', s:orange)
call s:hi('PreCondit', s:orange)

call s:hi('Type', s:yellow)
call s:hi('StorageClass', s:yellow)
call s:hi('Structure', s:yellow)
call s:hi('Typedef', s:yellow)

call s:hi('Special', s:red)
call s:hi('SpecialChar', s:red)
call s:hi('Tag', s:red)

call s:hi('Delimiter', s:red)
call s:hi('SpecialComment', s:red)
call s:hi('Debug', s:red)

call s:hi('Comment', s:green)
