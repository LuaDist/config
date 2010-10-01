PREFIX	= /usr/local/
VERSION = 1.0.0
MODULE = config

default:


install: default
	install -d $(PREFIX)/share/lua/5.1/
	install -m0644 config.lua $(PREFIX)/share/lua/5.1/

clean:
	rm -rf $(OBJS) $(TARGET) $(MODULE)-$(VERSION)

package:
	mkdir $(MODULE)-$(VERSION)
	cp config.lua COPYING Makefile $(MODULE)-$(VERSION)
	tar cvzf $(MODULE)-$(VERSION).tar.gz $(MODULE)-$(VERSION)
	rm -rf $(MODULE)-$(VERSION)
