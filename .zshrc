
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/rsa_id"
export UPDATE_ZSH_DAYS=7
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/home/thecsw/.oh-my-zsh

ZSH_THEME="ys"

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

eval $(thefuck --alias)

alias em="emacsclient -nw"
alias ems="emacs --daemon"
alias emk="emacsclient -nw --eval '(kill-emacs)'"
alias x="startx"
alias v="w3m https://duckduckgo.com"
alias m="udevil mount"
alias um="udevil umount"
alias nani="figlet 'NANI?'"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -Iv"
alias mkdir="mkdir -v"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

echo '\n\tIn Linux we trust'

plugins=( git )

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='emacs -nw'
else
    export EDITOR='vim'
fi
