# pathmenu and dicemenu
# Copyright (c) 2019 Gregory L. Chamberlain
# Available under the MIT License -- see LICENSE file.

PROG = pathmenu
PREFIX = /usr/local
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

test: pathmenu dicemenu
	shellcheck -s sh $^

clean:
	@rm -fv README.md
