# ps1
export PS1="\[\033[38;5;108m\]\n\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;124m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n>\[$(tput sgr0)\]"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH variables
export PATH="$PATH:/usr/local/opt/erlang/bin"

# environment variables
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"

# startup scripts
source ~/StartupScripts/git-completion.bash

# alias commands
alias u="cd .."
alias dc="docker-compose"
alias gitclean="git checkout master && git pull && git branch --merged master | grep -v '\* master' | xargs -n 1 git branch -d"
alias fexpose="ngrok http -hostname=bc2fe.ngrok.io -host-header=localhost 3001"
alias bexpose="ngrok http -hostname=bc2be.ngrok.io 8080"
alias lisp="rlwrap sbcl"
alias semaphore="docker-compose"
alias backend="docker-compose --file docker-compose.yml --file docker-compose.semaphore.yml"
alias frontend="docker-compose"
