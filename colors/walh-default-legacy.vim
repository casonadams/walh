hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default-legacy'

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
call s:hi('Identifier', s:cyan)
call s:hi('Function', s:cyan)

call s:hi('Constant', s:red)
call s:hi('String', s:red)
call s:hi('Character', s:red)
call s:hi('Number', s:red)
call s:hi('Boolean', s:red)
call s:hi('Float', s:red)

call s:hi('Statement', s:yellow)
call s:hi('Conditional', s:yellow)
call s:hi('Repeat', s:yellow)
call s:hi('Label', s:yellow)

call s:hi('Operator', s:yellow)
call s:hi('Keyword', s:yellow)
call s:hi('Exception', s:yellow)

call s:hi('PreProc', s:magenta)
call s:hi('Include', s:magenta)
call s:hi('Define', s:magenta)
call s:hi('Macro', s:magenta)
call s:hi('PreCondit', s:magenta)

call s:hi('Type', s:green)
call s:hi('StorageClass', s:green)
call s:hi('Structure', s:green)
call s:hi('Typedef', s:green)

call s:hi('Special', s:magenta)
call s:hi('SpecialChar', s:magenta)
call s:hi('Tag', s:magenta)

call s:hi('Delimiter', s:magenta)
call s:hi('SpecialComment', s:magenta)
call s:hi('Debug', s:magenta)

call s:hi('Comment', s:blue)
