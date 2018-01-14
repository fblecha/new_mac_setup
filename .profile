
export JAVA_HOME="Library//Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

#export PATH="$JAVA_HOME:$PATH"

export PATH="/usr/local/opt/go/libexec/bin:$PATH"

export GOPATH=$HOME/go
export PGAPP=/Applications/Postgres.app/Contents/Versions/latest/bin

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PGAPP:$GOPATH/bin:$PATH

function _update_ps1() {
    PS1="$(~/powerline-shell.py $? --mode compatible 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

eval "$(direnv hook bash)"


# added by Anaconda3 5.0.1 installer
export PATH="/Users/fb3/anaconda3/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
