# These are just a few parts of .bashrc

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Add new alias by function call
function mkalias ()
{
        alias "$*";
        echo alias "$*" >> ~/.bash_aliases
}

#Colored man pages.
man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}
