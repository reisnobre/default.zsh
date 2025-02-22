# Go to config folder
glabs () { 
  z $(find ~/Labs -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
garchive () { 
  z $(find ~/Archive -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
gcode () { 
  z $(find ~/Code -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
gz () { 
  z $(find ~/Zettelkasten -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
gconfig () { 
  z $(find ~/.config -maxdepth 1 -type d -print | fzf) 
}
# Go to config Lunarvim folder
glvim () {
  z ~/.local/share/lunarvim/lvim/
}

# Go to lunarvim
glvim () {
  z ~/.local/share/lunarvim/lvim/
}

gpacker () {
  z ~/.local/share/lunarvim/site/pack/packer/
}

lvim_update () {
  (cd ~/.local/share/lunarvim/lvim/ && git pull origin rolling;)
}

rn:saf () { mdfind 'kMDItemUserTags=Active' | fzf | xargs $EDITOR j}
rn:gaf () { cd $(mdfind 'kMDItemUserTags=Active' | fzf ) }


function rn {
  $(declare -f | grep "^rn:" | sed 's/\ ()\ {//g' | fzf)
}

