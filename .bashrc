#-----Command aliases-------
alias g='git'
alias x='exit'
alias v='vim'
alias ns='npm start'

#-------Git aliases-------
alias gs='g status'
alias gf='g fetch --prune'
alias gc='g clean -f'
alias gck='g checkout'
alias gckm='g checkout master'
alias gb='g branch'
alias gbd='g branch -d'
alias gbD='g branch -D'
alias gr='g reset'
alias grh='g reset --hard'
alias grb='g rebase'
alias gmt='g mergetool'
alias gcm='g commit'
alias gps='g push'
alias gp='g pull'
alias gr='g reset'
alias gs='g status'
alias gst='g stash'
alias gsa='g stash apply'
alias gsl='g stash list'
alias gsp='g stash pop'

#-------Delete all branches except master--------
alias gbDA='git branch | egrep -v "(master|\*)" | xargs git branch -D'
