#--------------------------------------------------------------------#
# Global Configuration Variables                                     #
#--------------------------------------------------------------------#
if [ "$(uname 2> /dev/null)" = "Darwin" ]; then
  export PATH=$HOME/bin:/usr/local/bin:$PATH
  export PATH=$HOME/.composer/vendor/bin:$PATH
  export PATH=$HOME/Library/Python/3.7/bin:$PATH
  export PATH=/usr/local/opt/node@10/bin:$PATH
  export PATH=/usr/local/bin/yarn:$PATH
  export PATH=/usr/local/opt/php@7.3/bin:$PATH
  export PATH=/usr/local/opt/mysql@5.7/bin:$PATH
else
  export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH
  export PATH=$HOME/.config/composer/vendor/bin:$PATH
  export PATH=/home/linuxbrew/.linuxbrew/Cellar:$PATH
  export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
fi

