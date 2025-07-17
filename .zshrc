# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#Oh My Zsh installation path
export ZSH="$HOME/.oh-my-zsh"

# Set theme (you can change this or use 'random' if you want)
ZSH_THEME="robbyrussell"

# Prompt: user@host + current directory, colored
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# Enable colors in terminal
autoload -U colors && colors

# Enable completion system
autoload -Uz compinit && compinit

# Plugins to load - add more as you need
plugins=(git zsh_codex zsh-autosuggestions zsh-syntax-highlighting)

export ZSH_CODEX_PYTHON="$HOME/.zsh_codex_venv/bin/python"
bindkey '^X' create_completion

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Enable command correction (helps fix typos)
ENABLE_CORRECTION="true"

# Enable shared history across terminals
setopt SHARE_HISTORY

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Useful aliases (feel free to add more in $ZSH_CUSTOM)
alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'
alias gs='git status'
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias waybar-reload='pkill waybar && hyprctl dispatch exec waybar'

# Load user-specific custom scripts here if needed
# source $ZSH_CUSTOM/mycustom.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export _JAVA_AWT_WM_NONREPARENTING=1
ZSH_HIGHLIGHT_STYLES[comment]='fg=245'
