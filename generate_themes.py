#!/usr/bin/env python

import os
import yaml


def build_ui():
    with open("ui.yaml", "r") as f:
        theme = yaml.safe_load(f)
        ui = []
        for key in theme:
            e = None
            try:
                k = f"hi {key}"
                for attr in theme[key]:
                    if theme[key][attr]:
                        k += f" {attr}={theme[key][attr]}"
            except TypeError as err:
                e = err
            if not e:
                ui.append(k)
        return ui


def gen_theme():
    for dir in os.listdir("themes"):
        ui = build_ui()
        theme_name = dir.split(".")[0]
        prefix = [
            "hi clear",
            "syntax reset",
            "set notermguicolors",
            f"let g:colors_name = '{theme_name}'",
        ]
        print(theme_name)

        with open(f"themes/{dir}", "r") as f:
            theme = yaml.safe_load(f)
            for key in theme:
                e = None
                try:
                    k = f"hi {key}"
                    for attr in theme[key]:
                        if theme[key][attr]:
                            k += f" {attr}={theme[key][attr]}"
                except TypeError as err:
                    e = err
                if not e:
                    ui.append(k)
        with open(f"colors/{theme_name}.vim", "w") as file:
            f = file.writelines("%s\n" % l for l in prefix)
            f = file.writelines("%s\n" % l for l in ui)


gen_theme()
