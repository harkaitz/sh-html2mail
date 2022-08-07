DESTDIR =
PREFIX  =/usr/local
all:
clean:
install:

## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-html2mail
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-html2mail
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/html2mail  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
