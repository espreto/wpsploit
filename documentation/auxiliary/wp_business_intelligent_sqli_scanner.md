#### Add WordPress Plugin Business Intelligence Lite SQL Injection Scanner.

  Application: WordPress Plugin 'Business Intelligence Lite' 1.6.1
  Homepage: https://wordpress.org/plugins/wp-business-intelligence-lite/
  Source Code: https://downloads.wordpress.org/plugin/wp-business-intelligence-lite.1.6.1.zip
  References: https://wpvulndb.com/vulnerabilities/7879

#### Vulnerable packages*

  1.6.1

#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msf > use auxiliary/scanner/http/wp_business_intelligent_sqli_scanner
msf auxiliary(wp_business_intelligent_sqli_scanner) > show options

Module options (auxiliary/scanner/http/wp_business_intelligent_sqli_scanner):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   SLEEP      7                yes       Calculate the response time (7 is default)
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_business_intelligent_sqli_scanner) > info

       Name: WordPress Business Inteligence Lite Unauthenticated SQLi Scanner
     Module: auxiliary/scanner/http/wp_business_intelligent_sqli_scanner
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2015-04-01

Provided by:
  Jagriti Sahu
  Roberto Soares Espreto

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  SLEEP      7                yes       Calculate the response time (7 is default)
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module attempts to exploit SQL injection in Business
  Intelligence Lite version 1.6.1 for WordPress and likely prior in
  order if the instance is vulnerable.

References:
  https://wpvulndb.com/vulnerabilities/7879
  http://packetstormsecurity.com/files/131228/

msf auxiliary(wp_business_intelligent_sqli_scanner) > set RHOSTS 192.168.1.31
RHOSTS => 192.168.1.31
msf auxiliary(wp_business_intelligent_sqli_scanner) > check
[*] 192.168.1.31:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msf auxiliary(wp_business_intelligent_sqli_scanner) > run

[*] 192.168.1.31:80 - Checking host...
[+] 192.168.1.31:80 - Vulnerable to unauthenticated SQL injection in "Business Intelligence Lite 1.6.1" plugin for WordPress
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_business_intelligent_sqli_scanner) >
```
