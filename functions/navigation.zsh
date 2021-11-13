# Go to config folder
glabs () { 
  cd $(find ~/Labs -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
garchive () { 
  cd $(find ~/Archive -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
gcode () { 
  cd $(find ~/Code -maxdepth 1 -type d -print | fzf) 
}

# Go to config folder
gconfig () { 
  cd $(find ~/.config -maxdepth 1 -type d -print | fzf) 
}
# Go to config Lunarvim folder
glvim () {
  cd ~/.local/share/lunarvim/lvim/
}

# Go to lunarvim
glvim () {
  cd ~/.local/share/lunarvim/lvim/
}

gpacker () {
  cd ~/.local/share/lunarvim/site/pack/packer/
}

lvim_update () {
  (cd ~/.local/share/lunarvim/lvim/ && git pull origin rolling;)
}

rn:saf () { mdfind 'kMDItemUserTags=Active' | fzf | xargs $EDITOR j}
rn:gaf () { cd $(mdfind 'kMDItemUserTags=Active' | fzf ) }


function rn {
  $(declare -f | grep "^rn:" | sed 's/\ ()\ {//g' | fzf)
}


# https://stackoverflow.com/a/12010862
# #!/bin/bash
# # Update all git directories below current directory or specified directory
# # Skips directories that contain a file called .ignore
#
# HIGHLIGHT="\e[01;34m"
# NORMAL='\e[00m'
#
# function update {
#   local d="$1"
#   if [ -d "$d" ]; then
#     if [ -e "$d/.ignore" ]; then 
#       echo -e "\n${HIGHLIGHT}Ignoring $d${NORMAL}"
#     else
#       cd $d > /dev/null
#       if [ -d ".git" ]; then
#         echo -e "\n${HIGHLIGHT}Updating `pwd`$NORMAL"
#         git pull
#       else
#         scan *
#       fi
#       cd .. > /dev/null
#     fi
#   fi
#   #echo "Exiting update: pwd=`pwd`"
# }
#
# function scan {
#   #echo "`pwd`"
#   for x in $*; do
#     update "$x"
#   done
# }
#
# if [ "$1" != "" ]; then cd $1 > /dev/null; fi
# echo -e "${HIGHLIGHT}Scanning ${PWD}${NORMAL}"
# scan *
