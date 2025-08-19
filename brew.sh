#!/usr/bin/env bash

# Joseph Vore's Homebrew Setup Script
# Install command-line tools using Homebrew.

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed

# Install a modern version of Bash and ZSH.
brew install bash
brew install zsh
brew install bash-completion
brew install zsh-completions

# Install development tools
brew install git
brew install git-lfs
brew install gh # GitHub CLI
brew install vim
brew install nano
brew install grep
brew install wget
brew install curl
brew install tree
brew install htop
brew install jq
brew install yq

# Install programming languages and runtimes
brew install node
brew install python@3.11
brew install ruby
brew install go

# Install package managers
brew install nvm
brew install chruby
brew install ruby-install

# Install useful development tools
brew install tmux
brew install screen
brew install fzf
brew install ripgrep
brew install fd
brew install bat
brew install exa
brew install zoxide
brew install starship
brew install thefuck

# Install database tools
brew install sqlite
brew install postgresql
brew install redis

# Install security and networking tools
brew install openssh
brew install gnupg
brew install openssl

# Install media tools
brew install imagemagick
brew install ffmpeg

# Install syntax highlighting for ZSH
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# Install additional useful binaries
brew install ack
brew install p7zip
brew install pv
brew install rename
brew install ssh-copy-id
brew install mas # Mac App Store CLI

# Install cask applications (GUI apps)
brew install --cask visual-studio-code
brew install --cask sourcetree
brew install --cask docker
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask rectangle # Window management
brew install --cask homebrew/cask-fonts/font-fira-code # Programming font

# Remove outdated versions from the cellar.
brew cleanup

echo "Homebrew setup complete!"
echo "Don't forget to:"
echo "1. Run 'source ~/.zshrc' to reload your shell configuration"
echo "2. Configure your development tools"
echo "3. Run './.macos' to set sensible macOS defaults"
