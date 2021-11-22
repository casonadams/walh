hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-default'

exec "source " . expand('<sfile>:p:h') . "/helpers/highlights.vim"

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

" -- group-name
call s:hi('Comment', s:dark_gray)
call s:hi('Identifier')
call s:hi('Function', s:light_blue)

call s:hi('Constant', s:light_red)
call s:hi('String', s:light_red)
call s:hi('Character', s:light_red)
call s:hi('Number', s:light_red)
call s:hi('Boolean', s:light_red)
call s:hi('Float', s:light_red)

call s:hi('Statement', s:light_yellow)
call s:hi('Conditional', s:light_yellow)
call s:hi('Repeat', s:light_yellow)
call s:hi('Label', s:light_yellow)

call s:hi('Operator', s:light_yellow)
call s:hi('Keyword', s:light_yellow)
call s:hi('Exception', s:light_yellow)

call s:hi('PreProc', s:light_magenta)
call s:hi('Include', s:light_magenta)
call s:hi('Define', s:light_magenta)
call s:hi('Macro', s:light_magenta)
call s:hi('PreCondit', s:light_magenta)

call s:hi('Type', s:light_green)
call s:hi('StorageClass', s:light_green)
call s:hi('Structure', s:light_green)
call s:hi('Typedef', s:light_green)

call s:hi('Special', s:dark_red)
call s:hi('SpecialChar', s:dark_red)
call s:hi('Tag', s:dark_red)

call s:hi('Delimiter', s:dark_red)
call s:hi('SpecialComment', s:dark_red)
call s:hi('Debug', s:dark_red)

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
