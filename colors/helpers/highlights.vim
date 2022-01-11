let s:grey = 7
let s:darkgrey = 8
let s:red = 9
let s:green = 10
let s:yellow = 11
let s:blue = 12
let s:magenta = 13
let s:cyan = 14
let s:white = 15
let s:black = 16
let s:orange = 208

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

" -- highlight-default
call s:hi('Normal')
call s:hi('NormalFloat', '', s:black)

call s:hi('Underlined', s:blue, 'NONE', 'underline')
call s:hi('Bold', '', '', 'bold')
call s:hi('Italic', '', '', 'italic')

call s:hi('Error', '', s:red, 'underline')
call s:hi('Todo', s:yellow, 'NONE', 'bold')
call s:hi('Ignore', '', '')

call s:hi('ColorColumn', '', s:darkgrey)
call s:hi('CursorColumn', '', s:darkgrey)
call s:hi('CursorLine', '', s:black)
call s:hi('VertSplit', s:darkgrey)

call s:hi('LineNr', s:darkgrey)
call s:hi('CursorLineNr', '', s:black)

call s:hi('Folded', s:darkgrey)
call s:hi('FoldColumn', s:darkgrey)
call s:hi('SignColumn', 'NONE', 'NONE')

call s:hi('Pmenu', 'NONE', s:black)
call s:hi('PmenuSel', 'NONE', s:black, 'reverse')

call s:hi('StatusLine', s:grey, s:black)
call s:hi('StatusLineNC', s:darkgrey, s:black)
call s:hi('WildMenu', '', s:green)

call s:hi('TabLine', s:grey, s:black)
call s:hi('TabLineFill', s:black, s:black)
call s:hi('TabLineSel', s:green, s:black)

call s:hi('MatchParen', s:white, 'NONE')
call s:hi('Substitute', s:black, s:yellow)
call s:hi('Search', '', s:yellow)
" call s:hi('QuickFixLine', s:magenta)
" call s:hi('IncSearch', s:darkgrey, s:yellow)
call s:hi('Visual', 'NONE', 'NONE', 'reverse')
" call s:hi('VisualNOS', 'NONE', 'NONE', 'reverse')

call s:hi('Conceal', s:darkgrey)
call s:hi('Whitespace', s:darkgrey)
call s:hi('EndOfBuffer', '')
call s:hi('NonText', s:darkgrey)
call s:hi('SpecialKey', s:darkgrey)

call s:hi('Directory', s:darkgrey)
call s:hi('Title', s:green, 'NONE')

call s:hi('ErrorMsg', s:red)
call s:hi('ModeMsg', s:grey)
call s:hi('MsgArea', s:grey)
call s:hi('MsgSeperator', s:grey)
call s:hi('MoreMsg',s:grey)
call s:hi('WarningMsg', s:red)
call s:hi('Question', s:green)

" -- :diff
call s:hi('DiffAdd', s:black, s:green)
call s:hi('DiffDelete', s:black, s:red)
call s:hi('DiffChange', s:black, s:yellow)
call s:hi('DiffText', s:black, s:blue)

call s:hi('DiffAdded', s:black, s:green)
call s:hi('DiffRemoved', s:black, s:red)

" -- spell
call s:hi('SpellBad',   s:darkgrey, 'NONE', 'underline')
call s:hi('SpellCap',   s:darkgrey, 'NONE', 'underline')
call s:hi('SpellLocal', s:darkgrey, 'NONE', 'underline')
call s:hi('SpellRare',  s:darkgrey, 'NONE', 'underline')

" -- diagnostic-highlight
call s:hi('DiagnosticError', s:red)
call s:hi('DiagnosticWarn', s:yellow)
call s:hi('DiagnosticInfo', s:blue)
call s:hi('DiagnosticHint', s:grey)

call s:hi('SignifySignAdd', s:green)
call s:hi('SignifySignDelete', s:red)
call s:hi('SignifySignChange', s:yellow)

call s:hi('GitGutterAdd', s:green)
call s:hi('GitGutterDelete', s:red)
call s:hi('GitGutterChange', s:yellow)

call s:hi('GitSignsAdd', s:green)
call s:hi('GitSignsDelete', s:red)
call s:hi('GitSignsChange', s:yellow)

call s:hi('ALEError', '', '', 'underline')
call s:hi('ALEWarning', '', '', 'underline')
call s:hi('ALEInfo', '', '', 'underline')
call s:hi('ALEStyleError', '', '', 'underline')
call s:hi('ALEStyleWarning', '', '', 'underline')

