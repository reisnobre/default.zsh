# Paths
if [ "$(uname 2> /dev/null)" = "Darwin" ]; then
  # Adds ~/bin to $PATH
  export PATH=$HOME/bin:/usr/local/bin:$PATH
  export PATH=$HOME/.composer/vendor/bin:$PATH

  # Add other bins to $PATH
  export PATH=$HOME/bin:/usr/local/bin:$PATH
  export PATH=$HOME/Library/Python/3.7/bin:$PATH
else 
  export PATH=/home/linuxbrew/.linuxbrew/Cellar:$PATH
  export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH
  export PATH=$HOME/.config/composer/vendor/bin:$PATH
  export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
fi