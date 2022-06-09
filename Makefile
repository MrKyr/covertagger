VERSION=1.0

all:
	g++ -O2 -o covertagger covertagger.cpp `taglib-config --libs --cflags` -I/opt/local/libexec/openssl11/include -I/opt/local/libexec/openssl11/include/openssl -L/opt/local/libexec/openssl11/lib -lssl -lcrypto -DVERSION="\"$(VERSION)\""
	
dist:
	tar -c covertagger.cpp Makefile README COPYING > covertagger-$(VERSION).tar
	gzip covertagger-$(VERSION).tar

clean:
	rm -r covertagger

install:
	install -d $(DESTDIR)/usr/local/bin/
	install -m 755 covertagger $(DESTDIR)/usr/local/bin/

uninstall:
	rm /usr/local/bin/covertagger
