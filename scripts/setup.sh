#!/bin/bash

pushd ..
# copy dot-files into root directory
cp zsh_profile/.zshrc ~/
cp zsh_profile/env.sh ~/
cp .vimrc ~/

# copy theme config files
cp iterm_config/Droid\ Sans\ Mono\ for\ Powerline-Powerline.otf ~/Library/Fonts
cp zsh_profile/agnoster\(editted\).zsh-theme ~/.oh-my-zsh/themes/
popd
