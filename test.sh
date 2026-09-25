#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== 1. ShellCheck Verification ==="
if command -v shellcheck >/dev/null 2>&1; then
  shellcheck "$REPO_DIR/test.sh"
  echo "ShellCheck passed."
fi

echo "=== 2. Python Quality Gates ==="
python3 -m py_compile "$REPO_DIR/generate_themes.py"
if command -v uv >/dev/null 2>&1; then
  uv run ruff check "$REPO_DIR/generate_themes.py"
  uv run python3 "$REPO_DIR/generate_themes.py"
else
  python3 "$REPO_DIR/generate_themes.py"
fi
echo "Python checks passed."

echo "=== 3. Theme Generation Sync Verification ==="
if git -C "$REPO_DIR" diff --exit-code colors/; then
  echo "Generated colors are in sync with themes/ and ui.yaml."
else
  echo "Error: colors/ are out of date with themes/ or ui.yaml." >&2
  exit 1
fi

echo "=== 4. Vim & Neovim Sourcing Checks ==="
themes=("$REPO_DIR"/colors/*.vim)

if command -v vim >/dev/null 2>&1; then
  echo "Testing sourcing in Vim (${#themes[@]} themes)..."
  for theme in "${themes[@]}"; do
    vim -u NONE -e -s -c "source $theme" -c "qa!"
  done
  echo "Vim sourcing checks passed."
fi

if command -v nvim >/dev/null 2>&1; then
  echo "Testing sourcing and highlight groups in Neovim..."
  for theme in "${themes[@]}"; do
    nvim --headless -u NONE -c "source $theme" \
      -c "if !hlexists('MsgSeparator') || !hlexists('Delimiter') || !hlexists('DiagnosticVirtualTextError') || !hlexists('QuickFixLine') || !hlexists('diffAdded') | cquit 1 | endif" \
      -c "qa!"
  done
  echo "Neovim sourcing checks passed."
fi

echo "=== 5. ShellSpec BDD Suite ==="
if command -v shellspec >/dev/null 2>&1; then
  shellspec -s bash
  if command -v zsh >/dev/null 2>&1; then
    shellspec -s zsh
  fi
  echo "ShellSpec passed."
fi

echo "=== All tests and quality gates passed successfully! ==="
