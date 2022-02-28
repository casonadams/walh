let s:colors = {
\ 'grey': walh#colors.grey,
\ 'darkgrey': walh#colors.darkgrey,
\ 'red': walh#colors.red,
\ 'green': walh#colors.green,
\ 'yellow': walh#colors.yellow,
\ 'blue': walh#colors.blue,
\ 'magenta': walh#colors.magenta,
\ 'cyan': walh#colors.cyan,
\ 'orange': walh#colors.orange,
\ 'black': walh#colors.black,
\ 'white': walh#colors.white,
\}

function ui#init()
  call walh#hi("WalhGrey", s:colors.grey)
  call walh#hi("WalhDarkGrey", s:colors.darkgrey)
  call walh#hi("WalhRed", s:colors.red)
  call walh#hi("WalhGreen", s:colors.green)
  call walh#hi("WalhYellow", s:colors.yellow)
  call walh#hi("WalhBlue", s:colors.blue)
  call walh#hi("WalhMagenta", s:colors.magenta)
  call walh#hi("WalhCyan", s:colors.cyan)
  call walh#hi("WalhWhite", s:colors.white)
  call walh#hi("WalhOrange", s:colors.orange)
  call walh#hi("WalhBlack", s:colors.black)

  " -- highlight-default
  call walh#hi('Normal')
  call walh#hi('NormalFloat', '', s:colors.black)

  call walh#hi('Underlined', s:colors.blue, 'NONE', 'underline')
  call walh#hi('Bold', '', '', 'bold')
  call walh#hi('Italic', '', '', 'italic')

  call walh#hi('Error', '', s:colors.red, 'underline')
  call walh#hi('Todo', s:colors.yellow, 'NONE', 'bold')
  call walh#hi('Ignore', '', '')

  call walh#hi('ColorColumn', '', s:colors.darkgrey)
  call walh#hi('CursorColumn', '', s:colors.darkgrey)
  call walh#hi('CursorLine', '', s:colors.black)
  call walh#hi('VertSplit', s:colors.black)

  call walh#hi('LineNr', s:colors.darkgrey)
  call walh#hi('CursorLineNr', '', s:colors.black)

  call walh#hi('Folded', s:colors.darkgrey)
  call walh#hi('FoldColumn', s:colors.darkgrey)
  call walh#hi('SignColumn', 'NONE', 'NONE')

  call walh#hi('Pmenu', 'NONE', s:colors.black)
  call walh#hi('PmenuSel', 'NONE', s:colors.black, 'reverse')

  call walh#hi('StatusLine', '', s:colors.black, 'NONE')
  call walh#hi('StatusLineNC', s:colors.darkgrey, s:colors.black)
  call walh#hi('WildMenu', '', s:colors.green)

  call walh#hi('TabLine', s:colors.grey, s:colors.black)
  call walh#hi('TabLineFill', s:colors.black, s:colors.black)
  call walh#hi('TabLineSel', s:colors.green, s:colors.black)

  call walh#hi('MatchParen', 'NONE', 'NONE', 'bold,underline')
  call walh#hi('Substitute', s:colors.black, s:colors.yellow)
  call walh#hi('Search', s:colors.black, s:colors.yellow)
  " call walh#hi('QuickFixLine', walh#magenta)
  " call walh#hi('IncSearch', walh#darkgrey, walh#yellow)
  call walh#hi('Visual', 'NONE', 'NONE', 'reverse')
  " call walh#hi('VisualNOS', 'NONE', 'NONE', 'reverse')

  call walh#hi('Conceal', s:colors.darkgrey)
  call walh#hi('Whitespace', s:colors.darkgrey)
  call walh#hi('EndOfBuffer', '')
  call walh#hi('NonText', s:colors.darkgrey)
  call walh#hi('SpecialKey', s:colors.darkgrey)

  call walh#hi('Directory', s:colors.blue)
  call walh#hi('Title', s:colors.green, 'NONE')

  call walh#hi('ErrorMsg', s:colors.red)
  call walh#hi('ModeMsg', s:colors.grey)
  call walh#hi('MsgArea', s:colors.grey)
  call walh#hi('MsgSeperator', s:colors.grey)
  call walh#hi('MoreMsg',s:colors.grey)
  call walh#hi('WarningMsg', s:colors.red)
  call walh#hi('Question', s:colors.green)

  " -- :diff
  call walh#hi('DiffAdd', s:colors.black, s:colors.green)
  call walh#hi('DiffDelete', s:colors.black, s:colors.red)
  call walh#hi('DiffChange', s:colors.black, s:colors.yellow)
  call walh#hi('DiffText', s:colors.black, s:colors.blue)

  call walh#hi('DiffAdded', s:colors.black, s:colors.green)
  call walh#hi('DiffRemoved', s:colors.black, s:colors.red)

  " -- spell
  call walh#hi('SpellBad',   s:colors.darkgrey, 'NONE', 'underline')
  call walh#hi('SpellCap',   s:colors.darkgrey, 'NONE', 'underline')
  call walh#hi('SpellLocal', s:colors.darkgrey, 'NONE', 'underline')
  call walh#hi('SpellRare',  s:colors.darkgrey, 'NONE', 'underline')

  " -- diagnostic-highlight
  call walh#hi('DiagnosticError', s:colors.red)
  call walh#hi('DiagnosticWarn', s:colors.yellow)
  call walh#hi('DiagnosticInfo', s:colors.blue)
  call walh#hi('DiagnosticHint', s:colors.grey)

  call walh#hi('SignifySignAdd', s:colors.green)
  call walh#hi('SignifySignDelete', s:colors.red)
  call walh#hi('SignifySignChange', s:colors.yellow)

  call walh#hi('GitGutterAdd', s:colors.green)
  call walh#hi('GitGutterDelete', s:colors.red)
  call walh#hi('GitGutterChange', s:colors.yellow)

  call walh#hi('GitSignsAdd', s:colors.green)
  call walh#hi('GitSignsDelete', s:colors.red)
  call walh#hi('GitSignsChange', s:colors.yellow)

  call walh#hi('ALEError', '', '', 'underline')
  call walh#hi('ALEWarning', '', '', 'underline')
  call walh#hi('ALEInfo', '', '', 'underline')
  call walh#hi('ALEStyleError', '', '', 'underline')
  call walh#hi('ALEStyleWarning', '', '', 'underline')

  call walh#hi('ALEErrorLine', '', '')
  call walh#hi('ALEWarningLine', '', '')
  call walh#hi('ALEInfoLine', '', '')

  call walh#hi('CocHighlightText', '', '', 'bold')

  call walh#hi('CocErrorSign', s:colors.red)
  call walh#hi('CocWarningSign', s:colors.yellow)
  call walh#hi('CocInfoSign', s:colors.blue)
  call walh#hi('CocHintSign', s:colors.grey)

  call walh#hi('CocErrorHighlight', '', '', 'underline')
  call walh#hi('CocWarningHighlight', '', '', 'underline')
  call walh#hi('CocInfoHighlight', '', '', 'underline')
  call walh#hi('CocHintHighlight', '', '', 'underline')

  call walh#hi('CocDeprecatedHighlight', '', '', 'underline')
  call walh#hi('CocUnusedHighlight', '', '', 'underline')

  call walh#hi('CocErrorVirtualText', s:colors.red, 'NONE')
  call walh#hi('CocWarningVirtualText', s:colors.yellow, 'NONE')
  call walh#hi('CocInfoVirtualText', s:colors.blue, 'NONE')
  call walh#hi('CocHintVirtualText', s:colors.grey, 'NONE')

  call walh#hi('CocCodeLens', s:colors.blue, '')

  call walh#hi('CocFloating', '', s:colors.black)
  call walh#hi('CocErrorFloat', s:colors.red)
  call walh#hi('CocWarningFloat', s:colors.yellow)
  call walh#hi('CocInfoFloat', s:colors.blue)
  call walh#hi('CocHintFloat', s:colors.grey)

  call walh#hi('LspDiagnosticsDefaultError', s:colors.red)
  call walh#hi('LspDiagnosticsDefaultWarning', s:colors.yellow)
  call walh#hi('LspDiagnosticsDefaultInformation', s:colors.blue)
  call walh#hi('LspDiagnosticsDefaultHint', s:colors.grey)

  call walh#hi('LspDiagnosticsVirtualTextError', s:colors.red, '', '')
  call walh#hi('LspDiagnosticsVirtualTextWarning', s:colors.yellow, '', '')
  call walh#hi('LspDiagnosticsVirtualTextInformation', s:colors.blue, '', '')
  call walh#hi('LspDiagnosticsVirtualTextHint', s:colors.grey, '', '')

  call walh#hi('LspDiagnosticsUnderlineError', s:colors.red, '', 'underline')
  call walh#hi('LspDiagnosticsUnderlineWarning', s:colors.yellow, '', 'underline')
  call walh#hi('LspDiagnosticsUnderlineInformation', s:colors.blue, '', 'underline')
  call walh#hi('LspDiagnosticsUnderlineHint', s:colors.grey, '', 'underline')

  call walh#hi('LspDiagnosticsFloatingError', '', s:colors.black)
  call walh#hi('LspDiagnosticsFloatingWarning', '', s:colors.black)
  call walh#hi('LspDiagnosticsFloatingInformation', '', s:colors.black)
  call walh#hi('LspDiagnosticsFloatingHint', '', s:colors.black)

  call walh#hi('LspReferenceText', '', '', 'bold')
  call walh#hi('LspReferenceRead', '', '', 'bold')
  call walh#hi('LspReferenceWrite', '', '', 'bold')

  call walh#hi('TelescopeNormal', '', s:colors.black)
  call walh#hi('TelescopePreviewNormal', '', s:colors.black)
  call walh#hi('TelescopeSelection', '', '', 'reverse')
endfunction
