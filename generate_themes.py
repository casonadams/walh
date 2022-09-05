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


def dimming():
    dimming = [
        "if get(g:, 'walh_dimming')",
        "  hi def link NormalNC Inactive",
        "  hi def link NvimTreeNormalNC Inactive",
        "else",
        "  hi def link NormalNC Active",
        "  hi def link NvimTreeNormalNC Active",
        "endif",
    ]
    return dimming


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
        output = p + ui + c + dimming() + links
        with open(f"colors/{theme_name}.vim", "w") as file:
            file.writelines("%s\n" % line for line in output)


gen_theme()
