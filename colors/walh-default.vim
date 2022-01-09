hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default'

let s:grey = 7
let s:darkgrey = 8
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
call s:hi('Identifier', s:cyan)
call s:hi('Function', s:cyan)

call s:hi('Constant', s:magenta)
call s:hi('String', s:magenta)
call s:hi('Character', s:magenta)
call s:hi('Number', s:magenta)
call s:hi('Boolean', s:magenta)
call s:hi('Float', s:magenta)

call s:hi('Statement', s:yellow)
call s:hi('Conditional', s:yellow)
call s:hi('Repeat', s:yellow)
call s:hi('Label', s:yellow)

call s:hi('Operator', s:yellow)
call s:hi('Keyword', s:yellow)
call s:hi('Exception', s:yellow)

call s:hi('PreProc', s:blue)
call s:hi('Include', s:blue)
call s:hi('Define', s:blue)
call s:hi('Macro', s:blue)
call s:hi('PreCondit', s:blue)

call s:hi('Type', s:green)
call s:hi('StorageClass', s:green)
call s:hi('Structure', s:green)
call s:hi('Typedef', s:green)

call s:hi('Special', s:orange)
call s:hi('SpecialChar', s:orange)
call s:hi('Tag', s:orange)

call s:hi('Delimiter', s:orange)
call s:hi('SpecialComment', s:orange)
call s:hi('Debug', s:orange)

call s:hi('Comment', s:cyan)
