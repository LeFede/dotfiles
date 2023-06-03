#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias code='/var/lib/flatpak/exports/bin/com.visualstudio.code'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='\u@\h \W '
. "$HOME/.cargo/env"

export PATH="/usr/share/code/bin:$PATH"
export PATH="/usr/bin/zsh:$PATH"
export PATH="/home/fede/.surrealdb:$PATH"
export PATH="$HOME/.local/bin/rust-analyzer:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
