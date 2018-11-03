[general]
metadata = ~/.offlineimap
accounts = kumail
socktimeout = 60

[Account kumail]
localrepository = local-kumail
remoterepository = remote-kumail

[Repository local-kumail]
type = Maildir
localfolders = /home/thecsw/.mail/kumail

[Repository remote-kumail]
type = IMAP
remotehost = imap.ku.edu
remoteuser = 
remotepass = 
ssl = yes
realdelete = no
sslcacertfile = /etc/ssl/certs/ca-certificates.crt