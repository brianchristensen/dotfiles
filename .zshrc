# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/brian/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
SOLARIZED_THEME="dark"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(
  osx 
  git 
  node 
  rust
  mix 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  z
)

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

############ User configuration ############

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# User prompt
user() {
  echo -n "\u26a1 $(whoami)@$(hostname -s)"
}
POWERLEVEL9K_CUSTOM_USER="user"
POWERLEVEL9K_CUSTOM_USER_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_USER_FOREGROUND="blue"

# Prompt settings
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{black}%F{blue} \u21b3 %f%F{black}%k\ue0b0%f "

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Dir colours
POWERLEVEL9K_DIR_HOME_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
#POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{white} arch %F{cyan}linux%f'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
POWERLEVEL9K_VCS_BRANCH_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='magenta'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='cyan'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Status
POWERLEVEL9K_OK_ICON=$'\uf164'
POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='cyan'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_VERBOSE=true

# Time
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d.%m.%y}"
POWERLEVEL9K_TIME_BACKGROUND='blue'

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs)

############### Path and Aliases ################

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

# added by Anaconda3 4.4.0 installer
export PATH="/Users/brian/anaconda/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# alias commands
alias u='cd ..'
alias gitclean="git checkout master && git pull && git branch --merged master | grep -v '\* master' | xargs -n 1 git branch -d"
alias py='python3'
alias rpw='openssl rand 50 -hex'
alias irc='irssi'
alias t="tmux -2"
alias e="vi"

