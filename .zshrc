# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump osx)

# User configuration
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home

# Common
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
export LANG=en_US.UTF-8

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export GIT_EDITOR=vim

bindkey \^U backward-kill-line

unsetopt nomatch

alias tom='ssh root@192.34.56.215'
alias tom2='ssh chun@138.68.59.141'
alias tomhk='ssh chun@149.129.90.96'

alias rz='source ~/.zshrc'

# XKOOL
export XKOOL_ENV='linux'
alias xkj='ssh lc@120.77.201.198 -p4848'
alias xk='cd ~/program/XiaoKu/backend;av'
alias xka='cd ~/program/XiaoKu/algorithm;av'
alias xkf='cd ~/program/XiaoKu/frontend'
alias xkp='cd ~/program/XiaoKu/ppt_service;av'
alias xkin='ssh -p 8738 chun@xkooltest.3322.org'

# GIT
alias gs='git status'
alias gco='git checkout'
alias gd='git diff'
alias gsu'git submodule update'
alias gl='git pull'
alias grh='git reset HEAD'
alias grx='git reset -- xkconfig'

alias python='python3'
alias pip='pip3'

alias av='source venv/bin/activate'
alias dv='deactivate'
alias vv='virtualenv venv;av'

alias grep='grep -n --color --exclude-dir=venv --exclude-dir=xkconfig --exclude-dir=auto_test/test_data --exclude=*.pyc'

eval $(thefuck --alias)
alias f=fuck

alias v='vim'

export PATH="/usr/local/opt/gdal2/bin:$PATH"

# Mac
if [ "$(uname)" == "Darwin" ]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
  alias bu='brew update && brew upgrade && brew cleanup'
  alias fixv='sudo killall VDCAssistant'
  alias fixa='sudo killall coreaudiod'
  export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# Linux
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "linux"
fi

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias ss1='ss-local -c ~/ss1.config'
# alias ss2='ss-local -c ~/ss2.config'

# export OPENNI2_REDIST=/usr/local/lib/ni2
# export OPENNI2_INCLUDE=/usr/local/include/ni2
# export PATH="/usr/local/opt/opencv@2/bin:$PATH"

# proxy list
# alias goproxy='export http_proxy=http://127.0.0.1:1087 https_proxy=http://127.0.0.1:1087'
# alias disproxy='unset http_proxy https_proxy'

ctags=/usr/local/bin/ctags
