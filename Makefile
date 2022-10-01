DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-hconvert/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-hconvert
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-hconvert
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/hodt2doc'  ; cp bin/hodt2doc    $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/hodt2pdf'  ; cp bin/hodt2pdf    $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/icon-tool' ; cp bin/icon-tool   $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/hodt2html' ; cp bin/hodt2html   $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
