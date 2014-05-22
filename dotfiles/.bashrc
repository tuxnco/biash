export LC_CTYPE=en_US.utf-8

# change default editor
if which subl > /dev/null; then
  export EDITOR="subl -w"
else
  export EDITOR=vim
fi

if which git > /dev/null; then
  parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
  export PS1='\[\e[38;5;202m\]\w\[\e[38;5;149m\]$(parse_git_branch)\[\e[00m\] $ '
else
  export PS1='\[\e[38;5;202m\]\w\[\e[38;5;149m\]$\[\e[00m\] $ '
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# misc aliases
alias mkdir='mkdir -p'
alias clr='clear'
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
alias du='du -kh'
alias df='df -kTh'
alias ll='ls -l'
alias ls='ls -hF'
alias la='ls -Al'
alias lx='ls -lXB'
alias lk='ls -lSr'
alias lc='ls -ltcr'
alias lu='ls -ltur'
alias lt='ls -ltr'
alias lm='ls -al |more'
alias lr='ls -lR'
alias cst='clr && git st'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
