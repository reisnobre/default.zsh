# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

#--------------------------------------------------------------------#
# Plugins                                                            #
#--------------------------------------------------------------------#
plugins=(
  git
  zsh-autosuggestions
  yarn
  web-search
  jsontools
  macports
  node
  osx
  sudo
  thor
  docker
  laravel-artisan
  virtualenv
  zsh-syntax-highlighting
  history
  wakatime
)

source $ZSH/oh-my-zsh.sh

# HISTSIZE=10000
# SAVEHIST=10000
# HISTFILE=~/.cache/zsh/history

for config_file in $HOME/.config/zsh/config/*.zsh; do
  source $config_file
done


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
