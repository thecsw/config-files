
# IMAP FOR RECEIVING MAIL
set imap_user=""
#set folder="imaps://imap.ku.edu:993"
set folder="~/.mail/mailfolder"
unset imap_passive
set imap_keepalive = 300
set mail_check = 120
set spoolfile   = +INBOX
mailboxes       = +INBOX

#set signature="~/.mutt/thecsw.sig"
set signature="fortune|"

# SMTP FOR SENDING EMAIL
set my_pass=''
set my_user=
set from = 
set use_from = yes
set smtp_url=smtp://$my_user:$my_pass@authsmtp.ku.edu:587
set ssl_force_tls = yes
set ssl_starttls = yes
set realname=""
set edit_headers=yes
#set sendmail="/usr/bin/msmtp"

set record = +'Sent Items'

#auto_view text/html

# DATE AND INDEX FORMAT
set date_format="%m-%d-%y %T"
set index_format="%2C | %Z [%d] %-30.30F (%-4.4c) %s"# -*-muttrc-*-

# Palette for use with the Linux console.  Black background.
color hdrdefault blue black
color quoted blue black
color signature blue black
color attachment red black
color prompt brightmagenta black
color message brightred black
color error brightred black
color indicator black red
color status brightgreen blue
color tree white black
color normal white black
color markers red black
color search white black
color tilde brightmagenta black
color index blue black ~F
color index red black "~N|~O"

set editor="emacsclient -a \"\" -t"