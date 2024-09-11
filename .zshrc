# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/usr/lib/

# Path to your oh-my-zsh installation.
export ZSH="/Users/rekierj/.oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
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

alias mount_chandler="sshfs -o rekierj@chandler.oma.be: ~/mnt/chandler; cd ~/mnt/chandler"
alias mount_cluster="sshfs -o follow_symlinks rekierj@hpca-login.oma.be: ~/mnt/cluster; cd ~/mnt/cluster"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Lazy-load pyenv
pyenv() {
  unset -f pyenv  # Unset the function after first run
  eval "$(command pyenv init --path)"
  eval "$(command pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
  
  # Re-run pyenv with all its arguments after initialization
  command pyenv "$@"
}

# Lazy-load pyenv
pyenv() {
  unset -f pyenv  # Unset the function after first run
  eval "$(command pyenv init --path)"
  eval "$(command pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
  
  # Re-run pyenv with all its arguments after initialization
  command pyenv "$@"
}

# julia
export PATH=/Applications/Julia-1.6.app/Contents/Resources/julia/bin:$PATH

# PETSc
export PETSC_DIR=/Users/rekierj/src/petsc 
export PETSC_ARCH=arch-darwin-cxx-opt
export PATH=$PETSC_DIR/$PETSC_ARCH/bin:$PATH
export PYTHONPATH=$PETSC_DIR/$PETSC_ARCH/lib

# SLEPc
export SLEPC_DIR=/Users/rekierj/src/slepc-3.15.1

# Go
export GOPATH=/Users/$USER/go
export PATH=$GOPATH/bin:$PATH

#Starship
eval "$(starship init zsh)"

# Node.js version manager

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  # Setup completion here
  if [[ -n $ZSH_VERSION ]]; then
    [[ ! -f "$NVM_DIR/bash_completion" ]] || source "$NVM_DIR/bash_completion"
  fi
  nvm "$@"
}

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/rekierj/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
