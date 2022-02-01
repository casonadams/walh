let walh#colors = {
\ 'grey': 7,
\ 'darkgrey': 8,
\ 'red': 9,
\ 'green': 10,
\ 'yellow': 11,
\ 'blue': 12,
\ 'magenta': 13,
\ 'cyan': 14,
\ 'white': 15,
\ 'orange': 208,
\ 'black': 247,
\}

function walh#hi(group, fg='NONE', bg='NONE', attr='NONE')
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
