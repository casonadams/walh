# walh

A vim theme repo that is easy on the eyes and for long hours looking at a screen

- Options for light and dark mode

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

color scheme for vim
