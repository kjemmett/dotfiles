# source aliases
source ~/.aliases

# source exports
source ~/.exports

# source prompt
source ~/.bash_prompt

if [[ `uname` == "Darwin" ]]; then

    # fix iterm2 tab title upon ssh logout
    export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'

    # Add fancy tab autocompletions for many Bash commands
    if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
        source "$(brew --prefix)/share/bash-completion/bash_completion";
    elif [ -f /etc/bash_completion ]; then
        source /etc/bash_completion;
    fi

    # use grc to colorize various outputs
    #source "`brew --prefix`/etc/grc.bashrc"

    # load rvm into shell session *as a function*
    #[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    # enable autojump
    # [[ -s `brew --prefix`/etc/autojump.sh]] && . `brew --prefix`/etc/autojump.sh

fi

# colorize less output
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[01;35m") \
        LESS_TERMCAP_md=$(printf "\e[0;34m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[01;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[04;36m") \
            man "$@"
}
