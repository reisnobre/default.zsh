#!/bin/zsh
# Setup of ZSH folder
export ZDOTDIR=$HOME/.config/zsh

# Base functions setup
source "$ZDOTDIR/config/zsh-functions"

# Setup zsh history file
HISTFILE=~/.zsh_history

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# # Base config
# setopt appendhistory
# unsetopt BEEP
# setopt autocd extendedglob nomatch menucomplete
# setopt interactive_comments
# zle_highlight=('paste:none')

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
fpath+=~/.config/zsh/completions/_fnm
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

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
zinit light "Aloxaf/fzf-tab"
zinit light "Freed-Wu/fzf-tab-source"
zinit light "hlissner/zsh-autopair"
zinit light "wintermi/zsh-brew"
zinit light "zap-zsh/fzf"
zinit light "zap-zsh/supercharge"
zinit light "zap-zsh/vim"
zinit light "zsh-users/zsh-autosuggestions"
zinit light "zsh-users/zsh-completions"
zinit light "zsh-users/zsh-syntax-highlighting"
zinit light "wintermi/zsh-fnm"

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

eval "$(fnm env)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/base.toml)"

