hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-nord'

exec "source " . expand('<sfile>:p:h') . "/helpers/highlights.vim"

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

" -- group-name
call s:hi('Comment', 'darkgray')
call s:hi('Identifier')
call s:hi('Function', 'darkcyan')

call s:hi('Constant')
call s:hi('String', 'darkgreen')
call s:hi('Character', 'darkgreen')
call s:hi('Number', 'darkmagenta')
call s:hi('Boolean', 'darkblue')
call s:hi('Float', 'darkmagenta')

call s:hi('Statement', 'darkblue')
call s:hi('Conditional', 'darkblue')
call s:hi('Repeat', 'darkblue')
call s:hi('Label', 'darkblue')

call s:hi('Operator', 'darkblue')
call s:hi('Keyword', 'darkblue')
call s:hi('Exception', 'darkblue')

call s:hi('PreProc', 'darkblue')
call s:hi('Include', 'darkblue')
call s:hi('Define', 'darkblue')
call s:hi('Macro', 'darkblue')
call s:hi('PreCondit', 'darkblue')

call s:hi('Type', 'darkblue')
call s:hi('StorageClass', 'darkblue')
call s:hi('Structure', 'darkblue')
call s:hi('Typedef', 'darkblue')

call s:hi('Special')
call s:hi('SpecialChar', 'darkyellow')
call s:hi('Tag')

call s:hi('Delimiter')
call s:hi('SpecialComment', 'darkcyan')
call s:hi('Debug')

" call s:hi('Underlined', 'NONE', 'NONE', 'underline')
" call s:hi('Bold', '', '', 'bold')
" call s:hi('Italic', '', '', 'italic')

call s:hi('Ignore')
" call s:hi('Error', '', 'darkred')
" call s:hi('Todo', 'lightgray')

" -- treesitter
" call s:hi('TSAnnotation', 'darkblue')
" call s:hi('TSAttribute', 'darkyellow')
" call s:hi('TSBoolean', 'darkyellow')
" call s:hi('TSCharacter', 'darkgreen')
" call s:hi('TSConditional', 'darkmagenta')
" highlight! link TSConstBuiltin Constant
" highlight! link  TSConstMacro Constant
" call s:hi('TSConstant', 'darkyellow')
" call s:hi('TSConstructor', 'darkblue')
" call s:hi('TSEmphasis', 'darkcyan')
" call s:hi('TSError', 'darkred')
" call s:hi('TSExeption', 'darkred')
" call s:hi('TSField', 'darkyellow')
" call s:hi('TSFloat', 'darkyellow')
" call s:hi('TSFunction', 'darkblue')
" highlight! link  TSFunctionBuiltin Function
" highlight! link  TSFuncMacro Function
" call s:hi('TSInclude', 'darkred')
" call s:hi('TSKeyword', 'darkmagenta')
" highlight! link  TSKeywordFunction PreProc
" call s:hi('TSKeywordOperator', 'darkcyan')
" call s:hi('TSLabel', 'darkmagenta')
" call s:hi('TSLiteral', 'darkgreen')
" call s:hi('TSMethod', 'darkblue')
" call s:hi('TSNamespace', 'darkgreen')
" call s:hi('TSNumber', 'darkyellow')
" call s:hi('TSOperator', 'darkcyan')
" call s:hi('TSParameter', 'darkred')
" call s:hi('TSParameterReference', 'darkred')
" call s:hi('TSProperty', 'darkred')
" call s:hi('TSPunctDelimitter', 'darkred')
" highlight! link  TSPunctBracket Delimiter
" highlight! link  TSPunctSpecial Delimiter
" call s:hi('TSRepeat', 'darkmagenta')
" call s:hi('TSString', 'darkgreen')
" call s:hi('TSStringRegex', 'darkred')
" call s:hi('TSStringEscape', 'darkblue')
" highlight! link  TSSymbol Identifier
" highlight! link  TSVariableBuiltin Identifier
" call s:hi('TSTag')
" call s:hi('TSTagDelimitter')
" call s:hi('TSText')
" call s:hi('TSStrong', 'darkmagenta')
" call s:hi('TSStructure', 'darkyellow')
" call s:hi('TSTitle', 'darkyellow')
" call s:hi('TSType', 'darkblue')
" call s:hi('TSTypeBuiltin', 'darkred')
" call s:hi('TSUnderline', 'darkyellow')
" highlight! link  TSUri String
" call s:hi('TSMath', 'darkcyan')
" highlight! link  TSEnvironment Statement
" highlight! link  TSEnvironmentName PreProc
