hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-nord'

let s:black = 'black'
let s:white = 'white'
let s:brown = 'brown'
let s:gray = 7
let s:darkgray = 8
let s:red = 9
let s:green = 10
let s:yellow = 11
let s:blue = 12
let s:magenta = 13
let s:cyan = 14
let s:orange = 16

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
call s:hi('Comment', s:darkgray)
call s:hi('Identifier')
call s:hi('Function', s:cyan)

call s:hi('Constant')
call s:hi('String', s:green)
call s:hi('Character', s:green)
call s:hi('Number', s:magenta)
call s:hi('Boolean', s:blue)
call s:hi('Float', s:magenta)

call s:hi('Statement', s:blue)
call s:hi('Conditional', s:blue)
call s:hi('Repeat', s:blue)
call s:hi('Label', s:blue)

call s:hi('Operator', s:blue)
call s:hi('Keyword', s:blue)
call s:hi('Exception', s:blue)

call s:hi('PreProc', s:blue)
call s:hi('Include', s:blue)
call s:hi('Define', s:blue)
call s:hi('Macro', s:blue)
call s:hi('PreCondit', s:blue)

call s:hi('Type', s:blue)
call s:hi('StorageClass', s:blue)
call s:hi('Structure', s:blue)
call s:hi('Typedef', s:blue)

call s:hi('Special')
call s:hi('SpecialChar', s:yellow)
call s:hi('Tag')

call s:hi('Delimiter')
call s:hi('SpecialComment', s:cyan)
call s:hi('Debug')

" call s:hi('Underlined', 'NONE', 'NONE', 'underline')
" call s:hi('Bold', '', '', 'bold')
" call s:hi('Italic', '', '', 'italic')

call s:hi('Ignore')
" call s:hi('Error', '', s:red)
" call s:hi('Todo', 'lightgray')

" -- treesitter
" call s:hi('TSAnnotation', s:blue)
" call s:hi('TSAttribute', s:yellow)
" call s:hi('TSBoolean', s:yellow)
" call s:hi('TSCharacter', s:green)
" call s:hi('TSConditional', s:magenta)
" highlight! link TSConstBuiltin Constant
" highlight! link  TSConstMacro Constant
" call s:hi('TSConstant', s:yellow)
" call s:hi('TSConstructor', s:blue)
" call s:hi('TSEmphasis', s:cyan)
" call s:hi('TSError', s:red)
" call s:hi('TSExeption', s:red)
" call s:hi('TSField', s:yellow)
" call s:hi('TSFloat', s:yellow)
" call s:hi('TSFunction', s:blue)
" highlight! link  TSFunctionBuiltin Function
" highlight! link  TSFuncMacro Function
" call s:hi('TSInclude', s:red)
" call s:hi('TSKeyword', s:magenta)
" highlight! link  TSKeywordFunction PreProc
" call s:hi('TSKeywordOperator', s:cyan)
" call s:hi('TSLabel', s:magenta)
" call s:hi('TSLiteral', s:green)
" call s:hi('TSMethod', s:blue)
" call s:hi('TSNamespace', s:green)
" call s:hi('TSNumber', s:yellow)
" call s:hi('TSOperator', s:cyan)
" call s:hi('TSParameter', s:red)
" call s:hi('TSParameterReference', s:red)
" call s:hi('TSProperty', s:red)
" call s:hi('TSPunctDelimitter', s:red)
" highlight! link  TSPunctBracket Delimiter
" highlight! link  TSPunctSpecial Delimiter
" call s:hi('TSRepeat', s:magenta)
" call s:hi('TSString', s:green)
" call s:hi('TSStringRegex', s:red)
" call s:hi('TSStringEscape', s:blue)
" highlight! link  TSSymbol Identifier
" highlight! link  TSVariableBuiltin Identifier
" call s:hi('TSTag')
" call s:hi('TSTagDelimitter')
" call s:hi('TSText')
" call s:hi('TSStrong', s:magenta)
" call s:hi('TSStructure', s:yellow)
" call s:hi('TSTitle', s:yellow)
" call s:hi('TSType', s:blue)
" call s:hi('TSTypeBuiltin', s:red)
" call s:hi('TSUnderline', s:yellow)
" highlight! link  TSUri String
" call s:hi('TSMath', s:cyan)
" highlight! link  TSEnvironment Statement
" highlight! link  TSEnvironmentName PreProc
