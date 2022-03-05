#!/usr/bin/env python
import os

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


def gen_theme():
    ui = read_config("ui.yaml")
    for theme in os.listdir("themes"):
        theme_name = theme.split(".")[0]
        prefix = [
            "hi clear",
            "syntax reset",
            "set notermguicolors",
            f"let g:colors_name = '{theme_name}'",
        ]
        print(f"creating * {theme_name} * theme")

        output = prefix + ui + read_config(f"themes/{theme}")
        with open(f"colors/{theme_name}.vim", "w") as file:
            file.writelines("%s\n" % line for line in output)


gen_theme()
