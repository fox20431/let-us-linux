#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything

[ -z "$PS1" ] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

export EDITOR=vim

function bash_prompt {
  
	echo -ne "\033]0;$USER@$(uname -n):$(basename "$PWD")\007\033[ q"

  local BOLD_RED="\[\033[1;31m\]"
  local BOLD_BLUE="\[\033[1;34m\]"
  local BOLD_YELLOW="\[\033[1;33m\]"
  local BOLD_GREEN="\[\033[1;32m\]"

  local NO_COLOR="\[\033[0m\]"

  if [[ $EUID -eq 0 ]]; then
    PS1="${BOLD_RED}\u${NO_COLOR}@${BOLD_YELLOW}\h${NO_COLOR}:${BOLD_GREEN}\W${NO_COLOR}\\$ "
  else
    PS1="${BOLD_BLUE}\u${NO_COLOR}@${BOLD_YELLOW}\h${NO_COLOR}:${BOLD_GREEN}\W${NO_COLOR}\\$ "
  fi
}

PROMPT_COMMAND=bash_prompt
