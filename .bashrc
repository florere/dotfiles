export PS1="\n\e[91m\w\e[0m \e[32m\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\e[0m\n\$ "
export HISTCONTROL=ignoreboth:erasedups

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

function cd {
  builtin cd "$@"
  history -s cd $(pwd)
  ls
}

alias ll='ls -l'
alias gs='git status'
