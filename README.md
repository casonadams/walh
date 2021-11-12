# walh

A vim theme repo that is easy on the eyes and for long hours looking at a screen.
All colors are used from the first 16 ANSI colors of the terminal in use. 

- Options for light and dark mode based on terminal settings.

yes walh does mean what you think it does

**walh** = "winnebago audi lamborghini hatchback"

## Install

### Add plugin

- `casonadams/walh`

### Set and configure theme

| option                  | range        | description           |
|-------------------------|--------------|-----------------------|
| `walh_base_hue`         | `0 - 356`    | background hue        |
| `walh_base_saturation`  | `-100 - 100` | background saturation |
| `walh_saturation`       | `-100 - 100` | overall saturation    |
| `walh_lightness`        | `-100 - 100` | overall lightness     |

| schemes          |
|------------------|
| `walh-default`   |
| `walh-artic`     |
| `walh-eighties`  |
| `walh-lunarized` |

- setting options to `nil` uses theme default settings
- want something more gray scaled set `vim.g.walh_saturation = -90`
- want more *pop* set `vim.g.walh_saturation = 90`

```init.vim
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
#### vim theme: walh

##### terminal theme: gruvbox-dark

![image](https://user-images.githubusercontent.com/17597548/141432939-ff50fdbf-0ce6-48e0-a753-4327cffa342a.png)

##### terminal theme: gruvbox-light

![image](https://user-images.githubusercontent.com/17597548/141433139-c1ef8332-52a2-4231-9081-fafbef314c87.png)

#### vim theme: walh-eighties

##### terminal theme: gruvbox-dark

![image](https://user-images.githubusercontent.com/17597548/141432617-33782be4-0f25-4838-b921-601522ff3c35.png)

##### terminal theme: gruvbox-light

![image](https://user-images.githubusercontent.com/17597548/141433485-1660f6d5-49ff-4c8f-b2ab-afa1c26bed2c.png)

#### vim theme: walh-nord

##### terminal theme: gruvbox-dark

![image](https://user-images.githubusercontent.com/17597548/141432846-6c292034-3245-4263-be5d-b78f95056a5e.png)

##### terminal theme: gruvbox-light

![image](https://user-images.githubusercontent.com/17597548/141433520-b46ae263-c9a4-440c-bacf-890b3e5b68c8.png)

#### vim theme: walh-default

##### terminal theme: gruvbox-dark

![image](https://user-images.githubusercontent.com/17597548/141432983-843ab273-fc4d-4a45-ab92-bf718f9738ca.png)

##### terminal theme: gruvbox-light

![image](https://user-images.githubusercontent.com/17597548/141433565-0f3d0025-6d37-4b6f-aa6b-ac5231bc748c.png)

color scheme for vim
