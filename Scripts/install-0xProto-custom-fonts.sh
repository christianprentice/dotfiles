#!/bin/bash
set -euo pipefail

# Configuration
INSTALL_TARGET="/usr/local/share/fonts/0xProto-custom"
SOURCE_DIR="$HOME/Fonts/0xProto-custom"
REPO_URL="https://github.com/christianprentice/0xProto-custom.git"

# UI Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# Create system font directory
sudo mkdir -p "$INSTALL_TARGET"

# Ensure local Fonts directory exists and manage repository
mkdir -p "$HOME/Fonts"
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Cloning repository..."
    git clone "$REPO_URL" "$SOURCE_DIR" || {
        echo -e "${RED}Error: Failed to clone repository${NC}"
        exit 1
    }
else
    echo "Updating repository..."
    cd "$SOURCE_DIR" && git pull || \
    echo -e "${RED}Warning: Failed to update repository, continuing with local files${NC}"
fi

# Copy all font files found in the source directory
echo "Installing fonts..."
find "$SOURCE_DIR" -type f \( -name "*.otf" -o -name "*.ttf" \) -exec sudo cp {} "$INSTALL_TARGET" \;

# Update the font cache
sudo fc-cache -fv

echo -e "${GREEN}Font installation/update complete for 0xProto-custom.${NC}"
