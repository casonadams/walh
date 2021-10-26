local lush = require("lush")
local hsluv = lush.hsluv

local hue = 50
local saturate = 20
local lightness = 15

local d   = {}
d.bg      = hsluv(hue, saturate, lightness)
d.overbg  = d.bg.lighten(5)
d.sel     = d.bg.lighten(15)
d.com     = d.bg.lighten(30)
d.faded   = d.bg.lighten(40)
d.fg      = d.bg.lighten(75)

d.red     = d.bg.rotate(-hue + 20)
             .saturate(-saturate + 60)
             .lighten(-lightness + 65)

d.yellow  = d.bg.rotate(-hue + 60)
             .saturate(-saturate + 70)
             .lighten(-lightness + 80)

d.green   = d.bg.rotate(-hue + 130)
             .saturate(-saturate + 40)
             .lighten(-lightness + 80)

d.cyan    = d.bg.rotate(-hue + 190)
             .saturate(-saturate + 40)
             .lighten(-lightness + 70)

d.blue    = d.bg.rotate(-hue + 250)
             .saturate(-saturate + 40)
             .lighten(-lightness + 70)

d.magenta = d.bg.rotate(-hue + 310)
             .saturate(-saturate + 40)
             .lighten(-lightness + 70)

local l   = {}
l.bg      = d.fg
l.overbg  = d.faded
l.sel     = d.com
l.com     = d.sel
l.faded   = d.overbg
l.fg      = d.bg

l.red     = d.red.darken(10)
l.yellow  = d.yellow.darken(10)
l.green   = d.green.darken(10)
l.cyan    = d.cyan.darken(10)
l.blue    = d.blue.darken(10)
l.magenta = d.magenta.darken(10)

local palette = {}
palette.dark = {
	a = {
		bg = d.bg,
		overbg = d.overbg,
		sel = d.sel,
		com = d.com,
		faded = d.faded,
		fg = d.fg,
	},
	b = {
		red = d.red,
		yellow = d.yellow,
		green = d.green,
		cyan = d.cyan,
		blue = d.blue,
		magenta = d.magenta,
	},
	c = {
		red = d.red.darken(15),
		yellow = d.yellow.darken(10),
		green = d.green.darken(20),
		cyan = d.cyan.darken(5),
		blue = d.blue.darken(20),
		magenta = d.magenta.darken(10),
	},
}
palette.light = {
	a = {
		bg = d.bg,
		overbg = d.overbg,
		sel = d.sel,
		com = d.com,
		faded = d.faded,
		fg = d.fg,
	},
	b = {
		red = l.red,
		yellow = l.yellow,
		green = l.green,
		cyan = l.cyan,
		blue = l.blue,
		magenta = l.magenta,
	},
	c = {
		red = l.red.darken(15),
		yellow = l.yellow.darken(10),
		green = l.green.darken(20),
		cyan = l.cyan.darken(5),
		blue = l.blue.darken(20),
		magenta = l.magenta.darken(10),
	},
}

local bg = vim.opt.background:get()
local a = palette[bg].a
local b = palette[bg].b
local c = palette[bg].c

-- Font variants:
-- This only works when loading this file directly, not when loading with `:colorscheme`
local bf, it, underline, undercurl
if vim.g.walh_enable_font_variants ~= 0 then
	bf = "bold"
	it = "italic"
	underline = "underline"
	undercurl = "undercurl"
end

