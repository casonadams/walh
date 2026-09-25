# shellcheck shell=sh

Describe 'Theme Generator and Highlights'
  Describe 'generate_themes.py'
    It 'compiles without syntax errors'
      When run python3 -m py_compile generate_themes.py
      The status should be success
    End

    It 'runs cleanly and keeps colors/ in sync with themes/ and ui.yaml'
      When run python3 generate_themes.py
      The status should be success
      The output should include "creating * walh-gruvbox * theme"
      The output should include "creating * walh-nord * theme"
    End

    It 'produces zero uncommitted diffs in colors/'
      check_diff() {
        git diff --exit-code colors/
      }
      When call check_diff
      The status should be success
    End
  End

  Describe 'Vim & Neovim colorscheme runtime'
    load_all_themes() {
      for theme in blue cappuccino darcula default default-legacy gruvbox nord one solarized tokyo-night; do
        nvim --headless -u NONE -c "source colors/walh-$theme.vim" -c "qa!" || return 1
      done
    }

    check_all_hl_groups() {
      for theme in blue cappuccino darcula default default-legacy gruvbox nord one solarized tokyo-night; do
        nvim --headless -u NONE \
          -c "source colors/walh-$theme.vim" \
          -c "if !hlexists('MsgSeparator') || !hlexists('Delimiter') || !hlexists('DiagnosticVirtualTextError') || !hlexists('DiagnosticUnderlineError') || !hlexists('QuickFixLine') || !hlexists('diffAdded') || !hlexists('@punctuation.bracket') || !hlexists('@lsp.type.function') | cquit 1 | endif" \
          -c "qa!" || return 1
      done
    }

    It 'loads all themes without errors'
      When call load_all_themes
      The status should be success
    End

    It 'defines required highlight groups across all themes'
      When call check_all_hl_groups
      The status should be success
    End

    It 'sets background and faint tier for light mode from WALH_MODE'
      test_light_mode() {
        nvim --headless -u NONE \
          -c "let \$WALH_MODE = 'light'" \
          -c "source colors/walh-gruvbox.vim" \
          -c "echo &background" \
          -c "echo synIDattr(synIDtrans(hlID('Conceal')), 'fg#')" \
          -c "qa!" 2>&1 | tr -d '\r'
      }
      When call test_light_mode
      The status should be success
      The line 1 of output should eq "light"
      The line 2 of output should eq "7"
    End

    It 'sets background and faint tier for dark mode from WALH_MODE'
      test_dark_mode() {
        nvim --headless -u NONE \
          -c "let \$WALH_MODE = 'dark'" \
          -c "source colors/walh-gruvbox.vim" \
          -c "echo &background" \
          -c "echo synIDattr(synIDtrans(hlID('Conceal')), 'fg#')" \
          -c "qa!" 2>&1 | tr -d '\r'
      }
      When call test_dark_mode
      The status should be success
      The line 1 of output should eq "dark"
      The line 2 of output should eq "8"
    End

    It 'links NormalNC to Inactive when walh_dimming is enabled'
      test_dimming_on() {
        nvim --headless -u NONE \
          -c "let g:walh_dimming = 1" \
          -c "source colors/walh-gruvbox.vim" \
          -c "redir => m | silent hi NormalNC | redir END" \
          -c "echo m" \
          -c "qa!" 2>&1 | tr -d '\r'
      }
      When call test_dimming_on
      The status should be success
      The output should include "links to Inactive"
    End

    It 'links NormalNC to Active when walh_dimming is disabled'
      test_dimming_off() {
        nvim --headless -u NONE \
          -c "source colors/walh-gruvbox.vim" \
          -c "redir => m | silent hi NormalNC | redir END" \
          -c "echo m" \
          -c "qa!" 2>&1 | tr -d '\r'
      }
      When call test_dimming_off
      The status should be success
      The output should include "links to Active"
    End
  End
End
