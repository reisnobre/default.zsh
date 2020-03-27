rn:spf () { du -a ~/Projects | grep -viE '.git|node_modules|deploy|dist|.env|vendor|.DS_Store' | awk '{print $2}' | fzf | xargs $EDITOR }
rn:saf () { mdfind 'kMDItemUserTags=Active' | fzf | xargs $EDITOR j}
rn:gaf () { cd $(mdfind 'kMDItemUserTags=Active' | fzf ) }
rn:gtf () { cd $(find ~/Projects -type d -name "tool*" -print -maxdepth 1 | fzf) }
rn:glf () { cd $(ls . | fzf) }
rn:gcf () { cd $(find ~/.config -maxdepth 1 -print | fzf) }

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
