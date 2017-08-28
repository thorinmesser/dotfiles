alias reload!='. ~/.zshrc'
alias src='. ~/.zshrc'
alias viz='vi ~/.zshrc'

alias pf='open -a /Applications/Path\ Finder.app'
alias st='open -a /Applications/Sublime\ Text.app'
alias atm='open -a /Applications/Atom.app'
alias path='echo $PATH'
alias biggs='pushd /usr/local/src/biggs'
alias uls='cd /usr/local/src'
# alias bd=". bd -s"
alias ruby='nocorrect ruby'
alias vi='nocorrect vi'
alias take='f() { mkdir $1 && cd $_ };f'
alias prune='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d'
alias cls='clear' # Good 'ol Clear Screen command
