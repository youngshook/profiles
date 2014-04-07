[ -n "$PS1" ] && source ~/.bash_profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/git/bin:/usr/local/git/libexec/git-core:$PATH
# Git commands autocompletion
if [ -f /etc/.git-completion.bash ]; then
    . /etc/.git-completion.bash
fi

