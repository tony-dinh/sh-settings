# Shell Profile

## Install Hombrew && zsh

Run the following to install homebrew:

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Next install zsh 

```
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

## Configuration

***Clone the project:***

```
git clone git@github.com:tony-dinh/sh-settings.git
cd sh-settings
```

***Copy patched font into font folder `~/Library/Fonts`***

```
cp Droid\ Sans\ Mono\ for\ Powerline  ~/Library/Fonts
```

***Copy `.zshrc`, `env.sh`, && `.vimrc` into the home directory***

```
cp zsh_profile/.zshrc ~/
cp zsh_profile/env.sh ~/
cp .vimrc ~/
```

***Copy the the zsh-theme into into the appropriate directory***
```
cp agnoster(editted).zsh-theme ~/.oh-my-zsh/themes/
```

***Import `Basic.terminal`***

Shell > Import...
