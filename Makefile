PACKAGE = image-dired+
SRC = image-dired+.el image-dired+-autoloads.el image-dired+-pkg.el
VERSION = 0.5.2

release: package
	mv /tmp/$(PACKAGE)-$(VERSION).tar .

package: prepare
	cd /tmp/$(PACKAGE)-$(VERSION) ; \
	cd .. ; \
	tar cf $(PACKAGE)-$(VERSION).tar $(PACKAGE)-$(VERSION)

prepare:
	rm -rf /tmp/$(PACKAGE)-$(VERSION)
	mkdir /tmp/$(PACKAGE)-$(VERSION)
	cp -pr $(SRC) /tmp/$(PACKAGE)-$(VERSION)
	chmod 644 /tmp/$(PACKAGE)-$(VERSION)/*
