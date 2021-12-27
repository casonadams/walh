hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-one'

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
" call s:hi('Comment', 'darkgray')
call s:hi('Identifier', s:red)
call s:hi('Function', s:blue)

call s:hi('Constant', s:cyan)
call s:hi('String', s:green)
call s:hi('Character', s:green)
call s:hi('Number', s:yellow)
call s:hi('Boolean', s:yellow)
call s:hi('Float', s:yellow)

call s:hi('Statement', s:magenta)
call s:hi('Conditional', s:magenta)
call s:hi('Repeat', s:magenta)
call s:hi('Label', s:magenta)

call s:hi('Operator', s:magenta)
call s:hi('Keyword', s:red)
call s:hi('Exception', s:magenta)

call s:hi('PreProc', s:yellow)
call s:hi('Include', s:blue)
call s:hi('Define', s:magenta)
call s:hi('Macro', s:magenta)
call s:hi('PreCondit', s:yellow)

call s:hi('Type', s:yellow)
call s:hi('StorageClass',s:yellow)
call s:hi('Structure', s:yellow)
call s:hi('Typedef', s:yellow)

call s:hi('Special', s:blue)
call s:hi('SpecialChar', s:yellow)
