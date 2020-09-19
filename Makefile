# pathmenu and dicemenu
# Copyright (c) 2019 Gregory L. Chamberlain
# Available under the MIT License -- see LICENSE file.

PREFIX = /usr/local
BIN = $(PREFIX)/bin
MAN = $(PREFIX)/share/man/man1

all: pathmenu contrib/dicemenu
	chmod +x $^

install: pathmenu pathmenu.1 contrib/dicemenu contrib/dicemenu.1
	mkdir -p $(BIN) $(MAN)
	cp -f pathmenu contrib/dicemenu $(BIN)
	cp -f pathmenu.1 contrib/dicemenu.1 $(MAN)

uninstall:
	rm -f $(BIN)/pathmenu $(MAN)/pathmenu.1
	rm -f $(BIN)/dicemenu $(MAN)/dicemenu.1

test: pathmenu contrib/dicemenu
	shellcheck -s sh $^
