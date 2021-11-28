hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-eighties'

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
call s:hi('Identifier', 'darkblue')
call s:hi('Function', 'darkblue')

call s:hi('Constant', 'darkmagenta')
call s:hi('String', 'darkgreen')
call s:hi('Character', 'darkmagenta')
call s:hi('Number', 'darkmagenta')
call s:hi('Boolean', 'darkmagenta')
call s:hi('Float', 'darkmagenta')

call s:hi('Statement', 'darkred')
call s:hi('Conditional', 'darkred')
call s:hi('Repeat', 'darkred')
call s:hi('Label', 'darkred')

call s:hi('Operator', 'darkred')
call s:hi('Keyword', 'darkred')
call s:hi('Exception', 'darkred')

call s:hi('PreProc', 'darkcyan')
call s:hi('Include', 'darkcyan')
call s:hi('Define', 'darkcyan')
call s:hi('Macro', 'darkcyan')
call s:hi('PreCondit', 'darkcyan')

call s:hi('Type', 'darkyellow')
call s:hi('StorageClass', 'brown')
call s:hi('Structure', 'darkcyan')
call s:hi('Typedef', 'darkyellow')

call s:hi('Special', 'brown')
call s:hi('SpecialChar', 'darkyellow')
call s:hi('Tag', 'darkyellow')

call s:hi('Delimiter', 'darkyellow')
call s:hi('SpecialComment', 'darkyellow')
call s:hi('Debug', 'darkyellow')

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
" call s:hi('TSMath', 'lightcyan')
" highlight! link  TSEnvironment Statement
" highlight! link  TSEnvironmentName PreProc
