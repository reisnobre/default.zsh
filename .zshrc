#!/bin/zsh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# Base functions setup
source "$ZDOTDIR/config/zsh-functions"

# Setup of ZSH folder
export ZDOTDIR=$HOME/.config/zsh

# Setup zsh history file
HISTFILE=~/.zsh_history

# Base config
setopt appendhistory
unsetopt BEEP
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
zle_highlight=('paste:none')

# Completion setup
fpath+=~/.config/zsh/completions/_fnm
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Zsh config
zsh_add_file "config/zsh-vim-mode"
zsh_add_file "config/zsh-keybindings"

# ENV variables
zsh_add_file "config/zsh-env-variables"

# Aliases
zsh_add_file "aliases/alias-git"
zsh_add_file "aliases/alias-laravel"
zsh_add_file "aliases/aliases"
zsh_add_file "aliases/alias-docker"
zsh_add_file "aliases/alias-laravel-docker"

# Helpers
zsh_add_file "helpers/fzf-navigation.zsh"
zsh_add_file "helpers/mkcert-helpers.zsh"

# Plugins
plug "Aloxaf/fzf-tab"
plug "Freed-Wu/fzf-tab-source"
plug "hlissner/zsh-autopair"
plug "wintermi/zsh-brew"
plug "zap-zsh/fzf"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-completions"
plug "zsh-users/zsh-syntax-highlighting"
plug "wintermi/zsh-fnm"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
