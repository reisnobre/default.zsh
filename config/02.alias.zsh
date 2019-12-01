#--------------------------------------------------------------------#
# Aliases                                                            #
#--------------------------------------------------------------------#
alias vim='nvim'
alias tmux='tmux -u'
alias python='python3'
alias pip='pip3'
alias virtualenv='python -m virtualenv'
alias setup_python="rsync -r ~/code/defaults/python/ . --exclude=.vim; pip install flake8 flake8_docstrings pylint ipython neovim"
alias setup_vue="rsync -r ~/code/defaults/vue/ . --exclude=.vim"

if [ "$(uname 2> /dev/null)" = "Darwin" ]; then
  alias ctags="`brew --prefix`/bin/ctags"
  alias cs='clear'
else
fi
