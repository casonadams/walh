-- Templates for various terminal configuration formats

vim.cmd("packadd lush.nvim")
local lush = require("lush")
local uv = vim.loop

-- Reload melange module
local function get_colorscheme(variant)
	package.loaded["walh"] = nil
	vim.opt.background = variant
	return require("walh")
end

-- Get the directory where the walh plugin is located
local function get_dir()
	return debug.getinfo(1).source:match("@?(.*/)"):gsub("/lua/walh/$", "")
end

-- Write a string to a file
local function write_file(file, str)
	local fd = assert(uv.fs_open(get_dir() .. file, "w", 420))
	uv.fs_write(fd, str, -1)
	assert(uv.fs_close(fd))
end

-- Perl-like interpolation
local function interpolate(str, tbl)
	return str:gsub("($%a%w*)", function(k)
		return tostring(tbl[k:sub(2, -1)])
	end)
end

local viml_template = [[
hi clear
syntax reset
set t_Co=256
let g:colors_name = 'walh'
if &background == 'dark'
%s
else
%s
endif
]]

local function viml_build()
	local vimcolors = {}
	for _, l in ipairs({ "dark", "light" }) do
		-- Compile lush table, concatenate to a single string, and remove blend property
		vimcolors[l] = table.concat(vim.fn.sort(lush.compile(get_colorscheme(l), { exclude_keys = { "blend" } })), "\n")
	end
	return write_file("/colors/walh-lush.vim", string.format(viml_template, vimcolors.dark, vimcolors.light))
end

local function build(terminals)
	local colors
	for _, l in ipairs({ "dark", "light" }) do
		colors = get_colorscheme(l).Walh.lush
		for term, attrs in pairs(terminals) do
			write_file(
				string.format("/term/%s/walh_%s.%s", term, l, attrs.ext),
				interpolate(attrs.template, {
					bg = colors.a.bg,
					overbg = colors.a.overbg,
					sel = colors.a.sel,
					com = colors.a.com,
					faded = colors.a.faded,
					fg = colors.a.fg,

					black = colors.a.overbg,
					red = colors.c.red,
					green = colors.c.green,
					yellow = colors.b.yellow,
					blue = colors.b.blue,
					magenta = colors.c.magenta,
					cyan = colors.c.cyan,
					white = colors.a.com,

					brblack = colors.a.sel,
					brred = colors.b.red,
					brgreen = colors.b.green,
					bryellow = colors.b.yellow,
					brblue = colors.b.blue,
					brmagenta = colors.b.magenta,
					brcyan = colors.b.cyan,
					brwhite = colors.a.faded,
					theme = l,
				})
			)
		end
	end
end

local terms = {
	alacritty = { ext = "yml" },
}

terms.alacritty.template = [[
colors:
  walh-$theme: &walh-$theme
    primary:
      foreground: '$fg'
      background: '$bg'
    normal:
      black:   '$black'
      red:     '$red'
      green:   '$green'
      yellow:  '$yellow'
      blue:    '$blue'
      magenta: '$magenta'
      cyan:    '$cyan'
      white:   '$white'
    bright:
      black:   '$brblack'
      red:     '$brred'
      green:   '$brgreen'
      yellow:  '$bryellow'
      blue:    '$brblue'
      magenta: '$brmagenta'
      cyan:    '$brcyan'
      white:   '$brwhite'
]]

return {
	build = function()
		build(terms)
		viml_build()
	end,
}
