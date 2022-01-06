if set -q DISPLAY ; and string match -q 'emacsclient*' "$EDITOR"
    alias e "$EDITOR -n"
else
    alias e "$EDITOR"
end

alias fe "$EDITOR"
alias l  'ls'
alias o  'xdg-open'
alias s  'mosh'
alias tt 'tree -F'
alias ff 'find . -name '
alias f  'fuck'

alias t  'tw'
alias to 'taskopen'
alias in 'task add +in'

alias su "sudo $SHELL"
alias computer, "sudo"  # best alias ever

alias st 'git status'
alias gp 'git add -p'

alias py  'python'
alias py2 'python2'
alias psh 'pipenv shell --fancy'

alias n 'cd ~/n'
alias shortps "alias fish_prompt \"echo '> '\""

alias serveme 'python3 -m http.server'

alias gpg 'gpg2'  # who wants gpg1
alias hledger 'hledger -s'
