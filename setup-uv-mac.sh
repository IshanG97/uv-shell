#!/bin/zsh

echo "Running macOS setup..."

# Detect profile file
PROFILE_FILE="$HOME/.zshrc"

# Ensure .uv-shell is copied
cp .uv-shell ~/.uv-shell

# Define block to add
UV_BLOCK="# Source UV utilities - NOTE: macOS only
source ~/.uv-shell"

# Append if not already present
if ! grep -Fxq "$UV_BLOCK" "$PROFILE_FILE"; then
    echo "Adding UV utilities block to $PROFILE_FILE"
    printf "\n%s\n" "$UV_BLOCK" >> "$PROFILE_FILE"
else
    echo "UV utilities block is already present in $PROFILE_FILE"
fi

# Apply changes
source "$PROFILE_FILE"

echo "Setup completed!"
