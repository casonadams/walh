#!/usr/bin/env python3
import os

# python -m pip install pyyaml
import yaml


def read_config(config):
    with open(config, "r") as file:
        theme = yaml.safe_load(file)
        highlights = []
        for key in theme:
            try:
                highlight = f"hi {key}"
                for attr in theme[key]:
                    highlight += f" {attr}={theme[key][attr]}"
                highlights.append(highlight)
            except TypeError:
                pass
        return highlights


def read_links(config):
    with open(config, "r") as file:
        file = yaml.safe_load(file)
        links = []
        try:
            for key in file:
                link = f"hi def link {key} {file[key]}"
                print(link)
                links.append(link)
        except TypeError:
            pass
        return links


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
    options = [
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
    return options


def gen_theme():
    ui = read_config("ui.yaml")
    links = read_links("links.yaml")
    for theme in os.listdir("themes"):
        theme_name = theme.split(".")[0]
        p = [
            "hi clear",
            "syntax reset",
            "set notermguicolors",
            f"let g:colors_name = '{theme_name}'",
        ]
        c = read_config(f"themes/{theme}")

        print(f"creating * {theme_name} * theme")
        output = p + ui + c + options() + faint() + links
        with open(f"colors/{theme_name}.vim", "w") as file:
            file.writelines("%s\n" % line for line in output)


gen_theme()