return lush(function()
	return {

		---- :help highlight-default -------------------------------

		Normal{ fg = a.fg, bg = a.bg };
		NormalFloat{ bg = a.overbg };
		-- NormalNC     { };

		-- Cursor       { };
		-- lCursor      { };
		-- CursorIM     { };
		-- TermCursor   { };
		-- TermCursorNC { };

		ColorColumn{ bg = a.overbg };
		CursorColumn{ ColorColumn };
		CursorLine{ ColorColumn };
		VertSplit{ fg = a.sel };

		LineNr{ fg = a.sel };
		CursorLineNr{ fg = a.fg, bg = a.overbg };

		Folded{ fg = a.com, bg = a.overbg };
		FoldColumn{ LineNr };
		SignColumn{ LineNr };

		Pmenu{ NormalFloat };
		PmenuSel{ bg = a.sel };
		PmenuSbar{ Pmenu };
		PmenuThumb{ PmenuSel };

		StatusLine{ NormalFloat };
		StatusLineNC{ StatusLine, fg = a.faded };
		WildMenu{ NormalFloat };

		TabLine{ StatusLineNC };
		TabLineFill{ StatusLine };
		TabLineSel{ StatusLine, gui = bf };

		MatchParen{ fg = b.yellow, bg = a.sel, gui = bf };
		Substitute{ fg = a.bg, bg = b.yellow };
		Search{ fg = a.bg, bg = b.yellow };
		-- QuickFixLine { };
		-- IncSearch    { };
		Visual{ bg = a.sel };
		-- VisualNOS    { };

		Conceal{ fg = a.faded };
		Whitespace{ fg = a.sel };
		EndOfBuffer{ Whitespace };
		NonText{ Whitespace };
		SpecialKey{ Whitespace };

		Directory{ fg = c.cyan };
		Title{ fg = c.yellow };
		ErrorMsg{ fg = a.fg, bg = c.red };
		ModeMsg{ fg = a.faded };
		-- MsgArea      { };
		-- MsgSeparator { };
		MoreMsg{ fg = c.green, gui = bf };
		WarningMsg{ fg = c.red };
		Question{ MoreMsg };

		---- :help :diff -------------------------------------------

		DiffAdd{ fg = a.bg, bg = c.green };
		DiffChange{ fg = a.bg, bg = c.yellow };
		DiffDelete{ fg = a.bg, bg = c.red };
		DiffText{ fg = c.blue, bg = c.yellow };

		DiffAdded{ DiffAdd };
		DiffRemoved{ DiffDelete };

		---- :help spell -------------------------------------------

		SpellBad{ fg = c.red, gui = undercurl };
		SpellCap{ fg = c.blue, gui = undercurl };
		SpellLocal{ fg = c.yellow, gui = undercurl };
		SpellRare{ fg = b.yellow, gui = undercurl };

		---- :help group-name --------------------------------------

		Comment{ fg = a.com, gui = it };
		Identifier{ fg = a.fg };
		Function{ fg = b.yellow };

		Constant{ fg = c.magenta };
		String{ fg = b.blue };
		Character{ fg = b.blue };
		Number{ fg = b.magenta };
		Boolean{ fg = b.magenta };
		-- Float          { };

		Statement{ fg = c.yellow };
		-- Conditional    { };
		-- Repeat         { };
		-- Label          { };
		Operator{ fg = b.red };
		-- Keyword        { };
		-- Exception      { };

		PreProc{ fg = b.green };
		-- Include        { };
		-- Define         { };
		-- Macro          { };
		-- PreCondit      { };

		Type{ fg = c.cyan };
		-- StorageClass   { };
		-- Structure      { };
		-- Typedef        { };

		Special{ fg = b.yellow };
		-- SpecialChar    { };
		-- Tag            { };
		Delimiter{ fg = b.yellow };
		-- SpecialComment { };
		-- Debug          { };

		Underlined{ gui = underline };
		Bold{ gui = bf };
		Italic{ gui = it };

		Ignore{ fg = a.com };
		Error{ fg = a.fg, bg = c.red };
		Todo{ Comment, fg = a.faded };

		---- :help nvim-treesitter-highlights (external plugin) ----

		-- TSAnnotation         { };
		-- TSAttribute          { };
		-- TSBoolean            { };
		-- TSCharacter          { };
		-- TSComment            { };
		-- TSConditional        { };
		-- TSConstant           { };
		TSConstBuiltin{ Constant, gui = it };
		TSConstMacro{ Constant };
		-- TSConstructor        { };
		-- TSError              { gui=undercurl };
		-- TSException          { };
		-- TSField              { };
		-- TSFloat              { };
		-- TSFunction           { };
		TSFuncBuiltin{ Function };
		TSFuncMacro{ Function };
		-- TSInclude            { };
		-- TSKeyword            { };
		TSKeywordFunction{ PreProc };
		-- TSKeywordOperator    { };
		-- TSKeywordReturn      { };
		-- TSLabel              { };
		-- TSMethod             { };
		TSNamespace{ fg = c.green };
		-- TSNone               { };
		-- TSNumber             { };
		-- TSOperator           { };
		-- TSParameter          { };
		-- TSParameterReference { };
		-- TSProperty           { };
		TSPunctDelimiter{ fg = c.red };
		TSPunctBracket{ Delimiter };
		TSPunctSpecial{ Delimiter };
		-- TSRepeat             { };
		-- TSString             { };
		-- TSStringRegex        { };
		TSStringEscape{ fg = c.blue };
		TSSymbol{ Identifier, gui = it };
		-- TSType               { };
		-- TSTypeBuiltin        { };
		TSVariable{ Identifier };
		TSVariableBuiltin{ Identifier, gui = it };

		-- TSTag                { };
		-- TSTagDelimiter       { };
		-- TSText               { };
		TSStrong{ gui = bf };
		TSEmphasis{ Italic };
		TSUnderline{ Underlined };
		TSStrike{ gui = "strikethrough" };
		-- TSTitle              { };
		-- TSLiteral            { };
		TSURI{ String, gui = underline };
		TSMath{ fg = b.cyan };
		-- TSTextReference      { };
		TSEnvironment{ Statement };
		TSEnvironmentName{ PreProc };
		-- TSNote               { };
		-- TSWarning            { };
		-- TSDanger             { };

		---- :help diagnostic-highlight ----------------------------

		DiagnosticError{ fg = c.red };
		DiagnosticWarn{ fg = b.yellow };
		DiagnosticInfo{ fg = b.blue };
		DiagnosticHint{ fg = b.green };
		-- DiagnosticVirtualTextError { DiagnosticError };
		-- DiagnosticVirtualTextWarn  { DiagnosticWarn  };
		-- DiagnosticVirtualTextInfo  { DiagnosticInfo  };
		-- DiagnosticVirtualTextHint  { DiagnosticHint  };
		DiagnosticUnderlineError{ gui = undercurl };
		DiagnosticUnderlineWarn{ gui = undercurl };
		DiagnosticUnderlineInfo{ gui = undercurl };
		DiagnosticUnderlineHint{ gui = undercurl };
		-- DiagnosticFloatingError    { DiagnosticError };
		-- DiagnosticFloatingWarn     { DiagnosticWarn  };
		-- DiagnosticFloatingInfo     { DiagnosticInfo  };
		-- DiagnosticFloatingHint     { DiagnosticHint  };
		-- DiagnosticSignError        { DiagnosticError };
		-- DiagnosticSignWarn         { DiagnosticWarn  };
		-- DiagnosticSignInfo         { DiagnosticInfo  };
		-- DiagnosticSignHint         { DiagnosticHint  };

		---- :help lsp-highlight -----------------------------------

		LspReferenceText{ Visual };
		LspReferenceRead{ Visual };
		LspReferenceWrite{ Visual };

		LspDiagnosticsDefaultError{ DiagnosticError };
		LspDiagnosticsDefaultWarning{ DiagnosticWarn };
		LspDiagnosticsDefaultInformation{ DiagnosticInfo };
		LspDiagnosticsDefaultHint{ DiagnosticHint };

		-- LspDiagnosticsVirtualTextError       { };
		-- LspDiagnosticsVirtualTextWarning     { };
		-- LspDiagnosticsVirtualTextInformation { };
		-- LspDiagnosticsVirtualTextHint        { };

		LspDiagnosticsUnderlineError{ gui = undercurl };
		LspDiagnosticsUnderlineWarning{ gui = undercurl };
		LspDiagnosticsUnderlineInformation{ gui = undercurl };
		LspDiagnosticsUnderlineHint{ gui = undercurl };

		-- LspDiagnosticsFloatingError          { };
		-- LspDiagnosticsFloatingWarning        { };
		-- LspDiagnosticsFloatingInformation    { };
		-- LspDiagnosticsFloatingHint           { };

		-- LspDiagnosticsSignError              { };
		-- LspDiagnosticsSignWarning            { };
		-- LspDiagnosticsSignInformation        { };
		-- LspDiagnosticsSignHint               { };

		--- :help vimtex-syntax-reference (external plugin) --------

		texOptSep{ TSPunctDelimiter };
		texOptEqual{ Operator };
		texFileArg{ Constant };
		texTitleArg{ gui = bf };
		texRefArg{ Constant };

		texMathCmd{ Function };
		texMathSymbol{ Operator };
		texMathZone{ TSMath };
		texMathDelimZone{ TSPunctDelimiter };
		texMathDelim{ Delimiter };
		texMathEnvArgName{ PreProc };

		--- netrw: there's no comprehensive list of highlights... --

		netrwClassify{ Delimiter };
		netrwTreeBar{ Delimiter };

		netrwExe{ fg = c.red };
		netrwSymLink{ fg = c.magenta };

		---- Misc. -------------------------------------------------
		HelpHyperTextJump{ fg = c.yellow };

		GitSignsAdd{ fg = a.bg, bg = c.green, gui = "reverse" };
		GitSignsChange{ fg = a.bg, bg = c.yellow, gui = "reverse" };
		GitSignsDelete{ fg = a.bg, bg = c.red, gui = "reverse" };
		GitSignsCurrentLineBlame{ fg = a.bg, bg = c.blue, gui = "reverse" };

		SignifySignAdd{ GitSignsAdd };
		SignifySignChange{ GitSignsChange };
		SignifySignDelete{ GitSignsDelete };

		---- Metagroup (hack for builds) ---------------------------
		Walh{ lush = palette[bg] };
	}
end)

-- vi:nowrap
