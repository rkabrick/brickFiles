#!/bin/sh 

# Install Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Antibody (Zsh Plugin Manager)
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# Install iTerm2 Shell Integration 
curl -L https://iterm2.com/shell_integration/zsh \
-o ~/.iterm2_shell_integration.zsh

# Install Zsh-Substring-History-Search
brew install zsh-history-substring-search

# Install thefuck
brew install thefuck

# Install command not found
brew tap homebrew/command-not-found

# Get rid of compinit errors 
sudo chmod -R 755 $(which zsh)

# Clone my configs
git clone http://github.com/rkabrick/brickFiles ~/brickFiles

# Copy my files 
cp ~/brickFiles/.zshrc ~/ 
cp ~/brickFiles/.brick_zsh.txt ~/

# Source New Config File
source ~/.zshrc 