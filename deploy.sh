#!/bin/bash

dotfiles=(".zshrc", ".brick_zsh.txt", ".config")
dir="${HOME}/dotfiles"

for dotfile in "$dotfiles[@]}";do
	ln -sf "${HOME}/${dotfile}" "${dir}"
done

