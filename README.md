# pathmenu

[![builds.sr.ht status](https://builds.sr.ht/~chambln/pathmenu.svg)](https://builds.sr.ht/~chambln/pathmenu?)

pathmenu is a purely POSIX and shellcheck-verified shell script for
using dmenu to browse the filesystem and select files.  It could be used
as part of a larger program or interactively in the shell.

# Dependencies

 - [**dmenu**(1)](https://tools.suckless.org/dmenu/)

Using the <code>-c *command*</code> option it is very easy to replace
dmenu with something else like **rofi**(1) or **fzf**(1) or any other
program that can behave as a linewise filter.  Example:

    pathmenu -c 'fzf --prompt "$PWD/ "'

When using **dmenu**(1), non-existent files can be ‘selected’ using
<kbd>Shift</kbd> + <kbd>Enter</kbd>.

# Installation

    make install
    
Optionally specify a prefix; for example:

    make PREFIX=~/.local install

# Usage

See **pathmenu**(1).
