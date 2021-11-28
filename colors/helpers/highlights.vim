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
" call s:hi('Normal')
call s:hi('NormalFloat', '', '')

call s:hi('ColorColumn', '', 'darkgray')
call s:hi('CursorColumn', '', 'darkgray')
call s:hi('CursorLine', '', 'black')
call s:hi('VertSplit', 'darkgray')

call s:hi('LineNr', 'darkgray')
call s:hi('CursorLineNr', 'darkgray', 'black')

call s:hi('Folded', 'darkgray')
call s:hi('FoldColumn', 'darkgray')
call s:hi('SignColumn', 'NONE', 'NONE')

call s:hi('Pmenu', 'NONE', 'black')
call s:hi('PmenuSel', 'NONE', 'black', 'reverse')
" call s:hi('PmenuSbar', 'darkblue', 'lightgray')
" call s:hi('PmenuThumb', 'lightgray', 'darkblue')

call s:hi('StatusLine', 'darkgray', 'black')
call s:hi('StatusLineNC', 'darkgray', 'black')
call s:hi('WildMenu', '', 'darkgreen')

call s:hi('TabLine', 'darkgray', 'black')
call s:hi('TabLineFill', 'black', 'black')
call s:hi('TabLineSel', 'darkgreen', 'black')

call s:hi('MatchParen', 'NONE', 'darkgray')
call s:hi('Substitute', '', 'darkyellow')
call s:hi('Search', '', 'darkyellow')
" call s:hi('QuickFixLine', 'darkmagenta')
" call s:hi('IncSearch', 'darkgray', 'darkyellow')
call s:hi('Visual', 'NONE', 'NONE', 'reverse')
" call s:hi('VisualNOS', 'NONE', 'NONE', 'reverse')

call s:hi('Conceal', 'darkgray')
call s:hi('Whitespace', 'darkgray')
call s:hi('EndOfBuffer', '')
call s:hi('NonText', 'darkgray')
call s:hi('SpecialKey', 'darkgray')

call s:hi('Directory', 'darkgray')
call s:hi('Title', 'darkgreen', 'NONE')
" call s:hi('ErrorMsg', 'White', 'darkred')
" call s:hi('ModeMsg', 'White', '')
" call s:hi('MsgArea', 'White', '')
" call s:hi('MsgSeperator', 'White', '')
" call s:hi('MoreMsg', 'White', '')
" call s:hi('WarningMsg', 'darkred')
" call s:hi('Question', 'darkyellow')

" -- :diff
call s:hi('DiffAdd', 'black', 'darkgreen')
call s:hi('DiffChange', 'black', 'darkyellow')
call s:hi('DiffDelete', 'black', 'darkred')
call s:hi('DiffText', 'black', 'darkcyan')

call s:hi('DiffAdded', 'black', 'darkgreen')
call s:hi('DiffRemoved', 'black', 'darkred')

" -- spell
call s:hi('SpellBad',   'darkgray', 'NONE', 'underline')
call s:hi('SpellCap',   'darkgray', 'NONE', 'underline')
call s:hi('SpellLocal', 'darkgray', 'NONE', 'underline')
call s:hi('SpellRare',  'darkgray', 'NONE', 'underline')

" -- diagnostic-highlight
call s:hi('DiagnosticError', 'darkred')
call s:hi('DiagnosticWarn', 'darkyellow')
call s:hi('DiagnosticInfo', 'darkblue')
call s:hi('DiagnosticHint', 'darkgreen')

" call s:hi('Cursor', '', '', 'reverse')
" call s:hi('Cursor', '', '', 'reverse')
" call s:hi('CursorIM', '', '', 'reverse')
" call s:hi('TermCursor', '', '', 'reverse')
" call s:hi('TermCursorNC', '', '', 'reverse')

call s:hi('SignifySignAdd', 'darkgreen')
call s:hi('SignifySignDelete', 'darkred')
call s:hi('SignifySignChange', 'darkyellow')

call s:hi('GitGutterAdd', 'darkgreen')
call s:hi('GitGutterDelete', 'darkred')
call s:hi('GitGutterChange', 'darkyellow')

call s:hi('GitSignsAdd', 'darkgreen')
call s:hi('GitSignsDelete', 'darkred')
call s:hi('GitSignsChange', 'darkyellow')

