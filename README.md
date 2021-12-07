# walh

A vim theme repo that is easy on the eyes and for long hours looking at a
screen. All colors are used from the first 21 ANSI colors of the terminal in
use. A color scheme for vim

- Options for light and dark mode based on terminal settings.

yes walh does mean what you think it does

**walh** = "winnebago audi lamborghini hatchback"

## Designed to be run with base16-shell

[base16-shell](https://github.com/chriskempson/base16-shell) indexes 21 colors.
`walh` uses `colour16` as `orange` and `colour18` as `black`. So it might not
look correct unless those colors are set accordingly.

[base16-shell.zsh](https://github.com/casonadams/base16-shell.zsh) is a nice
helper if using plugins with `zsh`

## Install

### Add plugin

- `casonadams/walh`

### Set and configure theme

| Themes         |
| -------------- |
| walh           |
| walh-default   |
| walh-eighties  |
| walh-nord      |
| walh-solarized |

```init.vim
set notermguicolors
colorscheme walh
```
