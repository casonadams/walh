# walh

A vim theme repo that is easy on the eyes and for long hours looking at a
screen. All colors are used from the ANSI colors of the terminal in use. A color
scheme for vim

- Options for light and dark mode based on terminal settings.

yes walh does mean what you think it does

**walh** = "winnebago audi lamborghini hatchback"

## Designed to be run with x-shell

- [alacritty-shell](https://github.com/casonadams/alacritty-shell)
- [walh-shell](https://github.com/casonadams/walh-shell)

these are similar to `base16-shell` and add additional index colors.

walh uses `colour208` as `orange`

So it might not look correct unless those colors are set accordingly.

### additional plugins to make it smooth

**NOTE** use one or the other for more syntax highlight support

- `sheerun/vim-polyglot`
- `nvim-treesitter/nvim-treesitter`

## Install

### Add plugin

- `casonadams/walh`

### Set and configure theme

| Themes              |
| ------------------- |
| walh-blue           |
| walh-darcula        |
| walh-default        |
| walh-default-legacy |
| walh-gruvbox        |
| walh-nord           |
| walh-one            |
| walh-solarized      |

```init.vim
set notermguicolors
colorscheme walh-default
```

## Pane Dimming

- neovim on by (default)

To disable

```sh
vim.opt.winhighlight = "NormalNC:Normal"
```

## Tmux Dimming

Add the following to `~/.tmux.conf` for dimming that matches `walh`

```conf
set -g pane-active-border-style bg=color0
set -g pane-border-style bg=color0
set-window-option -g window-active-style bg=terminal
set-window-option -g window-style bg=color0
```
