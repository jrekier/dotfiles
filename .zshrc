# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/usr/lib/

# Path to your oh-my-zsh installation.
export ZSH="/Users/rekierj/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="starship"
#ZSH_THEME="gruvbox"
#SOLARIZED_THEME="dark"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias vim="nvim"
alias vi="nvim"

alias zettels="cd ~/Dropbox/zettels; ls"

alias mount_chandler="sshfs rekierj@chandler.oma.be: ~/mnt/chandler; cd ~/mnt/chandler"
alias mount_cluster="sshfs rekierj@hpca-login.oma.be: ~/mnt/cluster; cd ~/mnt/cluster"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pyenv 
# https://github.com/pyenv/pyenv
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

# julia
export PATH=/Applications/Julia-1.6.app/Contents/Resources/julia/bin:$PATH

# PETSc
export PETSC_DIR=/Users/rekierj/src/petsc 
export PETSC_ARCH=arch-darwin-cxx-opt
export PATH=$PETSC_DIR/$PETSC_ARCH/bin:$PATH
export PYTHONPATH=$PETSC_DIR/$PETSC_ARCH/lib

#SLEPc
export SLEPC_DIR=/Users/rekierj/src/slepc-3.15.1

export GOPATH=/Users/$USER/go
export PATH=$GOPATH/bin:$PATH

#Starship
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
