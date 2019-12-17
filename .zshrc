
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME=sunrise
# ZSH_THEME="random"
ZSH_THEME="candy"


#use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

#enable command auto-correction.
ENABLE_CORRECTION="false"

#display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


# use custom dotfiles
for file in ~/.{exports,aliases,functions,profile,path}; do
	[ -r "$file" ] && source "$file"
done
unset file

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='code'
 fi

plugins=(git brew npm docker kubectl)

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  

. `brew --prefix`/etc/profile.d/z.sh

## this line is just activating a anaconda environment using python version 2.7... it should be taken out, and will be taken out on my next computer :P
py27

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
