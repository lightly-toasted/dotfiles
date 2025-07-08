#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# Variables
dotfiles_dir=~/dotfiles
config_dir=$dotfiles_dir/.config
home_config_dir=~/.config

# Create .config directory if it doesn't exist
mkdir -p $home_config_dir

# list of files to symlink
files=".zshrc .gitconfig .p10k.zsh .zprofile .npmrc"

# list of directories to symlink
configs="kitty nvim btop dunst flameshot fastfetch hypr tofi"

# Symlink files
for file in $files; do
    echo "Creating symlink for $file"
    rm -f ~/$file
    ln -s $dotfiles_dir/$file ~/$file
done

# Symlink config directories
for config in $configs; do
    echo "Creating symlink for $config"
    rm -rf $home_config_dir/$config
    ln -s $config_dir/$config $home_config_dir/$config
done

echo "Dotfiles installation complete!"
