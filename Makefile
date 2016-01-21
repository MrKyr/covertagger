VERSION=1.0

all:
	g++ -O2 -o covertagger covertagger.cpp `taglib-config --libs --cflags` -I/usr/local/opt/openssl/include/openssl -I/usr/local/opt/openssl/include -lssl -lcrypto -DVERSION="\"$(VERSION)\""
	
dist:
	tar -c covertagger.cpp Makefile README COPYING > covertagger-$(VERSION).tar
	gzip covertagger-$(VERSION).tar
