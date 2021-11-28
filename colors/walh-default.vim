hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default'

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
call s:hi('Identifier', 'darkcyan')
call s:hi('Function', 'darkblue')

call s:hi('Constant', 'darkred')
call s:hi('String', 'darkred')
call s:hi('Character', 'darkred')
call s:hi('Number', 'darkred')
call s:hi('Boolean', 'darkred')
call s:hi('Float', 'darkred')

call s:hi('Statement', 'darkyellow')
call s:hi('Conditional', 'darkyellow')
call s:hi('Repeat', 'darkyellow')
call s:hi('Label', 'darkyellow')

call s:hi('Operator', 'darkyellow')
call s:hi('Keyword', 'darkyellow')
call s:hi('Exception', 'darkyellow')

call s:hi('PreProc', 'darkmagenta')
call s:hi('Include', 'darkmagenta')
call s:hi('Define', 'darkmagenta')
call s:hi('Macro', 'darkmagenta')
call s:hi('PreCondit', 'darkmagenta')

call s:hi('Type', 'darkgreen')
call s:hi('StorageClass', 'darkgreen')
call s:hi('Structure', 'darkgreen')
call s:hi('Typedef', 'darkgreen')

call s:hi('Special', 'darkred')
call s:hi('SpecialChar', 'darkred')
call s:hi('Tag', 'darkred')

call s:hi('Delimiter', 'darkgreen')
call s:hi('SpecialComment', 'darkmagenta')
call s:hi('Debug', 'darkred')

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
