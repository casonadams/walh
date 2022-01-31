let walh#grey = 7
let walh#darkgrey = 8
let walh#red = 9
let walh#green = 10
let walh#yellow = 11
let walh#blue = 12
let walh#magenta = 13
let walh#cyan = 14
let walh#white = 15
let walh#orange = 208
let walh#black = 247

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

call walh#hi("WalhOrange", walh#orange)

" -- highlight-default
call walh#hi('Normal')
call walh#hi('NormalFloat', '', walh#black)

call walh#hi('Underlined', walh#blue, 'NONE', 'underline')
call walh#hi('Bold', '', '', 'bold')
call walh#hi('Italic', '', '', 'italic')

call walh#hi('Error', '', walh#red, 'underline')
call walh#hi('Todo', walh#yellow, 'NONE', 'bold')
call walh#hi('Ignore', '', '')

call walh#hi('ColorColumn', '', walh#darkgrey)
call walh#hi('CursorColumn', '', walh#darkgrey)
call walh#hi('CursorLine', '', walh#black)
call walh#hi('VertSplit', walh#black)

call walh#hi('LineNr', walh#darkgrey)
call walh#hi('CursorLineNr', '', walh#black)

call walh#hi('Folded', walh#darkgrey)
call walh#hi('FoldColumn', walh#darkgrey)
call walh#hi('SignColumn', 'NONE', 'NONE')

call walh#hi('Pmenu', 'NONE', walh#black)
call walh#hi('PmenuSel', 'NONE', walh#black, 'reverse')

call walh#hi('StatusLine', '', walh#black, 'NONE')
call walh#hi('StatusLineNC', walh#darkgrey, walh#black)
call walh#hi('WildMenu', '', walh#green)

call walh#hi('TabLine', walh#grey, walh#black)
call walh#hi('TabLineFill', walh#black, walh#black)
call walh#hi('TabLineSel', walh#green, walh#black)

call walh#hi('MatchParen', 'NONE', 'NONE', 'bold,underline')
call walh#hi('Substitute', walh#black, walh#yellow)
call walh#hi('Search', '', walh#yellow)
" call walh#hi('QuickFixLine', walh#magenta)
" call walh#hi('IncSearch', walh#darkgrey, walh#yellow)
call walh#hi('Visual', 'NONE', 'NONE', 'reverse')
" call walh#hi('VisualNOS', 'NONE', 'NONE', 'reverse')

call walh#hi('Conceal', walh#darkgrey)
call walh#hi('Whitespace', walh#darkgrey)
call walh#hi('EndOfBuffer', '')
call walh#hi('NonText', walh#darkgrey)
call walh#hi('SpecialKey', walh#darkgrey)

call walh#hi('Directory', walh#blue)
call walh#hi('Title', walh#green, 'NONE')

call walh#hi('ErrorMsg', walh#red)
call walh#hi('ModeMsg', walh#grey)
call walh#hi('MsgArea', walh#grey)
call walh#hi('MsgSeperator', walh#grey)
call walh#hi('MoreMsg',walh#grey)
call walh#hi('WarningMsg', walh#red)
call walh#hi('Question', walh#green)

" -- :diff
call walh#hi('DiffAdd', walh#black, walh#green)
call walh#hi('DiffDelete', walh#black, walh#red)
call walh#hi('DiffChange', walh#black, walh#yellow)
call walh#hi('DiffText', walh#black, walh#blue)

call walh#hi('DiffAdded', walh#black, walh#green)
call walh#hi('DiffRemoved', walh#black, walh#red)

" -- spell
call walh#hi('SpellBad',   walh#darkgrey, 'NONE', 'underline')
call walh#hi('SpellCap',   walh#darkgrey, 'NONE', 'underline')
call walh#hi('SpellLocal', walh#darkgrey, 'NONE', 'underline')
call walh#hi('SpellRare',  walh#darkgrey, 'NONE', 'underline')

" -- diagnostic-highlight
call walh#hi('DiagnosticError', walh#red)
call walh#hi('DiagnosticWarn', walh#yellow)
call walh#hi('DiagnosticInfo', walh#blue)
call walh#hi('DiagnosticHint', walh#grey)

call walh#hi('SignifySignAdd', walh#green)
call walh#hi('SignifySignDelete', walh#red)
call walh#hi('SignifySignChange', walh#yellow)

call walh#hi('GitGutterAdd', walh#green)
call walh#hi('GitGutterDelete', walh#red)
call walh#hi('GitGutterChange', walh#yellow)

call walh#hi('GitSignsAdd', walh#green)
call walh#hi('GitSignsDelete', walh#red)
call walh#hi('GitSignsChange', walh#yellow)

