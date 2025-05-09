ZSH_DISABLE_COMPFIX=true
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
#export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"¬
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
# Node
export PATH="/usr/local/share/npm/bin:$PATH"
# Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
#fastlane
export PATH="$HOME/.fastlane/bin:$PATH"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Misc exports
export EDITOR=/usr/bin/vim
export PAGER=less

# Autoloads
autoload -U colors
#autoload -U compinit compinit
#compinit bashcompletion
autoload -U zfinit
autoload -U zmv

# Allow linefeeds in quoted expressions
unsetopt cshjunkiequotes
# Don't save the current line in the history if it's the same as the line
# above
setopt histignoredups
setopt histignorespace # Don't save lines beginning with a space
setopt interactivecomments # allow comments in command lines
setopt noclobber # don't accidentally overwrite files with >
setopt extendedglob

# Auto completion
#source ~/.zsh_autocomp

#Useful shortcuts (not SO useful if you use vi-mode, but still quite handy)
typeset -g -A key
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
#WORDCHARS=${WORDCHARS//[&=\/;!#%{]}
#WORDCHARS=${WORDCHARS//[&=\  ;!#%{]}
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
#bindkey -v
bindkey -e
bindkey '^?' backward-delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[4~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char

# Nicer GREP colors
export GREP_OPTIONS='--color=auto'
# For mac
export GREP_COLOR='0;31'
# For unix
export GREP_COLORS="mc=00;36:ms=31:mt=01;38:ln=31"


autoload edit-command-line
zle -N edit-command-line

# Custom aliases
source ~/.zsh_aliases
#eval "$(rbenv init -)"
#eval "$(rbenv init - zsh)"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM="xterm-256color"

# Config vars for other applications.
source ~/.app_config_vars
source ~/.local_zsh_aliases
#. `brew --prefix`/etc/profile.d/z.sh
# eval "$(boot2docker shellinit)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#git logs
#alias zlog="git log --all --author='Julian Tiemann' --reverse --format=%B --maxcount=80 | sed '/^$/d' |  sed 's/^/* /'"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

#eval export PATH="/Users/julian/.jenv/shims:${PATH}"
#export JENV_SHELL=zsh
#export JENV_LOADED=1
#unset JAVA_HOME
#source '/usr/local/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
#jenv rehash 2>/dev/null
#jenv refresh-plugins
#jenv() {
#  typeset command
#  command="$1"
#  if [ "$#" -gt 0 ]; then
#    shift
#  fi
#
#  case "$command" in
#  enable-plugin|rehash|shell|shell-options)
#    eval `jenv "sh-$command" "$@"`;;
#  *)
#    command jenv "$command" "$@";;
#  esac
#}
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/Users/julian/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/julian/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/julian/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/julian/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/julian/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

