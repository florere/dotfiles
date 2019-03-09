function cd {
  builtin cd "$@"
  history -s cd $(pwd)
  ls -G
}

function gitbranch {
  local branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
  [[ ! -z $branch ]] && echo " ${branch}" || echo ""
}

export PS1="\e[34m\w\e[0m\e[32m\$(gitbranch)\e[37m \$\e[0m\e[0m "
export HISTCONTROL=ignoreboth:erasedups

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

alias ls='ls -G'
alias ll='ls -lG'
alias gs='git status'
