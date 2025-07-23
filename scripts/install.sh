#!/usr/bin/env bash

dotfiles_dir=~/dotfiles
config_dir=$dotfiles_dir/.config
home_config_dir=~/.config

mkdir -p $home_config_dir

# list of files to symlink
files=".zshrc .zprofile .zshenv .p10k.zsh .gitconfig .npmrc"

# list of directories to symlink
configs="kitty nvim btop dunst fastfetch hypr tofi autostart waybar wlogout"

for file in $files; do
    echo "Creating symlink for $file"
    rm -f ~/$file
    ln -s $dotfiles_dir/$file ~/$file
done

for config in $configs; do
    echo "Creating symlink for $config"
    rm -rf $home_config_dir/$config
    ln -s $config_dir/$config $home_config_dir/$config
done

echo "Dotfiles installation complete!"
