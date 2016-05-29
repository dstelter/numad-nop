all:

deb:
	DEB_BUILD_OPTIONS=nocheck dpkg-buildpackage -rfakeroot

install:
	test -d $(DESTDIR)/usr/bin || mkdir -p $(DESTDIR)/usr/bin
	cp numad $(DESTDIR)/usr/bin/numad

