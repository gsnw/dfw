#
# Makefile
#

install:
	cp dfw /etc/init.d/dfw
	cp dfw.conf /etc/network/dfw.conf
	chown root:root /etc/init.d/dfw /etc/network/dfw.conf
	chmod a+rx /etc/init.d/dfw
	update-rc.d dfw defaults 20

uninstall:
	update-rc.d -f dfw remove
	rm -f /etc/init.d/dfw /etc/network/dfw.conf
