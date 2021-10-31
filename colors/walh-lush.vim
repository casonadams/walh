hi clear
syntax reset
set t_Co=256
let g:colors_name = 'walh'
if &background == 'dark'
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#BD82BA guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#8197BD guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#332D28 guisp=NONE gui=NONE
highlight Comment guifg=#6A5F55 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#7F7267 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#AD73AA guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#D3C1B1 guibg=#332D28 guisp=NONE gui=NONE
highlight Delimiter guifg=#C7A76B guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticError guifg=#AE5E4F guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#88B78B guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#8197BD guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticWarn guifg=#C7A76B guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=#2A2520 guibg=#6A8F6D guisp=NONE gui=NONE
highlight DiffChange guifg=#2A2520 guibg=#B2945F guisp=NONE gui=NONE
highlight DiffDelete guifg=#2A2520 guibg=#AE5E4F guisp=NONE gui=NONE
highlight DiffText guifg=#657898 guibg=#B2945F guisp=NONE gui=NONE
highlight Directory guifg=#749493 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#D3C1B1 guibg=#AE5E4F guisp=NONE gui=NONE
highlight ErrorMsg guifg=#D3C1B1 guibg=#AE5E4F guisp=NONE gui=NONE
highlight Folded guifg=#6A5F55 guibg=#332D28 guisp=NONE gui=NONE
highlight Function guifg=#C7A76B guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#2A2520 guibg=#6A8F6D guisp=NONE gui=reverse
highlight GitSignsChange guifg=#2A2520 guibg=#B2945F guisp=NONE gui=reverse
highlight GitSignsCurrentLineBlame guifg=#2A2520 guibg=#657898 guisp=NONE gui=reverse
highlight GitSignsDelete guifg=#2A2520 guibg=#AE5E4F guisp=NONE gui=reverse
highlight HelpHyperTextJump guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#D3C1B1 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#6A5F55 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#49413A guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#C7A76B guibg=#49413A guisp=NONE gui=bold
highlight ModeMsg guifg=#7F7267 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#6A8F6D guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#D3C1B1 guibg=#2A2520 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#332D28 guisp=NONE gui=NONE
highlight Number guifg=#BD82BA guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#CF7160 guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#49413A guisp=NONE gui=NONE
highlight PreProc guifg=#88B78B guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#2A2520 guibg=#C7A76B guisp=NONE gui=NONE
highlight Special guifg=#C7A76B guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#AE5E4F guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#657898 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#B2945F guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#C7A76B guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#7F7267 guibg=#332D28 guisp=NONE gui=NONE
highlight String guifg=#8197BD guibg=NONE guisp=NONE gui=NONE
highlight Substitute guifg=#2A2520 guibg=#C7A76B guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#AD73AA guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#7A9C9B guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#6A8F6D guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#AE5E4F guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#657898 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#D3C1B1 guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#8197BD guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#D3C1B1 guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#332D28 guisp=NONE gui=bold
highlight Title guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#7F7267 guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#749493 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#49413A guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#49413A guisp=NONE gui=NONE
highlight Walh guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight WarningMsg guifg=#AE5E4F guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#49413A guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#AE5E4F guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#AD73AA guibg=NONE guisp=NONE gui=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SignifySignAdd GitSignsAdd
highlight! link SignifySignChange GitSignsChange
highlight! link SignifySignDelete GitSignsDelete
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSConstMacro Constant
highlight! link TSEmphasis Italic
highlight! link TSEnvironment Statement
highlight! link TSEnvironmentName PreProc
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSKeywordFunction PreProc
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSUnderline Underlined
highlight! link TSVariable Identifier
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
highlight! link netrwClassify Delimiter
highlight! link netrwTreeBar Delimiter
highlight! link texFileArg Constant
highlight! link texMathCmd Function
highlight! link texMathDelim Delimiter
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathEnvArgName PreProc
highlight! link texMathSymbol Operator
highlight! link texMathZone TSMath
highlight! link texOptEqual Operator
highlight! link texOptSep TSPunctDelimiter
highlight! link texRefArg Constant
else
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#AD73AA guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#7287AC guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#332D28 guisp=NONE gui=NONE
highlight Comment guifg=#6A5F55 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#7F7267 guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#996597 guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#D3C1B1 guibg=#332D28 guisp=NONE gui=NONE
highlight Delimiter guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticError guifg=#9C5446 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#79A37C guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#7287AC guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticWarn guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=#2A2520 guibg=#5D7F60 guisp=NONE gui=NONE
highlight DiffChange guifg=#2A2520 guibg=#A08555 guisp=NONE gui=NONE
highlight DiffDelete guifg=#2A2520 guibg=#9C5446 guisp=NONE gui=NONE
highlight DiffText guifg=#5A6B89 guibg=#A08555 guisp=NONE gui=NONE
highlight Directory guifg=#678483 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#D3C1B1 guibg=#9C5446 guisp=NONE gui=NONE
highlight ErrorMsg guifg=#D3C1B1 guibg=#9C5446 guisp=NONE gui=NONE
highlight Folded guifg=#6A5F55 guibg=#332D28 guisp=NONE gui=NONE
highlight Function guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#2A2520 guibg=#5D7F60 guisp=NONE gui=reverse
highlight GitSignsChange guifg=#2A2520 guibg=#A08555 guisp=NONE gui=reverse
highlight GitSignsCurrentLineBlame guifg=#2A2520 guibg=#5A6B89 guisp=NONE gui=reverse
highlight GitSignsDelete guifg=#2A2520 guibg=#9C5446 guisp=NONE gui=reverse
highlight HelpHyperTextJump guifg=#A08555 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#D3C1B1 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#6A5F55 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#49413A guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#B2945F guibg=#49413A guisp=NONE gui=bold
highlight ModeMsg guifg=#7F7267 guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#5D7F60 guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#D3C1B1 guibg=#2A2520 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#332D28 guisp=NONE gui=NONE
highlight Number guifg=#AD73AA guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#B86555 guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#49413A guisp=NONE gui=NONE
highlight PreProc guifg=#79A37C guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#2A2520 guibg=#B2945F guisp=NONE gui=NONE
highlight Special guifg=#B2945F guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#9C5446 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#5A6B89 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#A08555 guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#B2945F guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#A08555 guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#7F7267 guibg=#332D28 guisp=NONE gui=NONE
highlight String guifg=#7287AC guibg=NONE guisp=NONE gui=NONE
highlight Substitute guifg=#2A2520 guibg=#B2945F guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#996597 guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#6D8C8B guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#5D7F60 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#9C5446 guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#5A6B89 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#D3C1B1 guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#7287AC guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#D3C1B1 guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#332D28 guisp=NONE gui=bold
highlight Title guifg=#A08555 guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#7F7267 guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#678483 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#49413A guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#49413A guisp=NONE gui=NONE
highlight Walh guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight WarningMsg guifg=#9C5446 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#49413A guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#9C5446 guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#996597 guibg=NONE guisp=NONE gui=NONE
highlight texTitleArg guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link DiffAdded DiffAdd
highlight! link DiffRemoved DiffDelete
highlight! link EndOfBuffer Whitespace
highlight! link FoldColumn LineNr
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link NonText Whitespace
highlight! link Pmenu NormalFloat
highlight! link PmenuSbar Pmenu
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link SignColumn LineNr
highlight! link SignifySignAdd GitSignsAdd
highlight! link SignifySignChange GitSignsChange
highlight! link SignifySignDelete GitSignsDelete
highlight! link SpecialKey Whitespace
highlight! link StatusLine NormalFloat
highlight! link TSConstMacro Constant
highlight! link TSEmphasis Italic
highlight! link TSEnvironment Statement
highlight! link TSEnvironmentName PreProc
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Function
highlight! link TSKeywordFunction PreProc
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Delimiter
highlight! link TSUnderline Underlined
highlight! link TSVariable Identifier
highlight! link TabLine StatusLineNC
highlight! link TabLineFill StatusLine
highlight! link WildMenu NormalFloat
highlight! link netrwClassify Delimiter
highlight! link netrwTreeBar Delimiter
highlight! link texFileArg Constant
highlight! link texMathCmd Function
highlight! link texMathDelim Delimiter
highlight! link texMathDelimZone TSPunctDelimiter
highlight! link texMathEnvArgName PreProc
highlight! link texMathSymbol Operator
highlight! link texMathZone TSMath
highlight! link texOptEqual Operator
highlight! link texOptSep TSPunctDelimiter
highlight! link texRefArg Constant
endif
