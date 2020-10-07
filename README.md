# pathmenu

[![builds.sr.ht status](https://builds.sr.ht/~chambln/pathmenu.svg)](https://builds.sr.ht/~chambln/pathmenu)

pathmenu is a purely POSIX shell script that allows
the user to browse the filesystem and select files with
[**dmenu**(1)](https://tools.suckless.org/dmenu/).

As in the example below, the <code>-c *command*</code> option makes
it possible to use something else like **fzf**(1) or **rofi**(1) as a
drop-in replacement for dmenu.

    pathmenu -c 'fzf --prompt "$PWD/ "'

# Installation

    make install

Optionally specify a prefix; for example:

    make PREFIX=~/.local install

# Usage

See **pathmenu**(1).

**Hint:** When using **dmenu**(1), non-existent files can be ‘selected’
using <kbd>Shift</kbd> + <kbd>Return</kbd>.

# To-do

- [ ] Reimplement dicemenu in safe POSIX sh
