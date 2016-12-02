all:	help

install:
	install -d ~/modules/auxiliary/scanner/http/wordpress
	install -m644 \
			modules/auxiliary/scanner/http/wordpress/*.rb \
			-t ~/modules/auxiliary/scanner/http/wordpress
	install -d ~/modules/exploits/unix/webapp/wordpress
	install -m644 \
			modules/exploits/unix/webapp/wordpress/*.rb \
			-t ~/modules/exploits/unix/webapp/wordpress

uninstall:
	rm -rf ~/modules/auxiliary/scanner/http/wordpress/*.rb
	rm -rf ~/modules/exploits/unix/webapp/wordpress/*.rb

help:
	@echo -e "\n\tUsage: make <install|uninstall>\n"

