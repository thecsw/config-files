# Configuring fuck to give some fucks
thefuck --alias | source
set EDITOR em

function fish_greeting
    echo -e '\n\tIn Linux we trust\n'
end

function lcd
    cd $argv; and ls
end

alias em "emacsclient -nw"
alias ems "emacs --daemon"
alias emk "emacsclient -nw --eval '(kill-emacs)'"
alias x "startx"
alias v "w3m https://duckduckgo.com"
alias m "udevil mount"
alias um "udevil umount"
alias nani "figlet 'NANI?'"
alias cp "cp -iv"
alias mv "mv -iv"
alias rm "rm -Iv"
alias mkdir "mkdir -v"
alias gco "git checkout"
alias gb "git branch"
alias scim "sc-im"
