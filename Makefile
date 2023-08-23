fonts: nex6x10.pcf.gz

%.pcf.gz: %.bdf
	bdftopcf $^ | gzip > $@

install: fonts
	install -d -m 0755 $(DESTDIR)$(PREFIX)/share/fonts/misc/
	install -m 0644 *.pcf.gz $(DESTDIR)$(PREFIX)/share/fonts/misc/
