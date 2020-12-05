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

brew install git

brew cask install google-chrome

# dev
brew cask install visual-studio-code
brew install tmux
brew install elixir
brew install postgresql

brew cask install psequel
brew cask install dash
brew cask install keycastr
brew cask install tableplus
brew cask install postman

# brew tap heroku/brew && brew install heroku

# Remove outdated versions from the cellar.
brew cleanup