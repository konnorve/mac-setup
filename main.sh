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
brew install --cask microsoft-office
brew install --cask rectangle
brew install --cask 1password
brew install --cask cursor
# brew install --cask google-cloud-sdk

brew install wget
brew install tree
brew install imagemagick

# Install Mamba
brew install --cask mambaforge

echo "Setup complete!"

for file in *.yaml
do
mamba env create --file $file -y -v
done
