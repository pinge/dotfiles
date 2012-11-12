alias ls='ls -al --color=auto'
alias _ld='tail -n 100 -f log/development.log'
alias _lp='tail -n 100 -f log/production.log'

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1='\e[1;33m\w\e[0m $(rvm-prompt v g) $(parse_git_branch)$ '

