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