call s:hi('ALEErrorLine', '', '')
call s:hi('ALEWarningLine', '', '')
call s:hi('ALEInfoLine', '', '')

call s:hi('CocHighlightText', '', '', 'bold')

call s:hi('CocErrorSign', s:red)
call s:hi('CocWarningSign', s:yellow)
call s:hi('CocInfoSign', s:blue)
call s:hi('CocHintSign', s:grey)

call s:hi('CocErrorHighlight', '', '', 'underline')
call s:hi('CocWarningHighlight', '', '', 'underline')
call s:hi('CocInfoHighlight', '', '', 'underline')
call s:hi('CocHintHighlight', '', '', 'underline')

call s:hi('CocDeprecatedHighlight', '', '', 'underline')
call s:hi('CocUnusedHighlight', '', '', 'underline')

call s:hi('CocErrorVirtualText', s:red, 'NONE')
call s:hi('CocWarningVirtualText', s:yellow, 'NONE')
call s:hi('CocInfoVirtualText', s:blue, 'NONE')
call s:hi('CocHintVirtualText', s:grey, 'NONE')

call s:hi('CocCodeLens', s:blue, '')

call s:hi('CocFloating', '', s:black)
call s:hi('CocErrorFloat', s:red)
call s:hi('CocWarningFloat', s:yellow)
call s:hi('CocInfoFloat', s:blue)
call s:hi('CocHintFloat', s:grey)

call s:hi('LspDiagnosticsDefaultError', s:red)
call s:hi('LspDiagnosticsDefaultWarning', s:yellow)
call s:hi('LspDiagnosticsDefaultInformation', s:blue)
call s:hi('LspDiagnosticsDefaultHint', s:grey)

call s:hi('LspDiagnosticsVirtualTextError', s:red, '', '')
call s:hi('LspDiagnosticsVirtualTextWarning', s:yellow, '', '')
call s:hi('LspDiagnosticsVirtualTextInformation', s:blue, '', '')
call s:hi('LspDiagnosticsVirtualTextHint', s:grey, '', '')

call s:hi('LspDiagnosticsUnderlineError', s:red, '', 'underline')
call s:hi('LspDiagnosticsUnderlineWarning', s:yellow, '', 'underline')
call s:hi('LspDiagnosticsUnderlineInformation', s:blue, '', 'underline')
call s:hi('LspDiagnosticsUnderlineHint', s:grey, '', 'underline')

call s:hi('LspDiagnosticsFloatingError', '', s:black)
call s:hi('LspDiagnosticsFloatingWarning', '', s:black)
call s:hi('LspDiagnosticsFloatingInformation', '', s:black)
call s:hi('LspDiagnosticsFloatingHint', '', s:black)

call s:hi('LspReferenceText', '', '', 'bold')
call s:hi('LspReferenceRead', '', '', 'bold')
call s:hi('LspReferenceWrite', '', '', 'bold')

call s:hi('TelescopeNormal', '', s:black)
call s:hi('TelescopePreviewNormal', '', s:black)
call s:hi('TelescopeSelection', '', '', 'reverse')

call s:hi('BufferCurrent', s:green)
call s:hi('BufferCurrentIcon', s:blue)
call s:hi('BufferCurrentIndex', s:green)
call s:hi('BufferCurrentMod', s:yellow)
call s:hi('BufferCurrentSign', '')
call s:hi('BufferCurrentTarget', s:red)

call s:hi('BufferVisible', '', s:black)
call s:hi('BufferVisibleIcon', s:blue, s:black)
call s:hi('BufferVisibleIndex', '', s:black)
call s:hi('BufferVisibleMod', s:yellow, s:black)
call s:hi('BufferVisibleSign', s:blue, s:black)
call s:hi('BufferVisibleTarget', s:red, s:black)

call s:hi('BufferInactive', '', s:black)
call s:hi('BufferInactiveIcon', s:blue, s:black)
call s:hi('BufferInactiveIndex', '', s:black)
call s:hi('BufferInactiveMod', s:yellow, s:black)
call s:hi('BufferInactiveSign', s:blue, s:black)
call s:hi('BufferInactiveTarget', s:red, s:black)

call s:hi('BufferTabpages', '', s:black)
call s:hi('BufferTabpageFill', '', s:black)

call s:hi('BufferOffset', '', s:black)
