PROG = pathmenu
PREFIX = /usr
BIN = $(PREFIX)/bin
MAN = $(PREFIX)/share/man/man1
INSTALL = install

all: README.md

install: $(PROG) $(PROG).1 dicemenu dicemenu.1
	$(INSTALL) -d $(BIN)
	$(INSTALL) -m 0755 $(PROG) dicemenu $(BIN)
	$(INSTALL) -d $(MAN)
	$(INSTALL) -m 0644 $(PROG).1 dicemenu.1 $(MAN)

uninstall:
	@rm -fv $(BIN)/$(PROG) $(BIN)/dicemenu
	@rm -fv $(MAN)/$(PROG).1 $(MAN)/dicemenu.1

README.md: $(PROG).1
	pandoc -s -t gfm -o $@ $<

clean:
	@rm -fv README.md
