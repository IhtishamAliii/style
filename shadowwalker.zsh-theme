# Based on bira theme

setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
  PR_USER='%B%F{red}❲ihtisham❳'
  PR_USER_OP='%F{green}'
  PR_PROMPT='➤➤➤'
else # root
  PR_USER='%F{red}%n%f'
  PR_USER_OP='%F{red}%#%f'
  PR_PROMPT='%F{red}➤ %f'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{red}%M%f' # SSH
else
  PR_HOST='%F{green}%M%f' # no SSH
fi


local return_code="%(?..%F{red}%? ↵%f)"

local user_host="${PR_USER}%F"
local current_dir="%B%F{yellow}%~%f%F{green}"
local git_branch='$()'
green=$(tput setaf 2)
echo "${green}"
clear
figlet -w $(tput cols) -c shadow
PROMPT="%B%F{cyan}┏━━━%f ${user_host} ${current_dir} \$(ruby_prompt_info) ${git_branch}
%F{cyan}┗━$PR_PROMPT%f "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %f"
ZSH_THEME_RUBY_PROMPT_PREFIX="%F{red}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%f"

}
