local lush = require("lush")
local hsluv = lush.hsluv

local palette = {}

palette.dark = {
    a = {
        bg      = hsluv( 50, 20, 15);
        overbg  = hsluv( 50, 20, 20);
        sel     = hsluv( 50, 20, 30);
        com     = hsluv( 50, 30, 60);
        faded   = hsluv( 50, 30, 70);
        fg      = hsluv( 50, 30, 85);
    };
    b = {
        red     = hsluv( 20, 80, 65);
        yellow  = hsluv( 60, 70, 80);
        green   = hsluv(130, 40, 80);
        cyan    = hsluv(190, 40, 70);
        blue    = hsluv(250, 40, 70);
        magenta = hsluv(310, 40, 70);
    };
    c = {
        red     = hsluv( 10, 40, 50);
        yellow  = hsluv( 40, 70, 70);
        green   = hsluv(130, 30, 60);
        cyan    = hsluv(190, 30, 65);
        blue    = hsluv(250, 30, 50);
        magenta = hsluv(310, 30, 60);
    };
}

palette.light = {
    a = {
        bg      = hsluv( 50, 30, 95);
        overbg  = hsluv( 50, 30, 90);
        sel     = hsluv( 50, 30, 85);
        com     = hsluv( 50, 40, 60);
        faded   = hsluv( 50, 40, 50);
        fg      = hsluv( 50, 40, 40);
    };
    b = {
        red     = hsluv( 20, 80, 50);
        yellow  = hsluv( 60, 90, 65);
        green   = hsluv(130, 50, 60);
        cyan    = hsluv(180, 50, 40);
        blue    = hsluv(250, 50, 40);
        magenta = hsluv(310, 50, 40);
    };
    c = {
        red     = hsluv( 10, 50, 65);
        yellow  = hsluv( 40, 90, 60);
        green   = hsluv(130, 40, 70);
        cyan    = hsluv(180, 40, 60);
        blue    = hsluv(250, 40, 75);
        magenta = hsluv(310, 40, 60);
    };
}

local bg = vim.opt.background:get()
local a = palette[bg].a
local b = palette[bg].b
local c = palette[bg].c

-- Font variants:
-- This only works when loading this file directly, not when loading with `:colorscheme`
local bf, it, underline, undercurl;
if vim.g.walh_enable_font_variants ~= 0 then
    bf = "bold"
    it = "italic"
    underline = "underline"
    undercurl = "undercurl"
end


