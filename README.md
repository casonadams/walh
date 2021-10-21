# walh

A neovim theme repo
that is easy on the eyes and
for long hours looking at a screen

- Easily customize the scheme by controlling the Hue, Saturation, and Lightness levels.
- Options for light and dark mode

yes walh does mean what you think it does

**walh** = "winnebago audi lamborghini hatchback"

## Install

### Add plugins

- `rktjmp/lush.nvim` -- Required
- `casonadams/walh`  -- theme

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
- want something more gray scaled set `walh-saturation = -90`
- want more *pop* set `walh-saturation = 90`

```init.vim
lua << EOF
vim.o.termguicolors = true
vim.g.walh_base_hue = nil
vim.g.walh_base_saturation = nil
vim.g.walh_saturation = nil
vim.g.walh_lightness = nil

vim.o.background = "dark"
EOF

colorscheme walh-default
```

## Default look

### walh-default

terminal colors (alacritty)

```yml
walh-default: &walh-default
  primary:
    background: '#2c2721'
    foreground: '#bbb1a5'
  normal:
    black:   '#12110f'
    red:     '#ce6973'
    green:   '#a1cb7c'
    yellow:  '#e2bf79'
    blue:    '#6792c5'
    magenta: '#c57cb8'
    cyan:    '#78c0d3'
    white:   '#d4c6b6'
```

<img width="766" alt="walh-default" src="https://user-images.githubusercontent.com/17597548/138221889-6c69791b-8676-4a4b-956d-a9426dba59fd.png">

### walh-eighties

terminal colors (alacritty)

```yml
walh-eighties: &walh-eighties
  primary:
    background: '#2c2721'
    foreground: '#bbb1a5'
  normal:
    black:   '#12110f'
    red:     '#ce6973'
    green:   '#a1cb7c'
    yellow:  '#e2bf79'
    blue:    '#6792c5'
    magenta: '#c57cb8'
    cyan:    '#78c0d3'
    white:   '#d4c6b6'
```

<img width="766" alt="walh-eighties" src="https://user-images.githubusercontent.com/17597548/138221914-680d7357-a87e-4ef9-a399-876b2380e5d1.png">

### walh-artic

terminal colors (alacritty)

```yml
walh-artic: &walh-artic
  primary:
    background: '#1d2025'
    foreground: '#949cad'
  normal:
    black:   '#0b0c0d'
    red:     '#be505b'
    green:   '#91be6a'
    yellow:  '#d9b263'
    blue:    '#4f7db5'
    magenta: '#b86baa'
    cyan:    '#65b2c8'
    white:   '#adb5c7'
```

<img width="766" alt="walh-artic" src="https://user-images.githubusercontent.com/17597548/138221941-3b45b17e-0793-4e4c-b894-3899f087cddb.png">

### walh-lunarized

terminal colors (alacritty)

```yml
walh-lunarized: &walh-lunarized
  primary:
    background: '#1c2126'
    foreground: '#98a7b3'
  normal:
    black:   '#0b0c0d'
    red:     '#ca535f'
    green:   '#96c76b'
    yellow:  '#e1b866'
    blue:    '#5184c2'
    magenta: '#c16cb2'
    cyan:    '#66bad1'
    white:   '#adbecc'
```

<img width="766" alt="walh-lunarized" src="https://user-images.githubusercontent.com/17597548/138221977-f6303a44-4353-4b61-988b-94527bf11da2.png">

## Calls outs

Would not be possible without the amazing work from [lush](https://github.com/rktjmp/lush.nvim)

color scheme for vim
