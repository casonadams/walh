local lush = require('lush')
local hsl = lush.hsl

local c = {}

c.color = hsl(60, 25, 50)
c.base =  c.color.rotate(-60).desaturate(25)

c.foreground = c.color.desaturate(75).lighten(25)
c.background = c.color.desaturate(75).darken(75)

c.red = c.base.rotate(0)
c.yellow = c.base.rotate(60)
c.green = c.base.rotate(110)
c.cyan = c.base.rotate(180)
c.blue = c.base.rotate(210)
c.magenta = c.base.rotate(280)

c.orange = c.red.mix(c.yellow, 50)

local theme = lush(function()
  return {
    RED8888888 { bg = c.red, fg = c.red },
    YELLOW8888 { bg = c.yellow, fg = c.yellow },
    GREEN88888 { bg = c.green, fg = c.green },
    BLUE888888 { bg = c.blue, fg = c.blue },
    MAGENTA888 { bg = c.magenta, fg = c.magenta },
    CYAN888888 { bg = c.cyan, fg = c.cyan },
    FORGROUND8 { bg = c.foreground, fg = c.foreground },
    BACKGROUND { bg = c.background, fg = c.background },
    Comment      { fg = c.background.lighten(30), gui = "italic" }, -- any comment
    ColorColumn  { bg = c.red }, -- used for the columns set with 'colorcolumn'
    Conceal      { bg = c.background.lighten(30) }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = c.background.lighten(5) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd      { fg = c.background, bg = c.green }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = c.background, bg = c.yellow }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = c.background, bg = c.red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = c.background, bg = c.blue }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = c.background.lighten(30) }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { gui = "reverse"  }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = c.red }, -- error messages on the command line
    VertSplit    { fg = c.background.lighten(30), bg = c.background }, -- the column separating vertically split windows
    Folded       { fg = c.blue, bg = c.background.lighten(5) }, -- line used for closed folds
    FoldColumn   { fg = c.blue, bg = c.background.lighten(5) }, -- 'foldcolumn'
    SignColumn   { fg = c.blue, bg = {} }, -- column where |signs| are displayed
    IncSearch    { fg =c.background, bg = c.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg =c.background, bg = c.yellow }, -- |:substitute| replacement text highlighting
    LineNr       { fg = c.background.lighten(30) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c.foreground, bg = c.background.lighten(5) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = c.background.lighten(30) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { fg = c.background.lighten(30) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = c.foreground, bg = c.background }, -- normal text
    NormalFloat  { bg = c.background.lighten(5) }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { bg = c.background.lighten(5) }, -- Popup menu: normal item.
    PmenuSel     { gui = "reverse" }, -- Popup menu: selected item.
    PmenuSbar    { bg = c.background.lighten(15) }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = c.foreground.darken(15) }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = c.background, bg = c.yellow }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { fg = c.background.lighten(30) }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = c.foreground, bg = c.background.lighten(5) }, -- status line of current window
    StatusLineNC { fg = c.foreground.darken(30), bg = c.background }, -- status line of current window
    TabLine      { bg = c.background.lighten(5) }, -- tab pages line, not active tab page label
    TabLineFill  { bg = c.background.lighten(5) }, -- tab pages line, where there are no labels
    TabLineSel   { gui = "reverse" }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { gui = "reverse" }, -- Visual mode selection
    VisualNOS    { bg = c.background.lighten(5) }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = c.red }, -- warning messages
    Whitespace   { fg = c.background.lighten(30) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { fg = c.background, bg = c.yellow }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = c.red }, -- (preferred) any constant
    String         { fg = c.red }, -- a string constant: "this is a string"
    Character      { fg = c.red }, -- a character constant: 'c', '\n'
    Number         { fg = c.red }, -- a number constant: 234, 0xff
    Boolean        { fg = c.red }, -- a boolean constant: TRUE, false
    Float          { fg = c.red }, -- a floating point constant: 2.3e10

    Identifier     { fg = c.blue }, -- (preferred) any variable name
    Function       { fg = c.blue }, -- function name (also: methods for classes)

    Statement      { fg = c.yellow }, -- (preferred) any statement
    Conditional    { fg = c.yellow }, -- if, then, else, endif, switch, etc.
    Repeat         { fg = c.yellow }, -- for, do, while, etc.
    Label          { fg = c.yellow }, -- case, default, etc.
    Operator       { fg = c.yellow }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = c.yellow }, -- any other keyword
    Exception      { fg = c.yellow }, -- try, catch, throw

    PreProc        { fg = c.magenta }, -- (preferred) generic Preprocessor
    Include        { fg = c.magenta }, -- preprocessor #include
    Define         { fg = c.magenta }, -- preprocessor #define
    Macro          { fg = c.magenta }, -- same as Define
    PreCondit      { fg = c.magenta }, -- preprocessor #if, #else, #endif, etc.

    Type           { fg = c.green }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = c.green }, -- static, register, volatile, etc.
    Structure      { fg = c.green }, -- struct, union, enum, etc.
    Typedef        { fg = c.green }, -- A typedef

    Special        { fg = c.orange }, -- (preferred) any special symbol
    SpecialChar    { fg = c.orange }, -- special character in a constant
    Tag            { fg = c.orange }, -- you can use CTRL-] on this
    Delimiter      { fg = c.orange }, -- character that needs attention
    SpecialComment { fg = c.orange }, -- special things inside a comment
    Debug          { fg = c.orange }, -- debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = c.red, gui = "bold,underline" }, -- (preferred) any erroneous construct
    Todo           { fg = c.yellow, gui = "bold,underline" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { fg = c.background.lighten(30) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = c.background.lighten(30) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg = c.background.lighten(30) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg = c.background.lighten(30) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { fg = c.foreground }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { fg = c.foreground }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { fg = c.foreground }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { fg = c.foreground }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { fg = c.red, bg = "NONE" }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { fg = c.yellow }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { fg = c.green }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { fg = c.blue }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    LspDiagnosticsLineNrError           { fg = c.red },
    LspDiagnosticsLineNrWarning         { fg = c.yellow },
    LspDiagnosticsLineNrInformation     { fg = c.green },
    LspDiagnosticsLineNrHint            { fg = c.blue },

    GitSignsAdd              { fg = c.background, bg = c.green, gui = "reverse"}, -- diff mode: Added line |diff.txt|
    GitSignsChange           { fg = c.background, bg = c.yellow , gui = "reverse"}, -- diff mode: Changed line |diff.txt|
    GitSignsDelete           { fg = c.background, bg = c.red , gui = "reverse"}, -- diff mode: Deleted line |diff.txt|
    GitSignsCurrentLineBlame { fg = c.background, bg = c.blue , gui = "reverse"}, -- diff mode: Changed text within a changed line |diff.txt|

    CocHighlightText                     { gui = "bold" },
    -- CocErrorHighlight                    { gui = "underline" },
    -- CocWarningHighlight                  { gui = "underline" },
    -- CocInfoHighlight                     { gui = "underline" },
    -- CocHintHighlight                     { gui = "underline" },
    -- CocDeprecatedHighlight               { gui = "underline" },
    CocUnusedHighlight                   { gui = "underline" },

    CocErrorVirtualText                  { fg = c.background.lighten(30) },
    CocWarningVirtualText                { fg = c.background.lighten(30) },
    CocInfoVirtualText                   { fg = c.background.lighten(30) },
    CocHintVirtualText                   { fg = c.background.lighten(30) },

    CocFloating                          { fg = c.foreground },
    CocErrorFloat                        { fg = c.foreground },
    CocWarningFloat                      { fg = c.foreground },
    CocInfoFloat                         { fg = c.foreground },
    CocHintFloat                         { fg = c.foreground },

    SignifySignAdd           { GitSignsAdd }, -- diff mode: Changed text within a changed line |diff.txt|
    SignifySignChange        { GitSignsChange }, -- diff mode: Changed text within a changed line |diff.txt|
    SignifySignDelete        { GitSignsDelete }, -- diff mode: Changed text within a changed line |diff.txt|

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSConstant           { };    -- For constants
    -- TSFloat              { };    -- For floats.
    -- TSLiteral            { };    -- Literal text.
    -- TSNumber             { };    -- For all numbers
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.

    -- TSComment            { };    -- For comment blocks.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSNone               { };    -- TODO: docs
    -- TSStrike             { };    -- For strikethrough text.
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSURI                { };    -- Any URI like a link or email.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.

    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSException          { };    -- For exception related keywords.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSTag                { };    -- Tags like html tag names.

    -- TSField              { };    -- For fields.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.

    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.

    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