call s:hi('ALEError', '', '', 'underline')
call s:hi('ALEWarning', '', '', 'underline')
call s:hi('ALEInfo', '', '', 'underline')
call s:hi('ALEStyleError', '', '', 'underline')
call s:hi('ALEStyleWarning', '', '', 'underline')

call s:hi('ALEErrorLine', '', '')
call s:hi('ALEWarningLine', '', '')
call s:hi('ALEInfoLine', '', '')

call s:hi('CocHighlightText', '', '', 'bold')
call s:hi('CocErrorHighlight', '', '', 'underline')
call s:hi('CocWarningHighlight', '', '', 'underline')
call s:hi('CocInfoHighlight', '', '', 'underline')
call s:hi('CocHintHighlight', '', '', 'underline')
call s:hi('CocHintHighlight', '', '', 'underline')
call s:hi('CocDeprecatedHighlight', '', '', 'underline')
call s:hi('CocUnusedHighlight', '', '', 'underline')

call s:hi('CocErrorVirtualText', 'darkgray', '', '')
call s:hi('CocWarningVirtualText', 'darkgray', '', '')
call s:hi('CocInfoVirtualText', 'darkgray', '', '')
call s:hi('CocHintVirtualText', 'darkgray', '', '')

call s:hi('CocFloating', '')
call s:hi('CocErrorFloat', '')
call s:hi('CocWarningFloat', '')
call s:hi('CocInfoFloat', '')
call s:hi('CocHintFloat', '')

call s:hi('LspDiagnosticsDefaultError', 'darkred')
call s:hi('LspDiagnosticsDefaultWarning', 'darkyellow')
call s:hi('LspDiagnosticsDefaultInformation', 'darkblue')
call s:hi('LspDiagnosticsDefaultHint', 'darkmagenta')

call s:hi('LspDiagnosticsVirtualTextError', 'darkred', '', '')
call s:hi('LspDiagnosticsVirtualTextWarning', 'darkyellow', '', '')
call s:hi('LspDiagnosticsVirtualTextInformation', 'darkblue', '', '')
call s:hi('LspDiagnosticsVirtualTextHint', 'darkmagenta', '', '')

call s:hi('LspDiagnosticsUnderlineError', 'darkred', '', 'underline')
call s:hi('LspDiagnosticsUnderlineWarning', 'darkyellow', '', 'underline')
call s:hi('LspDiagnosticsUnderlineInformation', 'darkblue', '', 'underline')
call s:hi('LspDiagnosticsUnderlineHint', 'darkmagenta', '', 'underline')

call s:hi('LspReferenceText', '', '', 'bold')
call s:hi('LspReferenceRead', '', '', 'bold')
call s:hi('LspReferenceWrite', '', '', 'bold')

call s:hi('TelescopeNormal', '', 'black')
call s:hi('TelescopePreviewNormal', '', 'black')
call s:hi('TelescopeSelection', '', '', 'reverse')

call s:hi('WhichKeyFloat', '', 'black')

call s:hi('BufferCurrent', 'darkgreen')
call s:hi('BufferCurrentIcon', 'darkblue')
call s:hi('BufferCurrentIndex', 'darkgreen')
call s:hi('BufferCurrentMod', 'darkyellow')
call s:hi('BufferCurrentSign', '')
call s:hi('BufferCurrentTarget', 'darkred')

call s:hi('BufferVisible', '', 'black')
call s:hi('BufferVisibleIcon', 'darkblue', 'black')
call s:hi('BufferVisibleIndex', '', 'black')
call s:hi('BufferVisibleMod', 'darkyellow', 'black')
call s:hi('BufferVisibleSign', 'darkblue', 'black')
call s:hi('BufferVisibleTarget', 'darkred', 'black')

call s:hi('BufferInactive', '', 'black')
call s:hi('BufferInactiveIcon', 'darkblue', 'black')
call s:hi('BufferInactiveIndex', '', 'black')
call s:hi('BufferInactiveMod', 'darkyellow', 'black')
call s:hi('BufferInactiveSign', 'darkblue', 'black')
call s:hi('BufferInactiveTarget', 'darkred', 'black')

call s:hi('BufferTabpages', '', 'black')
call s:hi('BufferTabpageFill', '', 'black')

call s:hi('BufferOffset', '', 'black')
