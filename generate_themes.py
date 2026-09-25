#!/usr/bin/env python3
import os

# python -m pip install pyyaml
import yaml


def read_config(config):
    with open(config, "r") as f:
        theme = yaml.safe_load(f)
        if not theme or not isinstance(theme, dict):
            return []
        highlights = []
        for key, attrs in theme.items():
            if not isinstance(attrs, dict):
                continue
            highlight = f"hi {key}"
            for attr, val in attrs.items():
                highlight += f" {attr}={val}"
            highlights.append(highlight)
        return highlights


def read_links(config):
    if not os.path.exists(config):
        return []
    with open(config, "r") as f:
        data = yaml.safe_load(f)
        if not data or not isinstance(data, dict):
            return []
        return [f"hi def link {key} {target}" for key, target in data.items()]

def faint():
    # Faint tier: barely-visible text (buffer-end tildes, concealed text).
    # Light palettes keep grey (7) ghosted next to the readable dim on
    # bright-black (8); dark palettes use the dim slot for both.
    faint_groups = ("Conceal", "Whitespace", "EndOfBuffer", "NonText", "SpecialKey")
    attrs = "ctermbg=NONE ctermfg={} cterm=NONE guifg=NONE guibg=NONE gui=NONE"
    return [
        "if !empty($WALH_MODE) && $WALH_MODE ==# 'light'",
        *[f"  hi {group} {attrs.format(7)}" for group in faint_groups],
        "else",
        *[f"  hi {group} {attrs.format(8)}" for group in faint_groups],
        "endif",
    ]


def options():
    return [
        "if !empty($WALH_MODE)",
        "  let &background = $WALH_MODE",
        "endif",
        "if get(g:, 'walh_dimming')",
        "  hi def link NormalNC Inactive",
        "  hi def link NvimTreeNormalNC Inactive",
        "else",
        "  hi def link NormalNC Active",
        "  hi def link NvimTreeNormalNC Active",
        "endif",
    ]


def gen_theme():
    ui = read_config("ui.yaml")
    links = read_links("links.yaml")
    theme_files = sorted(f for f in os.listdir("themes") if f.endswith((".yaml", ".yml")))
    for theme_file in theme_files:
        theme_name = os.path.splitext(theme_file)[0]
        p = [
            "hi clear",
            "syntax reset",
            "set notermguicolors",
            f"let g:colors_name = '{theme_name}'",
        ]
        c = read_config(f"themes/{theme_file}")

        print(f"creating * {theme_name} * theme")
        output = p + ui + c + options() + faint() + links
        with open(f"colors/{theme_name}.vim", "w") as f:
            f.writelines(f"{line}\n" for line in output)


if __name__ == "__main__":
    gen_theme()
