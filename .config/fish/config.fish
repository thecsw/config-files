# Configuring fuck to give some fucks
thefuck --alias | source

# In Linux we trust
function fish_greeting
    echo -e '\n\tIn Linux we trust\n'
end

# cd into a dir and ls
function lcd
    cd $argv; and ls
end

# Emacs client
alias em "emacsclient -nw"

# Starting X11
alias x "startx"

# ncurses search
alias duck "w3m https://duckduckgo.com"

# User level mounting
alias m "udevil mount"
alias um "udevil umount"

# Scientific ncurses calculator
alias scim "sc-im"

# Some xclip short commands
alias c "xclip"
alias v "xclip -o"

# NANI
alias nani "figlet 'NANI?'"

# Some convenient gnu tools
alias cp "cp -iv"
alias mv "mv -iv"
alias rm "rm -Iv"
alias mkdir "mkdir -v"

# git shortcuts
alias gco "git checkout"
alias gb "git branch"
