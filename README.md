# walh

A vim theme repo that is easy on the eyes and for long hours looking at a
screen. All colors are used from the first 16 ANSI colors of the terminal in
use.

- Options for light and dark mode based on terminal settings.

yes walh does mean what you think it does

**walh** = "winnebago audi lamborghini hatchback"

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

### Alacritty themes that work with walh

```alacritty.yml
schemes:
  gruvbox_dark: &gruvbox-dark
    primary:
      background: "#282828"
      foreground: "#ebdbb2"
    normal:
      black: "#363636"
      red: "#cc241d"
      green: "#98971a"
      yellow: "#d79921"
      blue: "#458588"
      magenta: "#b16286"
      cyan: "#689d6a"
      white: "#a89984"
    bright:
      black: "#928374"
      red: "#fb4934"
      green: "#b8bb26"
      yellow: "#fabd2f"
      blue: "#83a598"
      magenta: "#d3869b"
      cyan: "#8ec07c"
      white: "#ebdbb2"
  gruvbox_light: &gruvbox-light
    primary:
      background: "#fbf1c7"
      foreground: "#3c3836"
    normal:
      black: "#f9eaae"
      red: "#cc241d"
      green: "#98971a"
      yellow: "#d79921"
      blue: "#458588"
      magenta: "#b16286"
      cyan: "#689d6a"
      white: "#7c6f64"
    bright:
      black: "#928374"
      red: "#9d0006"
      green: "#79740e"
      yellow: "#b57614"
      blue: "#076678"
      magenta: "#8f3f71"
      cyan: "#427b58"
      white: "#3c3836"
  nord-dark: &nord-dark
    primary:
      background: "#2E3440"
      foreground: "#D8DEE9"
    normal:
      black: "#3B4252"
      red: "#BF616A"
      green: "#A3BE8C"
      yellow: "#EBCB8B"
      blue: "#81A1C1"
      magenta: "#B48EAD"
      cyan: "#88C0D0"
      white: "#E5E9F0"
    bright:
      black: "#4C566A"
      red: "#BF616A"
      green: "#A3BE8C"
      yellow: "#EBCB8B"
      blue: "#81A1C1"
      magenta: "#B48EAD"
      cyan: "#8FBCBB"
      white: "#ECEFF4"
  nord-light: &nord-light
    primary:
      background: "#D8DEE9"
      foreground: "#2E3440"
    normal:
      black: "#ECEFF4"
      red: "#a5545c"
      green: "#8ea57a"
      yellow: "#d1b47b"
      blue: "#708ca8"
      magenta: "#9b7a95"
      cyan: "#77a9b7"
      white: "#3B4252"
    bright:
      black: "#4C566A"
      red: "#a5545c"
      green: "#8ea57a"
      yellow: "#d1b47b"
      blue: "#708ca8"
      magenta: "#9b7a95"
      cyan: "#77a9b7"
      white: "#ECEFF4"
  code-dark: &code-dark
    primary:
      background: "#1e1e1e"
      foreground: "#c6c6c6"
    normal:
      black: "#383838"
      red: "#df1426"
      green: "#00c073"
      yellow: "#e4e700"
      blue: "#0072cf"
      magenta: "#cc2bc2"
      cyan: "#00aad1"
      white: "#e5e5e5"
    bright:
      black: "#666666"
      red: "#ff3843"
      green: "#00d684"
      yellow: "#f4f700"
      blue: "#018ef1"
      magenta: "#e666dc"
      cyan: "#00bbdf"
      white: "#e0e0e0"

colors: *gruvbox-dark

```

- It is important to note that `color0` or `normal: black` lightness value
  should 10 lighter then `background`
- It is important to note that `color15` or `bright: white` lightness value
  should 10 lighter then `foreground`

- Just a small set of how this theme can be configured
- Treesitter syntax highlight is on on all screen shots

#### terminal theme: gruvbox-dark

##### vim theme: walh

![image](https://user-images.githubusercontent.com/17597548/141432939-ff50fdbf-0ce6-48e0-a753-4327cffa342a.png)

##### vim theme: walh-eighties

![image](https://user-images.githubusercontent.com/17597548/141432617-33782be4-0f25-4838-b921-601522ff3c35.png)

##### vim theme: walh-nord

![image](https://user-images.githubusercontent.com/17597548/141432846-6c292034-3245-4263-be5d-b78f95056a5e.png)

##### vim theme: walh-default

![image](https://user-images.githubusercontent.com/17597548/141432983-843ab273-fc4d-4a45-ab92-bf718f9738ca.png)

#### terminal theme: gruvbox-light

##### vim theme: walh

![image](https://user-images.githubusercontent.com/17597548/141433139-c1ef8332-52a2-4231-9081-fafbef314c87.png)

##### vim theme: walh-eighties

![image](https://user-images.githubusercontent.com/17597548/141433485-1660f6d5-49ff-4c8f-b2ab-afa1c26bed2c.png)

##### vim theme: walh-nord

![image](https://user-images.githubusercontent.com/17597548/141433520-b46ae263-c9a4-440c-bacf-890b3e5b68c8.png)

##### vim theme: walh-default

![image](https://user-images.githubusercontent.com/17597548/141433565-0f3d0025-6d37-4b6f-aa6b-ac5231bc748c.png)

#### terminal theme: nord-dark

##### vim theme: walh

![image](https://user-images.githubusercontent.com/17597548/141434678-3520b45c-28cf-4d1d-ab7f-eb5c66805bb0.png)

##### vim theme: walh-eighties

![image](https://user-images.githubusercontent.com/17597548/141434733-6b4a758b-26b5-420e-b3e9-979b73263bde.png)

##### vim theme: walh-nord

![image](https://user-images.githubusercontent.com/17597548/141434866-af50f207-6e25-4371-b00e-f5bed59001ee.png)

##### vim theme: walh-default

![image](https://user-images.githubusercontent.com/17597548/141434924-2ac38ba7-9535-4913-9250-2f42f5f99cbe.png)

#### terminal theme: code-dark

##### vim theme: walh

![image](https://user-images.githubusercontent.com/17597548/141436266-fe1a443f-1fad-4423-a86d-9534a44e0c98.png)

##### vim theme: walh-eighties

![image](https://user-images.githubusercontent.com/17597548/141436291-bc15e0f7-6ede-415f-9d56-944e23fc2097.png)

##### vim theme: walh-nord

![image](https://user-images.githubusercontent.com/17597548/141436314-d32a552d-8584-46e7-8ac1-0e5d6f479d33.png)

##### vim theme: walh-default

![image](https://user-images.githubusercontent.com/17597548/141436341-4530d8af-4a65-40dd-be90-78a9ef05565e.png)

color scheme for vim
