## Introduction
This repository contains the installation steps and configuration files needed to set up my shell on new machines.

## Getting Started
Install [iTerm2](https://www.iterm2.com/downloads.html) and then run the following commands to install homebrew, zsh, and vim:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
brew install vim --override-system-vim
```

## Configuration
After cloning the project, run the setup script located in `scripts/`:

```bash
.setup.sh
```

Once that is done, restart your terminal 💥!
