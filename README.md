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

| option            | range        |
|-------------------|--------------|
| `walh_hue`        | `0 - 356`    |
| `walh_saturation` | `-100 - 100` |
| `walh_lightness`  | `-100 - 100` |

| schemes          |
|------------------|
| `walh-default`   |
| `walh-artic`     |
| `walh-eighties`  |
| `walh-lunarized` |

- setting options to `nil` uses theme default settings

```init.vim
lua << EOF
vim.o.termguicolors = true
vim.g.walh_hue = nil
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
    background: '#23231f'
    foreground: '#a6a69b'
  normal:
    black:   '#0a0a09'
    red:     '#9d535a'
    green:   '#80a064'
    yellow:  '#c9a14f'
    blue:    '#607f9f'
    magenta: '#9c6391'
    cyan:    '#5d9bac'
    white:   '#bfbfb1'
```

<img width="766" alt="walh-default" src="https://user-images.githubusercontent.com/17597548/137857938-b06088e4-9759-4433-9984-6993bac477a7.png">

### walh-eighties

terminal colors (alacritty)

```yml
walh-eighties: &walh-eighties
  primary:
    background: '#23231f'
    foreground: '#a6a69b'
  normal:
    black:   '#0a0a09'
    red:     '#9d535a'
    green:   '#80a064'
    yellow:  '#c9a14f'
    blue:    '#607f9f'
    magenta: '#9c6391'
    cyan:    '#5d9bac'
    white:   '#bfbfb1'
```

<img width="766" alt="walh-eighties" src="https://user-images.githubusercontent.com/17597548/137857982-e6644d02-c420-4114-8c48-973ddf7e9df1.png">

### walh-artic

terminal colors (alacritty)

```yml
walh-ocean: &walh-artic
  primary:
    background: '#25292c'
    foreground: '#b1b8be'
  normal:
    black:   '#0e1011'
    red:     '#bf6e76'
    green:   '#a1c186'
    yellow:  '#dcbb7a'
    blue:    '#81a1c1'
    magenta: '#bc85b2'
    cyan:    '#7eb8c8'
    white:   '#c9d1d8'

```

<img width="766" alt="walh-artic" src="https://user-images.githubusercontent.com/17597548/137858017-c68ecbe5-7fd9-4ec2-8671-a7374f570b3b.png">

### walh-lunarized

terminal colors (alacritty)

```yml
walh-lunarized: &walh-lunarized
  primary:
    background: '#1c2426'
    foreground: '#92a9af'
  normal:
    black:   '#070809'
    red:     '#c32c3b'
    green:   '#7dc83c'
    yellow:  '#e2a936'
    blue:    '#337fcc'
    magenta: '#c23da9'
    cyan:    '#36b1d3'
    white:   '#b0c0c4'
```

<img width="766" alt="walh-lunarized" src="https://user-images.githubusercontent.com/17597548/138032473-f32dc34f-797e-4075-8b03-24d381924d86.png">

## Calls outs

Would not be possible without the amazing work from [lush](https://github.com/rktjmp/lush.nvim)

color scheme for vim
