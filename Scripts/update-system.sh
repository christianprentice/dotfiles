#!/bin/bash
set -euo pipefail

blue='\033[0;34m'
purple='\033[0;35m'
nocolor='\033[0m'

commands=(
    "sudo dnf upgrade -y"
    "cargo install-update -a"
)
for command in "${commands[@]}"; do
    echo -e "${purple}running: ${blue}${command}${nocolor}"
    eval "$command"
done

echo -e "${purple}All updates complete${nocolor}"
