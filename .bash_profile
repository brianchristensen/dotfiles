# bash prompt
export PS1="\n\[$(tput sgr0)\]\[\033[38;5;177m\]\u\[$(tput sgr0)\]\[\033[38;5;134m\]@\[$(tput sgr0)\]\[\033[38;5;177m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;117m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n>\[$(tput sgr0)\]"

# go
export GOPATH=$HOME/Projects/go
export GOBIN=$GOPATH/bin
PATH=$PATH:$GOBIN

# yarn
export PATH="$PATH:`yarn global bin`"

# metasploit
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin

# android home
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/emulator
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# postgresql
export PGDATA=${HOME}/Projects/db/pgsql
export PGHOST=localhost
alias pg_start='pg_ctl -l $PGDATA/logfile.log start'
alias pg_stop='pg_ctl stop -m fast'
alias pg_status='pg_ctl status'
alias pg_restart='pg_ctl reload'

# alias commands
alias u='cd ..'
alias gitclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias py='python3'
alias rpw='openssl rand 50 -hex'
alias irc='irssi'

# added by Anaconda3 4.4.0 installer
export PATH="/Users/brian/anaconda/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
