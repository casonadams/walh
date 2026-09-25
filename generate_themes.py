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

def treesitter_links():
    links = [
        ("@variable", "Identifier"),
        ("@variable.builtin", "Special"),
        ("@variable.parameter", "Identifier"),
        ("@variable.member", "Identifier"),
        ("@constant", "Constant"),
        ("@constant.builtin", "Special"),
        ("@module", "Include"),
        ("@label", "Label"),
        ("@string", "String"),
        ("@string.documentation", "Comment"),
        ("@string.regexp", "SpecialChar"),
        ("@string.escape", "SpecialChar"),
        ("@character", "Character"),
        ("@character.special", "SpecialChar"),
        ("@boolean", "Boolean"),
        ("@number", "Number"),
        ("@number.float", "Float"),
        ("@type", "Type"),
        ("@type.builtin", "Type"),
        ("@type.definition", "Typedef"),
        ("@function", "Function"),
        ("@function.builtin", "Special"),
        ("@function.macro", "Macro"),
        ("@function.method", "Function"),
        ("@constructor", "Special"),
        ("@operator", "Operator"),
        ("@keyword", "Keyword"),
        ("@keyword.function", "Keyword"),
        ("@keyword.return", "Keyword"),
        ("@keyword.operator", "Operator"),
        ("@keyword.import", "Include"),
        ("@punctuation.delimiter", "Delimiter"),
        ("@punctuation.bracket", "Delimiter"),
        ("@punctuation.special", "Delimiter"),
        ("@comment", "Comment"),
        ("@comment.documentation", "Comment"),
        ("@tag", "Tag"),
        ("@tag.attribute", "Identifier"),
        ("@tag.delimiter", "Delimiter"),
        ("@markup.heading", "Title"),
        ("@markup.link", "Underlined"),
        ("@markup.link.url", "Underlined"),
        ("@markup.list", "Delimiter"),
        ("@markup.raw", "String"),
        ("@diff.plus", "diffAdded"),
        ("@diff.minus", "diffRemoved"),
        ("@diff.delta", "DiffChange"),
        ("@lsp.type.class", "Structure"),
        ("@lsp.type.decorator", "Function"),
        ("@lsp.type.enum", "Type"),
        ("@lsp.type.enumMember", "Constant"),
        ("@lsp.type.function", "Function"),
        ("@lsp.type.interface", "Type"),
        ("@lsp.type.macro", "Macro"),
        ("@lsp.type.method", "Function"),
        ("@lsp.type.namespace", "Structure"),
        ("@lsp.type.parameter", "Identifier"),
        ("@lsp.type.property", "Identifier"),
        ("@lsp.type.struct", "Structure"),
        ("@lsp.type.type", "Type"),
        ("@lsp.type.typeParameter", "Typedef"),
        ("@lsp.type.variable", "Identifier"),
    ]
    return [
        "if has('nvim')",
        *[f"  hi def link {src} {dst}" for src, dst in links],
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
        output = p + ui + c + options() + faint() + treesitter_links() + links
        with open(f"colors/{theme_name}.vim", "w") as f:
            f.writelines(f"{line}\n" for line in output)


if __name__ == "__main__":
    gen_theme()
