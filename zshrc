# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git command-not-found encode64)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR=vim

# quick reset
alias qreset='printf "\033c"'

# all history is appended to the same file, but not shared by sessions simutaneously
setopt APPEND_HISTORY

# simple http server
alias start_server='python -m SimpleHTTPServer 8000'

export TERM=xterm-256color

# grep with line number
alias ngrep='grep -n'

# enable autocomplete in gnuplot 
alias gnuplot="rlwrap -a -c -b\"\\\"\\\"\\\'\\\'\" gnuplot"

# disable autocorrect
unsetopt correct_all

# set locale
export LC_ALL=
export LANG="en_US.utf8"
export LC_COLLATE="C"
export LC_CTYPE="C"

# svn
alias svn_cleanup="svn status --no-ignore | grep -E '(^\?)|(^\I)' | sed -e 's/^. *//' | sed -e 's/\(.*\)/\"\1\"/' | xargs rm -rf"
alias svn_log="svn log -l 10"

# using the arrow key searches history beginning with the current line
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# use faster crypto for scp
alias fscp=scp -c arcfour
