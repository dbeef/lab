
/var/lock
/var/log
/var/log/alternatives.log
/var/log/apt
/var/log/apt/eipp.log.xz
/var/log/apt/history.log
/var/log/apt/term.log
/var/log/bootstrap.log
/var/log/btmp
/var/log/dpkg.log
/var/log/faillog
/var/log/lastlog
/var/log/wtmp
/var/log/journal
/var/log/private
find: ‘/var/log/private’: Permission denied
/var/mail
/var/opt
/var/run
/var/spool
/var/spool/mail
/var/spool/cron
/var/spool/cron/crontabs
find: ‘/var/spool/cron/crontabs’: Permission denied
/var/tmp
/.dockerenv
/challenge
/challenge/metadata.json
picoplayer@challenge:~$ find /challenge/
/challenge/
/challenge/metadata.json
picoplayer@challenge:~$ cat /challenge/metadata.json
{"flag": "picoCTF{Sch3DUL7NG_T45K3_L1NUX_7754e199}", "username": "picoplayer", "password": "a-8nJGZCTa"}picoplayer@challenge:~$
picoplayer@challenge:~$ Connection to saturn.picoctf.net closed by remote host.
Connection to saturn.picoctf.net closed.

