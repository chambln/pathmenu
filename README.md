# pathmenu

pathmenu is a purely POSIX and shellcheck-verified shell script for
using dmenu to browse the filesystem and select files.  It could be used
as part of a larger program or interactively in the shell.

# Dependencies

 - [**dmenu**(1)](https://tools.suckless.org/dmenu/)

It would be very simple to edit pathmenu and swap out dmenu for something
else like **rofi**(1), **fzf**(1) or even **vipe**(1) from moreutils.

# Installation

    make install
    
Optionally specify a prefix; for example:

    make PREFIX=~/.local install

# Usage

See **pathmenu**(1).
