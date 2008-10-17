VERSION=1.0

all:
	g++ -O2 -o covertagger covertagger.cpp `taglib-config --libs --cflags` -I/usr/include/openssl -lssl -DVERSION="\"$(VERSION)\""
	
dist:
	tar -c covertagger.cpp Makefile README COPYING > covertagger-$(VERSION).tar
	gzip covertagger-$(VERSION).tar
