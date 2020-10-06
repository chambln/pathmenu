# pathmenu
# Copyright (c) 2019-2020 Gregory L. Chamberlain
# Available under the MIT License -- see LICENSE file.

PROGRAM = pathmenu
PREFIX = /usr/local
BIN = $(PREFIX)/bin
DOC = $(PREFIX)/share/doc
MAN = $(PREFIX)/share/man
EXAMPLES = examples/dmenup examples/fzfp examples/dicemenu

all: $(PROGRAM) $(EXAMPLES)
	chmod +x $^

install: $(PROGRAM) $(PROGRAM).1 examples
	mkdir -p $(BIN) $(MAN)/man1 $(DOC)/examples
	cp -f $(PROGRAM) $(BIN)
	cp -f $(PROGRAM).1 $(MAN)/man1
	cp -f examples/* $(DOC)/examples

uninstall:
	rm -f $(BIN)/$(PROGRAM) $(MAN)/$(PROGRAM).1

test: all
	shellcheck $(PROGRAM) $(EXAMPLES)
