#!/bin/sh

# start with xcode utils so things can be actually compiled, warning triggers a popup
xcode-select --install

# install hombrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# start with brew packages
brew install bash
brew install git
brew install go

# getting a good node setup
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
source ~/.bash_profile
# latest stable node version
nvm install stable
nvm alias default stable
# update npm
npm i -g npm 

# zsh is great
brew install zsh
# oh oh-my-zsh why do you want to be curled?
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# tap dat Cask
brew tap caskroom/cask

# engineering
brew cask install iterm2
# brew cask install atom
brew cask install visual-studio-code
brew cask install kaleidoscope

# Productivity applications
brew cask install slack
brew cask install google-chrome
brew cask install dropbox
brew cask install skype
brew cask install google-hangouts
brew cask install 1password
brew cask install zoomus
brew cask install rescuetime

# Fun applications
brew cask install spotify
brew cask install vlc
brew cask install transmission

# verify
brew doctor
