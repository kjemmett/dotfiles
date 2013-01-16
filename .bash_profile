export BASH_CONF="bash_profile"

export MKL_NUM_THREADS=1

# alias vim to macvim
alias vim="mvim -v"
alias vi="mvim -v"

# alias to startup matlab in command line
alias m="/Applications/MATLAB_R2012a.app/bin/matlab -nodesktop -nosplash"

# alias to open pdf in skim
alias skim='open -a Skim'

# alias to always ls in color
alias ls="ls -G"

# put homebrew in front of system PATH
export PATH=$HOME/.cabal/bin:/usr/local/bin:/usr/local/sbin:$PATH

# append PYTHONPATH for non-homebrew python
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# source the python virtual environment at startup
source ~/.virtual_envs/system/bin/activate

# fancy bash autocompletions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# enable autojump (this is slow and disabled by default)
# [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# load rvm into shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# set prompt
# PS1='[\u@\h \W]$ '
