#!/bin/sh
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Base functions
source "$ZDOTDIR/config/zsh-functions"

# Base setup
export ZDOTDIR=$HOME/.config/zsh
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

# Config
zsh_add_file "config/zsh-env-variables"
zsh_add_file "config/zsh-vim-mode"
zsh_add_file "config/zsh-keybindings"

# Aliases
zsh_add_file "aliases/alias-git"
zsh_add_file "aliases/alias-laravel"
zsh_add_file "aliases/aliases"

# Helpers
zsh_add_file "helpers/fzf-navigation.zsh"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
