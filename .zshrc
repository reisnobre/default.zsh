#!/bin/zsh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
export ZDOTDIR=$HOME/.config/zsh

# Base functions setup
source "$ZDOTDIR/config/zsh-functions"

# Setup of ZSH folder
export ZDOTDIR=$HOME/.config/zsh

# Colors
autoload -Uz colors && colors

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
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-completions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"
plug "zap-zsh/fzf"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "Aloxaf/fzf-tab"
plug "Freed-Wu/fzf-tab-source"
plug "wintermi/zsh-fnm"

# Load completions
autoload -Uz compinit && compinit

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/catppuccin_mocha.omp.toml)"
eval "$(zoxide init zsh)"
