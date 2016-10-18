# Shell Environment Setup
1. Install [iTerm2](https://www.iterm2.com/downloads.html)
2. Install Homebrew:
    Open iTerm2 and run the following:
    ```
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
3. Install zsh:
    ```
    brew install zsh zsh-completions
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
    ```

## Configuration

***Clone the project:***

```
git clone git@github.com:tony-dinh/sh-settings.git
cd sh-settings
./scripts/setup.sh
```

***Import `Basic.terminal`***
Import terminal settings and save as default setting:
```
Shell > Import...
Basic.terminal

Shell > Use Settings as Default
```

***Install Latest Vim***

```
brew install vim --override-system-vim
```
