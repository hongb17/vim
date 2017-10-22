# Path to your oh-my-zsh installation.
export ZSH=/Users/chun/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home
export ANDROID_HOME=/Users/chun/Library/Android/sdk
export GOPATH=/Users/chun/program/go

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$ANDROID_HOME/platform-tools:$GOPATH/bin"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export GIT_EDITOR=vim

bindkey \^U backward-kill-line

unsetopt nomatch

alias tom='ssh root@192.34.56.215'
alias tom2='ssh chun@138.68.59.141'
alias xkdev='ssh xkool@123.207.239.122'
alias xkrc='ssh xkool@123.207.25.215'
alias xkprod='ssh xkool@123.207.88.66'
alias xkplay='ssh xkool@123.207.241.44'

alias bu='brew update && brew upgrade && brew cleanup'
alias rz='source ~/.zshrc'

alias xk='source /Users/chun/program/XiaoKu/venv/xk_backend/bin/activate;cd ~/program/XiaoKu/backend'
alias xka='source /Users/chun/program/XiaoKu/venv/xk_algorithm/bin/activate;cd ~/program/XiaoKu/algorithm'
alias xkd='source /Users/chun/program/XiaoKu/venv/xk_diagram_env/bin/activate;cd ~/program/XiaoKu/diagram'
alias xkdwg='source /Users/chun/program/XiaoKu/venv/xk_dwg_reader/bin/activate;cd ~/program/XiaoKu/dwg_reader'
alias xkdxf='source /Users/chun/program/XiaoKu/venv/dxf_reader/bin/activate;cd ~/program/XiaoKu/dxf_reader'
alias xkai='source /Users/chun/program/XiaoKu/venv/xkool_ai/bin/activate;cd ~/program/XiaoKu/xkool_ai'
alias xkf='cd ~/program/XiaoKu/frontend'
alias sv='source /Users/chun/program/venv/stock/bin/activate;cd ~/program/stock/new_scrapy'
alias tf='source /Users/chun/program/venv/tensorflow/bin/activate;cd ~/program/tensorflow'

alias gs='git status'
alias gco='git checkout'
alias gd='git diff'

alias v='vim'
alias rn='react-native'

alias python='python3'
alias pip='pip3'

alias fixv='sudo killall VDCAssistant'
alias fixa='sudo killall coreaudiod'

alias ss1='ss-local -c ~/ss1.config'
alias ss2='ss-local -c ~/ss2.config'

alias xk1='ssh dev@120.77.72.19'
alias xk2='ssh chun@120.76.52.238'

# XKOOL
export XKOOL_ENV='linux'

eval $(thefuck --alias)
alias f=fuck

export OPENNI2_REDIST=/usr/local/lib/ni2
export OPENNI2_INCLUDE=/usr/local/include/ni2
