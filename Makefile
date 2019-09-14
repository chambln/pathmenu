PROG = pathmenu
PREFIX = /usr
BIN = $(PREFIX)/bin
MAN = $(PREFIX)/share/man/man1
INSTALL = install

install: $(PROG) $(PROG).1
	$(INSTALL) -d $(BIN)
	$(INSTALL) -m 0755 $(PROG) $(BIN)
	$(INSTALL) -d $(MAN)
	$(INSTALL) -m 0644 $(PROG).1 $(MAN)

uninstall:
	rm -f $(BIN)/$(PROG)
	rm -f $(MAN)/$(PROG).1
