#--------------------------------------------------------------------#
# Aliases                                                            #
#--------------------------------------------------------------------#
# alias vim='vii'
alias vim='nvim'
alias tmux='tmux -u'
# alias python='python3'
# alias pip='pip'
alias venv='python3 -m venv'
alias vtop='vtop --theme nord --no-mouse'

alias setup.python="rsync -r ~/Projects/setup.python/ . --exclude=.vim; pip install flake8 flake8_docstrings pylint ipython neovim"
alias setup.vue="rsync -r ~/Projects/setup.vue/ . --exclude=.vim"
alias setup.md="rsync -r ~/Projects/setup.md/ . --exclude=.vim;"

# Paths
alias gcr='cd $(git root)'
