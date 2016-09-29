#!/bin/sh

# install hombrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# start with brew packages
brew install npm
brew install bash

# tap dat Cask
brew tap caskroom/cask

# engineering
brew cask install iterm2
brew cask install atom
brew cask install kaleidoscope

# Productivity applications
brew cask install slack
brew cask install google-chrome
brew cask install dropbox
brew cask install skype
brew cask install google-hangouts
brew cask install 1password
brew cask install zoomus

# Fun applications
brew cask install spotify
brew cask install vlc
brew cask install transmission

# verify
brew doctor