call walh#hi('ALEError', '', '', 'underline')
call walh#hi('ALEWarning', '', '', 'underline')
call walh#hi('ALEInfo', '', '', 'underline')
call walh#hi('ALEStyleError', '', '', 'underline')
call walh#hi('ALEStyleWarning', '', '', 'underline')

call walh#hi('ALEErrorLine', '', '')
call walh#hi('ALEWarningLine', '', '')
call walh#hi('ALEInfoLine', '', '')

call walh#hi('CocHighlightText', '', '', 'bold')

call walh#hi('CocErrorSign', walh#red)
call walh#hi('CocWarningSign', walh#yellow)
call walh#hi('CocInfoSign', walh#blue)
call walh#hi('CocHintSign', walh#grey)

call walh#hi('CocErrorHighlight', '', '', 'underline')
call walh#hi('CocWarningHighlight', '', '', 'underline')
call walh#hi('CocInfoHighlight', '', '', 'underline')
call walh#hi('CocHintHighlight', '', '', 'underline')

call walh#hi('CocDeprecatedHighlight', '', '', 'underline')
call walh#hi('CocUnusedHighlight', '', '', 'underline')

call walh#hi('CocErrorVirtualText', walh#red, 'NONE')
call walh#hi('CocWarningVirtualText', walh#yellow, 'NONE')
call walh#hi('CocInfoVirtualText', walh#blue, 'NONE')
call walh#hi('CocHintVirtualText', walh#grey, 'NONE')

call walh#hi('CocCodeLens', walh#blue, '')

call walh#hi('CocFloating', '', walh#black)
call walh#hi('CocErrorFloat', walh#red)
call walh#hi('CocWarningFloat', walh#yellow)
call walh#hi('CocInfoFloat', walh#blue)
call walh#hi('CocHintFloat', walh#grey)

call walh#hi('LspDiagnosticsDefaultError', walh#red)
call walh#hi('LspDiagnosticsDefaultWarning', walh#yellow)
call walh#hi('LspDiagnosticsDefaultInformation', walh#blue)
call walh#hi('LspDiagnosticsDefaultHint', walh#grey)

call walh#hi('LspDiagnosticsVirtualTextError', walh#red, '', '')
call walh#hi('LspDiagnosticsVirtualTextWarning', walh#yellow, '', '')
call walh#hi('LspDiagnosticsVirtualTextInformation', walh#blue, '', '')
call walh#hi('LspDiagnosticsVirtualTextHint', walh#grey, '', '')

call walh#hi('LspDiagnosticsUnderlineError', walh#red, '', 'underline')
call walh#hi('LspDiagnosticsUnderlineWarning', walh#yellow, '', 'underline')
call walh#hi('LspDiagnosticsUnderlineInformation', walh#blue, '', 'underline')
call walh#hi('LspDiagnosticsUnderlineHint', walh#grey, '', 'underline')

call walh#hi('LspDiagnosticsFloatingError', '', walh#black)
call walh#hi('LspDiagnosticsFloatingWarning', '', walh#black)
call walh#hi('LspDiagnosticsFloatingInformation', '', walh#black)
call walh#hi('LspDiagnosticsFloatingHint', '', walh#black)

call walh#hi('LspReferenceText', '', '', 'bold')
call walh#hi('LspReferenceRead', '', '', 'bold')
call walh#hi('LspReferenceWrite', '', '', 'bold')

call walh#hi('TelescopeNormal', '', walh#black)
call walh#hi('TelescopePreviewNormal', '', walh#black)
call walh#hi('TelescopeSelection', '', '', 'reverse')

call walh#hi('BufferCurrent', walh#green)
call walh#hi('BufferCurrentIcon', walh#blue)
call walh#hi('BufferCurrentIndex', walh#green)
call walh#hi('BufferCurrentMod', walh#yellow)
call walh#hi('BufferCurrentSign', '')
call walh#hi('BufferCurrentTarget', walh#red)

call walh#hi('BufferVisible', '', walh#black)
call walh#hi('BufferVisibleIcon', walh#blue, walh#black)
call walh#hi('BufferVisibleIndex', '', walh#black)
call walh#hi('BufferVisibleMod', walh#yellow, walh#black)
call walh#hi('BufferVisibleSign', walh#blue, walh#black)
call walh#hi('BufferVisibleTarget', walh#red, walh#black)

call walh#hi('BufferInactive', '', walh#black)
call walh#hi('BufferInactiveIcon', walh#blue, walh#black)
call walh#hi('BufferInactiveIndex', '', walh#black)
call walh#hi('BufferInactiveMod', walh#yellow, walh#black)
call walh#hi('BufferInactiveSign', walh#blue, walh#black)
call walh#hi('BufferInactiveTarget', walh#red, walh#black)

call walh#hi('BufferTabpages', '', walh#black)
call walh#hi('BufferTabpageFill', '', walh#black)

call walh#hi('BufferOffset', '', walh#black)
