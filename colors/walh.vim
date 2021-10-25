hi clear
syntax reset
set t_Co=256
let g:colors_name = 'walh'
if &background == 'dark'
highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight Boolean guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#352F2A guisp=NONE gui=NONE
highlight Comment guifg=#A38D78 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#E3D1C2 guibg=#352F2A guisp=NONE gui=NONE
highlight Delimiter guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticError guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#99D59D guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticWarn guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=#2A2520 guibg=#78997A guisp=NONE gui=NONE
highlight DiffChange guifg=#2A2520 guibg=#E49B5D guisp=NONE gui=NONE
highlight DiffDelete guifg=#2A2520 guibg=#B65C60 guisp=NONE gui=NONE
highlight DiffText guifg=#697893 guibg=#E49B5D guisp=NONE gui=NONE
highlight Directory guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#E3D1C2 guibg=#B65C60 guisp=NONE gui=NONE
highlight ErrorMsg guifg=#E3D1C2 guibg=#B65C60 guisp=NONE gui=NONE
highlight Folded guifg=#A38D78 guibg=#352F2A guisp=NONE gui=NONE
highlight Function guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#2A2520 guibg=#78997A guisp=NONE gui=reverse
highlight GitSignsChange guifg=#2A2520 guibg=#E49B5D guisp=NONE gui=reverse
highlight GitSignsCurrentLineBlame guifg=#2A2520 guibg=#697893 guisp=NONE gui=reverse
highlight GitSignsDelete guifg=#2A2520 guibg=#B65C60 guisp=NONE gui=reverse
highlight HelpHyperTextJump guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#E3D1C2 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#A38D78 guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#4D453E guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#EBC06D guibg=#4D453E guisp=NONE gui=bold
highlight ModeMsg guifg=#C1A78E guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#78997A guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#E3D1C2 guibg=#2A2520 guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#352F2A guisp=NONE gui=NONE
highlight Number guifg=#CE9BCB guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#F17C64 guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#4D453E guisp=NONE gui=NONE
highlight PreProc guifg=#99D59D guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#2A2520 guibg=#EBC06D guisp=NONE gui=NONE
highlight Special guifg=#EBC06D guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#B65C60 guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#697893 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#E49B5D guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#EBC06D guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#C1A78E guibg=#352F2A guisp=NONE gui=NONE
highlight String guifg=#9AACCE guibg=NONE guisp=NONE gui=NONE
highlight Substitute guifg=#2A2520 guibg=#EBC06D guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#B380B0 guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#88B3B2 guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#78997A guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#697893 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#E3D1C2 guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#9AACCE guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#E3D1C2 guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#352F2A guisp=NONE gui=bold
highlight Title guifg=#E49B5D guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#C1A78E guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#86A3A3 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#4D453E guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#4D453E guisp=NONE gui=NONE
highlight Walh guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight WarningMsg guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#4D453E guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#B65C60 guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#B380B0 guibg=NONE guisp=NONE gui=NONE
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
highlight Boolean guifg=#854882 guibg=NONE guisp=NONE gui=NONE
highlight Character guifg=#485F84 guibg=NONE guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#ECE1D7 guisp=NONE gui=NONE
highlight Comment guifg=#A88C6F guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#8B735B guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#BE79BB guibg=NONE guisp=NONE gui=NONE
highlight CursorLineNr guifg=#6E5B47 guibg=#ECE1D7 guisp=NONE gui=NONE
highlight Delimiter guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticError guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticHint guifg=#659E69 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticInfo guifg=#485F84 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight DiagnosticWarn guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight DiffAdd guifg=#F5F0EB guibg=#83B887 guisp=NONE gui=NONE
highlight DiffChange guifg=#F5F0EB guibg=#CC7F2B guisp=NONE gui=NONE
highlight DiffDelete guifg=#F5F0EB guibg=#D7898C guisp=NONE gui=NONE
highlight DiffText guifg=#ABB9D6 guibg=#CC7F2B guisp=NONE gui=NONE
highlight Directory guifg=#729893 guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#6E5B47 guibg=#D7898C guisp=NONE gui=NONE
highlight ErrorMsg guifg=#6E5B47 guibg=#D7898C guisp=NONE gui=NONE
highlight Folded guifg=#A88C6F guibg=#ECE1D7 guisp=NONE gui=NONE
highlight Function guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight GitSignsAdd guifg=#F5F0EB guibg=#83B887 guisp=NONE gui=reverse
highlight GitSignsChange guifg=#F5F0EB guibg=#CC7F2B guisp=NONE gui=reverse
highlight GitSignsCurrentLineBlame guifg=#F5F0EB guibg=#ABB9D6 guisp=NONE gui=reverse
highlight GitSignsDelete guifg=#F5F0EB guibg=#D7898C guisp=NONE gui=reverse
highlight HelpHyperTextJump guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#6E5B47 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#A88C6F guibg=NONE guisp=NONE gui=NONE
highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic
highlight LineNr guifg=#E3D1C2 guibg=NONE guisp=NONE gui=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl
highlight MatchParen guifg=#C29830 guibg=#E3D1C2 guisp=NONE gui=bold
highlight ModeMsg guifg=#8B735B guibg=NONE guisp=NONE gui=NONE
highlight MoreMsg guifg=#83B887 guibg=NONE guisp=NONE gui=bold
highlight Normal guifg=#6E5B47 guibg=#F5F0EB guisp=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#ECE1D7 guisp=NONE gui=NONE
highlight Number guifg=#854882 guibg=NONE guisp=NONE gui=NONE
highlight Operator guifg=#C65333 guibg=NONE guisp=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#E3D1C2 guisp=NONE gui=NONE
highlight PreProc guifg=#659E69 guibg=NONE guisp=NONE gui=NONE
highlight Search guifg=#F5F0EB guibg=#C29830 guisp=NONE gui=NONE
highlight Special guifg=#C29830 guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#D7898C guibg=NONE guisp=NONE gui=undercurl
highlight SpellCap guifg=#ABB9D6 guibg=NONE guisp=NONE gui=undercurl
highlight SpellLocal guifg=#CC7F2B guibg=NONE guisp=NONE gui=undercurl
highlight SpellRare guifg=#C29830 guibg=NONE guisp=NONE gui=undercurl
highlight Statement guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight StatusLineNC guifg=#8B735B guibg=#ECE1D7 guisp=NONE gui=NONE
highlight String guifg=#485F84 guibg=NONE guisp=NONE gui=NONE
highlight Substitute guifg=#F5F0EB guibg=#C29830 guisp=NONE gui=NONE
highlight TSConstBuiltin guifg=#BE79BB guibg=NONE guisp=NONE gui=italic
highlight TSMath guifg=#436460 guibg=NONE guisp=NONE gui=NONE
highlight TSNamespace guifg=#83B887 guibg=NONE guisp=NONE gui=NONE
highlight TSPunctDelimiter guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight TSStrike guifg=NONE guibg=NONE guisp=NONE gui=strikethrough
highlight TSStringEscape guifg=#ABB9D6 guibg=NONE guisp=NONE gui=NONE
highlight TSStrong guifg=NONE guibg=NONE guisp=NONE gui=bold
highlight TSSymbol guifg=#6E5B47 guibg=NONE guisp=NONE gui=italic
highlight TSURI guifg=#485F84 guibg=NONE guisp=NONE gui=underline
highlight TSVariableBuiltin guifg=#6E5B47 guibg=NONE guisp=NONE gui=italic
highlight TabLineSel guifg=NONE guibg=#ECE1D7 guisp=NONE gui=bold
highlight Title guifg=#CC7F2B guibg=NONE guisp=NONE gui=NONE
highlight Todo guifg=#8B735B guibg=NONE guisp=NONE gui=italic
highlight Type guifg=#729893 guibg=NONE guisp=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#E3D1C2 guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#E3D1C2 guisp=NONE gui=NONE
highlight Walh guifg=NONE guibg=NONE guisp=NONE gui=NONE
highlight WarningMsg guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#E3D1C2 guibg=NONE guisp=NONE gui=NONE
highlight netrwExe guifg=#D7898C guibg=NONE guisp=NONE gui=NONE
highlight netrwSymLink guifg=#BE79BB guibg=NONE guisp=NONE gui=NONE
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
