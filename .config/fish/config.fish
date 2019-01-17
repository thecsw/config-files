# Configuring fuck to give some fucks
thefuck --alias | source

# Setting my terminal
set -Ux TERMINAL urxvt
set -Ux SHELL urxvt
set -Ux EDITOR 'emacsclient -nw'
set -Ux PAGER less
set -Ux NNN_USE_EDITOR 1

# In Linux we trust
function fish_greeting
    echo -e '\n\tIn Linux we trust\n'
end

# cd into a dir and ls
function lcd
    cd $argv; and ls
end

# Playing movies and videos in tty
function mplt
    mplayer -vo fbdev2 -zoom -x 681 -y 376 -geometry 100%:0% $argv > /dev/null ^ /dev/null
end

function mpl
    mplayer -vo fbdev2 -zoom -x 1366 -y 768 $argv > /dev/null ^ /dev/null
end

# Emacs client
alias em "emacsclient -nw"

# Starting X11
alias x "startx"

# Get weather
alias weather "curl wttr.in"

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

# Downloading with youtube-dl
alias youtube-mp3 "youtube-dl -f '(bestaudio)[protocol^=http]' --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s' --ignore-errors"
alias youtube-get "youtube-dl --get-filename -o '%(title)s.%(ext)s' --restrict-filename --ignore-errors"
alias youtube-playlist "youtube-dl -f '(bestaudio)[protocol^=http]' --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
alias youtube-download "youtube-dl -f '(bestvideo+bestaudio)[protocol^=http]' -o '%(title)s.%(ext)s' --ignore-errors"

function youtube-play
    youtube-dl -f '(bestaudio+bestvideo)[protocol^=http]' --ignore-errors -o - $argv | mpv -
end

# NANI
alias nani "figlet 'NANI?'"

# Some convenient gnu tools
alias cp "cp -iv"
alias mv "mv -iv"
alias rm "rm -Iv"
alias mkdir "mkdir -v"
alias p "cat"

# git shortcuts
alias gco "git checkout"
alias gb "git branch"