return lush(function() return {

---- :help highlight-default -------------------------------

Normal       { fg=a.fg, bg=a.bg };
NormalFloat  { bg=a.overbg };
-- NormalNC     { };

-- Cursor       { };
-- lCursor      { };
-- CursorIM     { };
-- TermCursor   { };
-- TermCursorNC { };

ColorColumn  { bg=a.overbg };
CursorColumn { ColorColumn };
CursorLine   { ColorColumn };
VertSplit    { fg=a.sel };

LineNr       { fg=a.sel };
CursorLineNr { fg=c.yellow, bg=a.overbg };

Folded       { fg=a.com, bg=a.overbg };
FoldColumn   { LineNr };
SignColumn   { LineNr };

Pmenu        { NormalFloat };
PmenuSel     { bg=a.sel };
PmenuSbar    { Pmenu };
PmenuThumb   { PmenuSel };

StatusLine   { NormalFloat };
StatusLineNC { StatusLine, fg=a.faded };
WildMenu     { NormalFloat };

TabLine      { StatusLineNC };
TabLineFill  { StatusLine };
TabLineSel   { StatusLine, gui=bf };

MatchParen   { fg=b.yellow, bg=a.sel, gui=bf };
Substitute   { fg=a.bg, bg=b.yellow };
Search       { fg=a.bg, bg=b.yellow };
-- QuickFixLine { };
-- IncSearch    { };
Visual       { bg=a.sel };
-- VisualNOS    { };

Conceal      { fg=a.faded };
Whitespace   { fg=a.sel };
EndOfBuffer  { Whitespace };
NonText      { Whitespace };
SpecialKey   { Whitespace };

Directory    { fg=c.cyan };
Title        { fg=c.yellow };
ErrorMsg     { fg=a.fg, bg=c.red };
ModeMsg      { fg=a.faded };
-- MsgArea      { };
-- MsgSeparator { };
MoreMsg      { fg=c.green, gui=bf };
WarningMsg   { fg=c.red };
Question     { MoreMsg };


---- :help :diff -------------------------------------------

DiffAdd      { fg=a.bg, bg=c.green };
DiffChange   { fg=a.bg, bg=c.yellow };
DiffDelete   { fg=a.bg, bg=c.red };
DiffText     { fg=c.blue, bg=c.yellow };

DiffAdded    { DiffAdd };
DiffRemoved  { DiffDelete };


---- :help spell -------------------------------------------

SpellBad     { fg=c.red,    gui=undercurl };
SpellCap     { fg=c.blue,   gui=undercurl };
SpellLocal   { fg=c.yellow, gui=undercurl };
SpellRare    { fg=b.yellow, gui=undercurl };


---- :help group-name --------------------------------------

Comment        { fg=a.com, gui=it };
Identifier     { fg=a.fg };
Function       { fg=b.yellow };

Constant       { fg=c.magenta };
String         { fg=b.blue, gui=it };
Character      { fg=b.blue };
Number         { fg=b.magenta };
Boolean        { fg=b.magenta };
-- Float          { };

Statement      { fg=c.yellow };
-- Conditional    { };
-- Repeat         { };
-- Label          { };
Operator       { fg=b.red };
-- Keyword        { };
-- Exception      { };

PreProc        { fg=b.green };
-- Include        { };
-- Define         { };
-- Macro          { };
-- PreCondit      { };

Type           { fg=c.cyan };
-- StorageClass   { };
-- Structure      { };
-- Typedef        { };

Special        { fg=b.yellow };
-- SpecialChar    { };
-- Tag            { };
Delimiter      { fg=b.yellow };
-- SpecialComment { };
-- Debug          { };

Underlined     { gui=underline };
Bold           { gui=bf };
Italic         { gui=it };

Ignore         { fg=a.com };
Error          { fg=a.fg, bg=c.red };
Todo           { Comment, fg=a.faded };


---- :help nvim-treesitter-highlights (external plugin) ----

-- TSAnnotation         { };
-- TSAttribute          { };
-- TSBoolean            { };
-- TSCharacter          { };
-- TSComment            { };
-- TSConditional        { };
-- TSConstant           { };
TSConstBuiltin       { Constant, gui=it };
TSConstMacro         { Constant };
-- TSConstructor        { };
-- TSError              { gui=undercurl };
-- TSException          { };
-- TSField              { };
-- TSFloat              { };
-- TSFunction           { };
TSFuncBuiltin        { Function };
TSFuncMacro          { Function };
-- TSInclude            { };
-- TSKeyword            { };
TSKeywordFunction    { PreProc };
-- TSKeywordOperator    { };
-- TSKeywordReturn      { };
-- TSLabel              { };
-- TSMethod             { };
TSNamespace          { fg=c.green };
-- TSNone               { };
-- TSNumber             { };
-- TSOperator           { };
-- TSParameter          { };
-- TSParameterReference { };
-- TSProperty           { };
TSPunctDelimiter     { fg=c.red };
TSPunctBracket       { Delimiter };
TSPunctSpecial       { Delimiter };
-- TSRepeat             { };
-- TSString             { };
-- TSStringRegex        { };
TSStringEscape       { fg=c.blue };
TSSymbol             { Identifier, gui=it };
-- TSType               { };
-- TSTypeBuiltin        { };
TSVariable           { Identifier };
TSVariableBuiltin    { Identifier, gui=it };

-- TSTag                { };
-- TSTagDelimiter       { };
-- TSText               { };
TSStrong             { gui=bf };
TSEmphasis           { Italic };
TSUnderline          { Underlined };
TSStrike             { gui="strikethrough" };
-- TSTitle              { };
-- TSLiteral            { };
TSURI                { String, gui=underline };
TSMath               { fg=b.cyan };
-- TSTextReference      { };
TSEnvironment        { Statement };
TSEnvironmentName    { PreProc };
-- TSNote               { };
-- TSWarning            { };
-- TSDanger             { };


---- :help diagnostic-highlight ----------------------------

DiagnosticError            { fg=c.red  };
DiagnosticWarn             { fg=b.yellow };
DiagnosticInfo             { fg=b.blue };
DiagnosticHint             { fg=b.green };
-- DiagnosticVirtualTextError { DiagnosticError };
-- DiagnosticVirtualTextWarn  { DiagnosticWarn  };
-- DiagnosticVirtualTextInfo  { DiagnosticInfo  };
-- DiagnosticVirtualTextHint  { DiagnosticHint  };
DiagnosticUnderlineError   { gui=undercurl };
DiagnosticUnderlineWarn    { gui=undercurl };
DiagnosticUnderlineInfo    { gui=undercurl };
DiagnosticUnderlineHint    { gui=undercurl };
-- DiagnosticFloatingError    { DiagnosticError };
-- DiagnosticFloatingWarn     { DiagnosticWarn  };
-- DiagnosticFloatingInfo     { DiagnosticInfo  };
-- DiagnosticFloatingHint     { DiagnosticHint  };
-- DiagnosticSignError        { DiagnosticError };
-- DiagnosticSignWarn         { DiagnosticWarn  };
-- DiagnosticSignInfo         { DiagnosticInfo  };
-- DiagnosticSignHint         { DiagnosticHint  };


---- :help lsp-highlight -----------------------------------

LspReferenceText                     { Visual };
LspReferenceRead                     { Visual };
LspReferenceWrite                    { Visual };

LspDiagnosticsDefaultError           { DiagnosticError };
LspDiagnosticsDefaultWarning         { DiagnosticWarn  };
LspDiagnosticsDefaultInformation     { DiagnosticInfo  };
LspDiagnosticsDefaultHint            { DiagnosticHint  };

-- LspDiagnosticsVirtualTextError       { };
-- LspDiagnosticsVirtualTextWarning     { };
-- LspDiagnosticsVirtualTextInformation { };
-- LspDiagnosticsVirtualTextHint        { };

LspDiagnosticsUnderlineError         { gui=undercurl };
LspDiagnosticsUnderlineWarning       { gui=undercurl };
LspDiagnosticsUnderlineInformation   { gui=undercurl };
LspDiagnosticsUnderlineHint          { gui=undercurl };

-- LspDiagnosticsFloatingError          { };
-- LspDiagnosticsFloatingWarning        { };
-- LspDiagnosticsFloatingInformation    { };
-- LspDiagnosticsFloatingHint           { };

-- LspDiagnosticsSignError              { };
-- LspDiagnosticsSignWarning            { };
-- LspDiagnosticsSignInformation        { };
-- LspDiagnosticsSignHint               { };


--- :help vimtex-syntax-reference (external plugin) --------

texOptSep            { TSPunctDelimiter };
texOptEqual          { Operator };
texFileArg           { Constant };
texTitleArg          { gui=bf };
texRefArg            { Constant };

texMathCmd           { Function };
texMathSymbol        { Operator };
texMathZone          { TSMath };
texMathDelimZone     { TSPunctDelimiter };
texMathDelim         { Delimiter };
texMathEnvArgName    { PreProc };


--- netrw: there's no comprehensive list of highlights... --

netrwClassify        { Delimiter };
netrwTreeBar         { Delimiter };

netrwExe             { fg=c.red };
netrwSymLink         { fg=c.magenta };


---- Misc. -------------------------------------------------
HelpHyperTextJump    { fg=c.yellow };

GitSignsAdd              { fg = a.bg, bg = c.green, gui = "reverse"}, -- diff mode: Added line |diff.txt|
GitSignsChange           { fg = a.bg, bg = c.yellow , gui = "reverse"}, -- diff mode: Changed line |diff.txt|
GitSignsDelete           { fg = a.bg, bg = c.red , gui = "reverse"}, -- diff mode: Deleted line |diff.txt|
GitSignsCurrentLineBlame { fg = a.bg, bg = c.blue , gui = "reverse"}, -- diff mode: Changed text within a changed line |diff.txt|

SignifySignAdd           { GitSignsAdd }, -- diff mode: Changed text within a changed line |diff.txt|
SignifySignChange        { GitSignsChange }, -- diff mode: Changed text within a changed line |diff.txt|
SignifySignDelete        { GitSignsDelete }, -- diff mode: Changed text within a changed line |diff.txt|


---- Metagroup (hack for builds) ---------------------------
Walh { lush = palette[bg] };

}end)

-- vi:nowrap
