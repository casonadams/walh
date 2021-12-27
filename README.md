# walh

A vim theme repo that is easy on the eyes and for long hours looking at a
screen. All colors are used from the first 21 ANSI colors of the terminal in
use. A color scheme for vim

- Options for light and dark mode based on terminal settings.

yes walh does mean what you think it does

**walh** = "winnebago audi lamborghini hatchback"

## Designed to be run with alacritty-shell

[alacritty-shell](https://github.com/casonadams/alacritty-shell) indexes 21
colors. `walh` uses `colour16` as `orange` and `colour18` as `black`. So it
might not look correct unless those colors are set accordingly.

## Install

### Add plugin

- `casonadams/walh`

### Set and configure theme

| Themes         |
| -------------- |
| walh-one       |
| walh-default   |
| walh-gruvbox   |
| walh-nord      |
| walh-solarized |

```init.vim
set notermguicolors
colorscheme walh-eighties
```
