hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-nord'

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
" call s:hi('NormalFloat')

call s:hi('ColorColumn', '', s:dark_gray)
call s:hi('CursorColumn', '', s:dark_gray)
call s:hi('CursorLine', '', 'Black')
call s:hi('VertSplit', s:dark_gray)

call s:hi('LineNr', s:dark_gray)
call s:hi('CursorLineNr', s:light_gray, 'Black')

call s:hi('Folded', s:dark_gray)
call s:hi('FoldColumn', s:dark_gray)
call s:hi('SignColumn', 'NONE', 'NONE')

call s:hi('Pmenu', 'NONE', 'NONE')
call s:hi('PmenuSel', 'NONE', 'NONE', 'reverse')
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

" -- group-name
call s:hi('Comment', s:dark_gray)
call s:hi('Identifier')
call s:hi('Function', s:light_cyan)

call s:hi('Constant')
call s:hi('String', s:light_green)
call s:hi('Character', s:light_green)
call s:hi('Number', s:light_magenta)
call s:hi('Boolean', s:light_blue)
call s:hi('Float', s:light_magenta)

call s:hi('Statement', s:light_blue)
call s:hi('Conditional', s:light_blue)
call s:hi('Repeat', s:light_blue)
call s:hi('Label', s:light_blue)

call s:hi('Operator', s:light_blue)
call s:hi('Keyword', s:light_blue)
call s:hi('Exception', s:light_blue)

call s:hi('PreProc', s:light_blue)
call s:hi('Include', s:light_blue)
call s:hi('Define', s:light_blue)
call s:hi('Macro', s:light_blue)
call s:hi('PreCondit', s:light_blue)

call s:hi('Type', s:light_blue)
call s:hi('StorageClass', s:light_blue)
call s:hi('Structure', s:light_blue)
call s:hi('Typedef', s:light_blue)

call s:hi('Special')
call s:hi('SpecialChar', s:light_yellow)
call s:hi('Tag')

call s:hi('Delimiter')
call s:hi('SpecialComment', s:light_cyan)
call s:hi('Debug')

" call s:hi('Underlined', 'NONE', 'NONE', 'underline')
" call s:hi('Bold', '', '', 'bold')
" call s:hi('Italic', '', '', 'italic')

call s:hi('Ignore')
" call s:hi('Error', '', s:dark_red)
" call s:hi('Todo', s:light_gray)

" -- treesitter
" call s:hi('TSAnnotation', s:dark_blue)
" call s:hi('TSAttribute', s:dark_yellow)
" call s:hi('TSBoolean', s:dark_yellow)
" call s:hi('TSCharacter', s:dark_green)
" call s:hi('TSConditional', s:dark_magenta)
" highlight! link TSConstBuiltin Constant
" highlight! link  TSConstMacro Constant
" call s:hi('TSConstant', s:dark_yellow)
" call s:hi('TSConstructor', s:dark_blue)
" call s:hi('TSEmphasis', s:dark_cyan)
" call s:hi('TSError', s:dark_red)
" call s:hi('TSExeption', s:dark_red)
" call s:hi('TSField', s:dark_yellow)
" call s:hi('TSFloat', s:dark_yellow)
" call s:hi('TSFunction', s:dark_blue)
" highlight! link  TSFunctionBuiltin Function
" highlight! link  TSFuncMacro Function
" call s:hi('TSInclude', s:dark_red)
" call s:hi('TSKeyword', s:dark_magenta)
" highlight! link  TSKeywordFunction PreProc
" call s:hi('TSKeywordOperator', s:dark_cyan)
" call s:hi('TSLabel', s:dark_magenta)
" call s:hi('TSLiteral', s:dark_green)
" call s:hi('TSMethod', s:dark_blue)
" call s:hi('TSNamespace', s:dark_green)
" call s:hi('TSNumber', s:dark_yellow)
" call s:hi('TSOperator', s:dark_cyan)
" call s:hi('TSParameter', s:dark_red)
" call s:hi('TSParameterReference', s:dark_red)
" call s:hi('TSProperty', s:dark_red)
" call s:hi('TSPunctDelimitter', s:dark_red)
" highlight! link  TSPunctBracket Delimiter
" highlight! link  TSPunctSpecial Delimiter
" call s:hi('TSRepeat', s:dark_magenta)
" call s:hi('TSString', s:dark_green)
" call s:hi('TSStringRegex', s:dark_red)
" call s:hi('TSStringEscape', s:dark_blue)
" highlight! link  TSSymbol Identifier
" highlight! link  TSVariableBuiltin Identifier
" call s:hi('TSTag')
" call s:hi('TSTagDelimitter')
" call s:hi('TSText')
" call s:hi('TSStrong', s:dark_magenta)
" call s:hi('TSStructure', s:dark_yellow)
" call s:hi('TSTitle', s:dark_yellow)
" call s:hi('TSType', s:dark_blue)
" call s:hi('TSTypeBuiltin', s:dark_red)
" call s:hi('TSUnderline', s:dark_yellow)
" highlight! link  TSUri String
" call s:hi('TSMath', s:light_cyan)
" highlight! link  TSEnvironment Statement
" highlight! link  TSEnvironmentName PreProc

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

call s:hi('CocFloating', '', '', '')
call s:hi('CocErrorFloat', '', '', '')
call s:hi('CocWarningFloat', '', '', '')
call s:hi('CocInfoFloat', '', '', '')
call s:hi('CocHintFloat', '', '', '')

call s:hi('LspDiagnosticsDefaultError', '', '', 'underline')
call s:hi('LspDiagnosticsDefaultWarning', '', '', 'underline')
call s:hi('LspDiagnosticsDefaultInformation', '', '', 'underline')
call s:hi('LspDiagnosticsDefaultHint', '', '', 'underline')

call s:hi('LspDiagnosticsVirtualTextError', s:dark_gray, '', '')
call s:hi('LspDiagnosticsVirtualTextWarning', s:dark_gray, '', '')
call s:hi('LspDiagnosticsVirtualTextInformation', s:dark_gray, '', '')
call s:hi('LspDiagnosticsVirtualTextHint', s:dark_gray, '', '')

call s:hi('LspDiagnosticsUnderlineError', '', '', 'underline')
call s:hi('LspDiagnosticsUnderlineWarning', '', '', 'underline')
call s:hi('LspDiagnosticsUnderlineInformation', '', '', 'underline')
call s:hi('LspDiagnosticsUnderlineHint', '', '', 'underline')

call s:hi('LspDiagnosticsFloatingError', '', '', '')
call s:hi('LspDiagnosticsFloatingWarning', '', '', '')
call s:hi('LspDiagnosticsFloatingInformation', '', '', '')
call s:hi('LspDiagnosticsFloatingHint', '', '', '')

call s:hi('LspDiagnosticsSignError', s:dark_gray, '', '')
call s:hi('LspDiagnosticsSignWarning', s:dark_gray, '', '')
call s:hi('LspDiagnosticsSignInformation', s:dark_gray, '', '')
call s:hi('LspDiagnosticsSignHint', s:dark_gray, '', '')
call s:hi('LspCodeLens', s:dark_gray, '', '')

call s:hi('LspReferenceText', '', '', 'bold')
call s:hi('LspReferenceRead', '', '', 'bold')
call s:hi('LspReferenceWrite', '', '', 'bold')

call s:hi('TelescopeNormal', '', 'Black')
call s:hi('TelescopePreviewNormal', '', 'Black')
call s:hi('TelescopeSelection', '', '', 'reverse')
