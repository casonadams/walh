hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-nord'

let s:grey = 7
let s:darkgrey = 8
let s:red = 9
let s:green = 10
let s:yellow = 11
let s:blue = 12
let s:magenta = 13
let s:cyan = 14
let s:white = 15
let s:orange = 208
let s:black = 247

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
call s:hi('Identifier')
call s:hi('Function', s:cyan)

call s:hi('Constant')
call s:hi('String', s:green)
call s:hi('Character', s:green)
call s:hi('Number', s:magenta)
call s:hi('Boolean', s:blue)
call s:hi('Float', s:magenta)

call s:hi('Statement', s:blue)
call s:hi('Conditional', s:blue)
call s:hi('Repeat', s:blue)
call s:hi('Label', s:blue)

call s:hi('Operator', s:blue)
call s:hi('Keyword', s:blue)
call s:hi('Exception', s:blue)

call s:hi('PreProc', s:blue)
call s:hi('Include', s:blue)
call s:hi('Define', s:blue)
call s:hi('Macro', s:blue)
call s:hi('PreCondit', s:blue)

call s:hi('Type', s:blue)
call s:hi('StorageClass', s:blue)
call s:hi('Structure', s:blue)
call s:hi('Typedef', s:blue)

call s:hi('Special')
call s:hi('SpecialChar', s:yellow)
call s:hi('Tag')

call s:hi('Delimiter', s:grey)
call s:hi('SpecialComment', s:cyan)
call s:hi('Debug')

call s:hi('Comment', s:darkgrey)
