let s:dark_red = 1
let s:dark_green = 2
let s:dark_yellow = 3
let s:dark_blue = 4
let s:dark_magenta = 5
let s:dark_cyan = 6
let s:light_gray = 7
let s:dark_gray = 8
let s:light_red = 9
let s:light_green = 10
let s:light_yellow = 11
let s:light_blue = 12
let s:light_magenta = 13
let s:light_cyan = 14

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

call s:hi('ColorColumn', '', s:dark_gray)
call s:hi('CursorColumn', '', s:dark_gray)
call s:hi('CursorLine', '', 'Black')
call s:hi('VertSplit', s:dark_gray)

call s:hi('LineNr', s:dark_gray)
call s:hi('CursorLineNr', s:light_gray, 'Black')

call s:hi('Folded', s:dark_gray)
call s:hi('FoldColumn', s:dark_gray)
call s:hi('SignColumn', 'NONE', 'NONE')

call s:hi('Pmenu', 'NONE', 'Black')
call s:hi('PmenuSel', 'NONE', 'Black', 'reverse')
" call s:hi('PmenuSbar', s:dark_blue, s:light_gray)
" call s:hi('PmenuThumb', s:light_gray, s:dark_blue)

call s:hi('StatusLine', s:light_gray, 'Black')
call s:hi('StatusLineNC', s:dark_gray, 'Black')
call s:hi('WildMenu', '', s:dark_green)

call s:hi('TabLine', s:dark_gray, 'Black')
call s:hi('TabLineFill', 'Black', 'Black')
call s:hi('TabLineSel', s:light_gray, 'Black')

call s:hi('MatchParen', 'NONE', s:dark_gray)
call s:hi('Substitute', '', s:light_yellow)
call s:hi('Search', '', s:light_yellow)
" call s:hi('QuickFixLine', s:dark_magenta)
" call s:hi('IncSearch', s:dark_gray, s:dark_yellow)
call s:hi('Visual', 'NONE', 'NONE', 'reverse')
" call s:hi('VisualNOS', 'NONE', 'NONE', 'reverse')

call s:hi('Conceal', s:dark_gray)
call s:hi('Whitespace', s:dark_gray)
call s:hi('EndOfBuffer', '')
call s:hi('NonText', s:dark_gray)
call s:hi('SpecialKey', s:dark_gray)

call s:hi('Directory', s:dark_gray)
call s:hi('Title', s:dark_green, 'NONE')
" call s:hi('ErrorMsg', 'White', s:dark_red)
" call s:hi('ModeMsg', 'White', '')
" call s:hi('MsgArea', 'White', '')
" call s:hi('MsgSeperator', 'White', '')
" call s:hi('MoreMsg', 'White', '')
" call s:hi('WarningMsg', s:dark_red)
" call s:hi('Question', s:dark_yellow)

" -- :diff
call s:hi('DiffAdd', 'Black', s:dark_green)
call s:hi('DiffChange', 'Black', s:dark_yellow)
call s:hi('DiffDelete', 'Black', s:dark_red)
call s:hi('DiffText', 'Black', s:dark_cyan)

call s:hi('DiffAdded', 'Black', s:dark_green)
call s:hi('DiffRemoved', 'Black', s:dark_red)

" -- spell
call s:hi('SpellBad',   s:dark_gray, 'NONE', 'underline')
call s:hi('SpellCap',   s:dark_gray, 'NONE', 'underline')
call s:hi('SpellLocal', s:dark_gray, 'NONE', 'underline')
call s:hi('SpellRare',  s:dark_gray, 'NONE', 'underline')

" -- diagnostic-highlight
call s:hi('DiagnosticError', s:dark_red)
call s:hi('DiagnosticWarn', s:light_yellow)
call s:hi('DiagnosticInfo', s:light_blue)
call s:hi('DiagnosticHint', s:light_green)

" call s:hi('Cursor', '', '', 'reverse')
" call s:hi('Cursor', '', '', 'reverse')
" call s:hi('CursorIM', '', '', 'reverse')
" call s:hi('TermCursor', '', '', 'reverse')
" call s:hi('TermCursorNC', '', '', 'reverse')

