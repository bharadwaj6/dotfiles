#!/bin/sh

zshrc() {
    echo "configuring zshrc..."
    cat .zshrc > "$HOME"/.zshrc
    echo "configuring rc files..."
    cat tmux.conf > "$HOME"/.tmux.conf
    cat vimrc > "$HOME"/.vimrc
    cat zprofile > "$HOME"/.zprofile
    cat zshrenv > "$HOME"/.zshenv

    cp -r ./zsh "$HOME"/.zsh

    echo "setting up zsh auto suggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
}

zshrc
