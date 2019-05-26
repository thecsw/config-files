#!/usr/bin/fish

# Configuring fuck to give some fucks
thefuck --alias | source

# Setting my terminal
#set -Ux PLAN9 /home/thecsw/gits/plan9port
#set -gx PATH $PLAN9/bin $PATH
#set -gx PATH $PLAN9/bin/no_bin $PATH
set -Ux CONFBIN /home/thecsw/gits/config-files/
set -gx PATH $CONFBIN/bin $PATH
set -Ux GOPATH /home/thecsw/go
set -gx PATH $GOPATH/bin $PATH
set -Ux TERMINAL urxvt
set -Ux SHELL urxvt
set -Ux EDITOR 'emacsclient -nw'
set -Ux PAGER less
set -Ux NNN_USE_EDITOR 1
set -Ux NNN_OPENER mimeopen

# In Linux we trust
function fish_greeting
    echo -e '\n\tIn Linux we trust\n'
end

# cd into a dir and ls
function lcd
    cd $argv; and ls
end

# acme
function acme
    p9_acme -f ~/.config/fonts/Inconsolata/font $argv &;disown
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

abbr wm "wicd-curses"

alias ytd "xclip -o | sed 's/^/\'/;s/\$/\'/' | xargs youtube-dl -f '(bestvideo+bestaudio)[protocol^=http]' -o '%(title)s.%(ext)s' --ignore-errors"

# ncurses search
alias duck "w3m https://duckduckgo.com"

# User level mounting
abbr m "udevil mount"
abbr um "udevil umount"

# Scientific ncurses calculator
abbr sm "sc-im"

# Some xclip short commands
abbr c "xclip"
abbr v "xclip -o"

# Downloading with youtube-dl
abbr youtube-mp3 "youtube-dl -f '(bestaudio)[protocol^=http]' --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s' --ignore-errors"
abbr youtube-get "youtube-dl --get-filename -o '%(title)s.%(ext)s' --restrict-filename --ignore-errors"
abbr youtube-playlist "youtube-dl -f '(bestaudio)[protocol^=http]' --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
abbr youtube-download "youtube-dl -f '(bestvideo+bestaudio)[protocol^=http]' -o '%(title)s.%(ext)s' --ignore-errors"

function youtube-play
    youtube-dl --ignore-errors -o - $argv | mpv -
end

# NANI
alias nani "figlet 'NANI?'"

# Some convenient gnu tools
abbr cp "cp -iv"
abbr mv "mv -iv"
abbr rm "rm -Iv"
abbr mkdir "mkdir -v"
abbr p "cat"

# git shortcuts
abbr gco "git checkout"
abbr gb "git branch"

# Rename this file to match the name of the function
# e.g. ~/.config/fish/functions/n.fish
# or, add the lines to the 'config.fish' file.

export NNN_TMPFILE="/tmp/nnn"

function n --description 'support nnn quit and change directory'
        nnn $argv

        if test -e $NNN_TMPFILE
                source $NNN_TMPFILE
                rm $NNN_TMPFILE
        end
end

# Citrix receiver
function citrix
    wfica $argv 2> /dev/null &;disown;exit
end