call s:hi('SignifySignAdd', s:dark_green)
call s:hi('SignifySignDelete', s:dark_red)
call s:hi('SignifySignChange', s:dark_yellow)

call s:hi('GitGutterAdd', s:dark_green)
call s:hi('GitGutterDelete', s:dark_red)
call s:hi('GitGutterChange', s:dark_yellow)

call s:hi('GitSignsAdd', s:dark_green)
call s:hi('GitSignsDelete', s:dark_red)
call s:hi('GitSignsChange', s:dark_yellow)

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

call s:hi('CocErrorVirtualText', s:dark_gray, '', '')
call s:hi('CocWarningVirtualText', s:dark_gray, '', '')
call s:hi('CocInfoVirtualText', s:dark_gray, '', '')
call s:hi('CocHintVirtualText', s:dark_gray, '', '')

call s:hi('CocFloating', '')
call s:hi('CocErrorFloat', '')
call s:hi('CocWarningFloat', '')
call s:hi('CocInfoFloat', '')
call s:hi('CocHintFloat', '')

call s:hi('LspDiagnosticsDefaultError', s:dark_red)
call s:hi('LspDiagnosticsDefaultWarning', s:dark_yellow)
call s:hi('LspDiagnosticsDefaultInformation', s:dark_blue)
call s:hi('LspDiagnosticsDefaultHint', s:dark_magenta)

call s:hi('LspDiagnosticsVirtualTextError', s:dark_red, '', '')
call s:hi('LspDiagnosticsVirtualTextWarning', s:dark_yellow, '', '')
call s:hi('LspDiagnosticsVirtualTextInformation', s:dark_blue, '', '')
call s:hi('LspDiagnosticsVirtualTextHint', s:dark_magenta, '', '')

call s:hi('LspDiagnosticsUnderlineError', s:dark_red, '', 'underline')
call s:hi('LspDiagnosticsUnderlineWarning', s:dark_yellow, '', 'underline')
call s:hi('LspDiagnosticsUnderlineInformation', s:dark_blue, '', 'underline')
call s:hi('LspDiagnosticsUnderlineHint', s:dark_magenta, '', 'underline')

call s:hi('LspReferenceText', '', '', 'bold')
call s:hi('LspReferenceRead', '', '', 'bold')
call s:hi('LspReferenceWrite', '', '', 'bold')

call s:hi('TelescopeNormal', '', 'Black')
call s:hi('TelescopePreviewNormal', '', 'Black')
call s:hi('TelescopeSelection', '', '', 'reverse')

call s:hi('WhichKeyFloat', '', 'Black')

" call s:hi('BufferCurrent', '', 'White')
" call s:hi('BufferCurrentIndex', '', 'Black')
call s:hi('BufferCurrentMod', s:light_yellow)
call s:hi('BufferCurrentSign', s:light_blue)
call s:hi('BufferCurrentTarget', s:light_red)

call s:hi('BufferVisible', '', 'Black')
call s:hi('BufferVisibleIndex', '', 'Black')
call s:hi('BufferVisibleMod', s:dark_yellow, 'Black')
call s:hi('BufferVisibleSign', s:dark_blue, 'Black')
call s:hi('BufferVisibleTarget', s:dark_red, 'Black')

call s:hi('BufferInactive', '', 'Black')
call s:hi('BufferInactiveIndex', '', 'Black')
call s:hi('BufferInactiveMod', s:dark_yellow, 'Black')
call s:hi('BufferInactiveSign', s:dark_blue, 'Black')
call s:hi('BufferInactiveTarget', s:dark_red, 'Black')

call s:hi('BufferTabpages', '', 'Black')
call s:hi('BufferTabpageFill', '', 'Black')

call s:hi('BufferCurrentIcon', s:light_red, 'Black')
call s:hi('BufferVisibleIcon', s:light_blue, 'Black')
call s:hi('BufferInactiveIcon', s:light_yellow, 'Black')
call s:hi('BufferOffset', '', 'Black')
