c() { cd $PROJECTS/$1; }
_c() { _files -W $PROJECTS -/; }
compdef _c c

s() { cd $STUDIUM/$1; }
_s() { _files -W $STUDIUM -/; }
compdef _s s

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
