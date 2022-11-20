#!/bin/sh

zshrc() {
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
    cat .zshrc > "$HOME"/.zshrc
}

copy_zsh_config() {
    cp -r ./zsh ~/.zsh
}

zshrc
copy_zsh_config
