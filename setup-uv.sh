# Detect the default shell
SHELL_NAME=$(basename "$SHELL")

# Determine the correct profile file
if [ "$SHELL_NAME" = "bash" ]; then
    PROFILE_FILE="$HOME/.bashrc"
    [ -f "$HOME/.bash_profile" ] && PROFILE_FILE="$HOME/.bash_profile"
elif [ "$SHELL_NAME" = "zsh" ]; then
    PROFILE_FILE="$HOME/.zshrc"
else
    echo "Unsupported shell: $SHELL_NAME"
    exit 1
fi

# Define the block to add
UV_BLOCK="# Source UV utilities - NOTE: macOS and Linux only
if [ -f ~/.uv ]; then
    source ~/.uv-shell
fi"

# Check if the exact block is already in the profile file
if ! grep -Fxq "$UV_BLOCK" "$PROFILE_FILE"; then
    echo "Adding UV utilities block to $PROFILE_FILE"
    echo -e "\n$UV_BLOCK" >> "$PROFILE_FILE"
else
    echo "UV utilities block is already present in $PROFILE_FILE"
fi

# Apply the changes
source "$PROFILE_FILE"
echo "Profile updated successfully!"
