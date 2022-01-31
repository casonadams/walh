#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

for i in {0..255}; do
  printf "\x1b[48;5;%sm %3d \e[0m" $i "$i"
  if ((i == 7)) || ((i > 7)) && (((i - 7) % 8 == 0)); then
    printf "\n"
  fi
done
