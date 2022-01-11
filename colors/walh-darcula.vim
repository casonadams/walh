hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-darcula'

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
call s:hi('Identifier', s:magenta)
call s:hi('Function', s:yellow)

call s:hi('Constant', s:magenta)
call s:hi('String', s:green)
call s:hi('Character', s:green)

call s:hi('Number', s:blue)
call s:hi('Boolean', s:orange)
call s:hi('Float', s:blue)

call s:hi('Statement')
call s:hi('Conditional', s:orange)
call s:hi('Repeat', s:orange)
call s:hi('Label')

call s:hi('Operator')
call s:hi('Keyword', s:orange)
call s:hi('Exception', s:orange)

call s:hi('PreProc', s:yellow)
call s:hi('Include', s:orange)
call s:hi('Define', s:orange)
call s:hi('Macro', s:cyan)
call s:hi('PreCondit', s:blue)

call s:hi('Type', s:orange)
call s:hi('StorageClass', s:orange)
call s:hi('Structure')
call s:hi('Typedef')

call s:hi('Special', s:yellow)
call s:hi('SpecialChar', s:orange)
call s:hi('Tag')

call s:hi('Delimiter')
call s:hi('SpecialComment', s:green)
call s:hi('Debug', s:grey)

call s:hi('Comment', s:darkgrey)
