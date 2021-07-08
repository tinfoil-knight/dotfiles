#!/usr/bin/env bash
set -euxof pipefail

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    brew update
fi

# Upgrade any already-installed formulae.
brew upgrade

# dev
brew install git
brew tap mongodb/brew && brew install mongodb-community
brew install yarn
brew install tree
brew cask install postman
brew cask install visual-studio-code

# applications
brew cask install google-chrome

# Remove outdated versions from the cellar.
brew cleanup