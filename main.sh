#!/bin/bash

# Suppress prompts by accepting defaults during Homebrew installation
NONINTERACTIVE=1

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update Homebrew and install applications without prompts
echo "Updating Homebrew..."
brew update

echo "Installing applications..."
brew install --cask spotify
brew install --cask notion
brew install --cask firefox
brew install --cask slack
brew install --cask visual-studio-code
# brew install --cask cursor

# Install Mamba
echo "Installing Mamba (via Miniforge)..."
brew install mamba

echo "Setup complete!"
