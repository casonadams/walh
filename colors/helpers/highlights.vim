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
call s:hi('CursorLine', '', 'Black')
call s:hi('VertSplit', 'darkgray')

call s:hi('LineNr', 'darkgray')
call s:hi('CursorLineNr', 'darkgray', 'Black')

call s:hi('Folded', 'darkgray')
call s:hi('FoldColumn', 'darkgray')
call s:hi('SignColumn', 'NONE', 'NONE')

call s:hi('Pmenu', 'NONE', 'Black')
call s:hi('PmenuSel', 'NONE', 'Black', 'reverse')
" call s:hi('PmenuSbar', 'darkblue', 'lightgray')
" call s:hi('PmenuThumb', 'lightgray', 'darkblue')

call s:hi('StatusLine', 'darkgray', 'Black')
call s:hi('StatusLineNC', 'darkgray', 'Black')
call s:hi('WildMenu', '', 'darkgreen')

call s:hi('TabLine', 'darkgray', 'Black')
call s:hi('TabLineFill', 'Black', 'Black')
call s:hi('TabLineSel', 'darkgreen', 'Black')

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
call s:hi('DiffAdd', 'Black', 'darkgreen')
call s:hi('DiffChange', 'Black', 'darkyellow')
call s:hi('DiffDelete', 'Black', 'darkred')
call s:hi('DiffText', 'Black', 'darkcyan')

call s:hi('DiffAdded', 'Black', 'darkgreen')
call s:hi('DiffRemoved', 'Black', 'darkred')

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

call s:hi('TelescopeNormal', '', 'Black')
call s:hi('TelescopePreviewNormal', '', 'Black')
call s:hi('TelescopeSelection', '', '', 'reverse')

call s:hi('WhichKeyFloat', '', 'Black')

call s:hi('BufferCurrent', 'darkgreen')
call s:hi('BufferCurrentIcon', 'darkblue')
call s:hi('BufferCurrentIndex', 'darkgreen')
call s:hi('BufferCurrentMod', 'darkyellow')
call s:hi('BufferCurrentSign', '')
call s:hi('BufferCurrentTarget', 'darkred')

call s:hi('BufferVisible', '', 'Black')
call s:hi('BufferVisibleIcon', 'darkblue', 'Black')
call s:hi('BufferVisibleIndex', '', 'Black')
call s:hi('BufferVisibleMod', 'darkyellow', 'Black')
call s:hi('BufferVisibleSign', 'darkblue', 'Black')
call s:hi('BufferVisibleTarget', 'darkred', 'Black')

call s:hi('BufferInactive', '', 'Black')
call s:hi('BufferInactiveIcon', 'darkblue', 'Black')
call s:hi('BufferInactiveIndex', '', 'Black')
call s:hi('BufferInactiveMod', 'darkyellow', 'Black')
call s:hi('BufferInactiveSign', 'darkblue', 'Black')
call s:hi('BufferInactiveTarget', 'darkred', 'Black')

call s:hi('BufferTabpages', '', 'Black')
call s:hi('BufferTabpageFill', '', 'Black')

call s:hi('BufferOffset', '', 'Black')
