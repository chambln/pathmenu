# pathmenu and dicemenu
# Copyright (c) 2019-2020 Gregory L. Chamberlain
# Available under the MIT License -- see LICENSE file.

PREFIX = /usr/local
BIN = $(PREFIX)/bin
MAN = $(PREFIX)/share/man/man1

all: pathmenu examples/dicemenu
	chmod +x $^

install: pathmenu pathmenu.1 examples/dicemenu examples/dicemenu.1
	mkdir -p $(BIN) $(MAN)
	cp -f pathmenu examples/dicemenu $(BIN)
	cp -f pathmenu.1 examples/dicemenu.1 $(MAN)

uninstall:
	rm -f $(BIN)/pathmenu $(MAN)/pathmenu.1
	rm -f $(BIN)/dicemenu $(MAN)/dicemenu.1

test: all
	shellcheck pathmenu examples/dicemenu
