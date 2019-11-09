#--------------------------------------------------------------------#
# Visual                                                             #
#--------------------------------------------------------------------#
# Elements options of left prompt (remove the @username context)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv rbenv vcs)
# Elements options of right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history)
# Add a second prompt line for the command
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
# Add a space in the first prompt 
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%}ÓÇ∞ %{%f%}"

# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

