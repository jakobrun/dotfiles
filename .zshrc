
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME=sunrise
ZSH_THEME="random"


#use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

#enable command auto-correction.
ENABLE_CORRECTION="true"

#display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


# use custom dotfiles
for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

source $ZSH/oh-my-zsh.sh
source ~/.profile

# activate python2.7 environment via anaconda
# source activate py27

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='code'
 fi

plugins=(git brew npm docker kubectl)

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  

. `brew --prefix`/etc/profile.d/z.sh